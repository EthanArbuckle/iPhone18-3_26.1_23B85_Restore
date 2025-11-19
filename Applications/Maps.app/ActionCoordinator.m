@interface ActionCoordinator
- (ActionCoordinator)initWithPlatformController:(id)a3;
- (AppCoordinator)appCoordinator;
- (BOOL)_canCaptureSearchStateForCardItem:(id)a3 previousItemInStack:(id)a4;
- (BOOL)_conditionallyPopForContaineeClass:(Class)a3;
- (BOOL)_conditionallyPopForContextClass:(Class)a3;
- (BOOL)_isBuildingMultipointRoute;
- (BOOL)_isRoutePlanningTopMost;
- (BOOL)_shouldPresentAddStopSearchResults;
- (BOOL)canEnterPedestrianAR;
- (BOOL)chromeDidClearMapSelection;
- (BOOL)chromeDidSelectClusteredFeatureAnnotationsMarker:(id)a3;
- (BOOL)chromeDidSelectClusteredWaypointMarker:(id)a3;
- (BOOL)chromeDidSelectCustomPOIAnnotation:(id)a3;
- (BOOL)chromeDidSelectETAMarkerForRoute:(id)a3;
- (BOOL)chromeDidSelectFlyoverTourLabelMarker:(id)a3;
- (BOOL)chromeDidSelectOfflineAnnotationMarker:(id)a3;
- (BOOL)chromeDidSelectRouteAnnotations:(id)a3;
- (BOOL)chromeDidSelectRouteWaypointMarker:(id)a3;
- (BOOL)chromeDidSelectTrafficIncident:(id)a3 latitude:(id)a4 longitude:(id)a5;
- (BOOL)chromeDidSelectTransitLineMarker:(id)a3;
- (BOOL)chromeDidSelectUserLocationAnnotation:(id)a3;
- (BOOL)chromeDidSelectWaypointMarkerForAddress:(id)a3;
- (BOOL)chromeDidSelectWaypointMarkerForFindMyHandleIdentifier:(id)a3;
- (BOOL)chromeShouldAllowSelectingAnnotationView:(id)a3;
- (BOOL)chromeShouldAllowSelectingLabelMarker:(id)a3;
- (BOOL)clusterIsPartOfVenues:(id)a3;
- (BOOL)isPedestrianARActive;
- (BOOL)isPedestrianARShowingFailureView;
- (BOOL)isPresentingAddStopSearchResults;
- (BOOL)isRoutePlanningPresented;
- (BOOL)isTeachableMomentCardActive;
- (BOOL)isWeatherPopoverActive;
- (BOOL)mapsDragDestinationHandler:(id)a3 didReceiveURL:(id)a4;
- (BOOL)mapsDragDestinationHandler:(id)a3 didReceiveVCard:(id)a4;
- (BOOL)pptTestCanResizePlacecard;
- (BOOL)pptTestCanUpdateTrayLayout;
- (BOOL)pptTestIsTrayType:(int64_t)a3;
- (BOOL)searchSessionShouldUpdateEVChargers;
- (BOOL)shouldAddStopInRoutePlanning;
- (BOOL)shouldDismissPlaceCardOnClearMapSelection;
- (BOOL)shouldReusePlaceCardViewController:(id)a3;
- (BOOL)shouldShowSearchOverlay;
- (ContaineeProtocol)currentViewController;
- (ControlContainerViewController)containerViewController;
- (GEOMapServiceTraits)newTraits;
- (GEOTransitLineItem)currentTransitLineItem;
- (LineCardViewController)lineCardVC;
- (MKMapItem)currentMapItem;
- (MapCameraFraming)mapCameraController;
- (MapSelectionManager)mapSelectionManager;
- (PersonalizedItemManager)personalizedItemManager;
- (PersonalizedItemSource)suggestionsItemSource;
- (PlaceCardItem)currentPlaceCardItem;
- (PlaceCardViewController)placeCardViewController;
- (RouteAnnotationsController)routeAnnotationsController;
- (RoutePlanningDataCoordinator)routePlanningDataCoordinator;
- (RoutePlanningOverviewViewController)routePlanningOverviewViewController;
- (RoutePlanningOverviewViewController)routePlanningOverviewViewControllerIfLoaded;
- (SearchPinsManager)searchPinsManager;
- (SettingsController)settingsController;
- (SimpleResultsViewController)simpleListResultsVC;
- (UIScrollView)pptTestScrollView;
- (UIScrollView)pptTestScrollViewForProactive;
- (UIView)incidentsVCSourceView;
- (UserLocationSearchResult)userLocationSearchResult;
- (VenueCardCoordinator)venueCardCoordinator;
- (VenuesManager)venuesManager;
- (_TtC4Maps38RouteAnnotationContaineeViewController)routeAnnotationVC;
- (_TtC4Maps38TrafficIncidentContaineeViewController)trafficIncidentVC;
- (id)_filteredFeaturesFromTransitSystems:(id)a3 allFeatures:(id)a4;
- (id)_newPlaceCardViewControllerForReuse;
- (id)_searchResultFromMapsSuggestionsEntry:(id)a3;
- (id)allSearchResultsForCurrentPinsOnMap;
- (id)autosharingVC;
- (id)incidentsVC;
- (id)mapSelectionStateForVenueCardItem:(id)a3 savePlaceCardSelectionState:(BOOL)a4;
- (id)mapView;
- (id)placeCardForRoutePlanningViewController;
- (id)placeCardForVenuesViewController:(id)a3;
- (id)reportsHomeViewController;
- (id)resultsViewController;
- (id)routeAnnotationsProvider;
- (id)routeOptionsVC;
- (id)routePlanningMapController;
- (id)routeSearchVC;
- (id)routeStepsVC;
- (id)routingAppsVC;
- (id)searchFieldItemForVenueCardItem:(id)a3 previousItemInStack:(id)a4;
- (id)searchInfoForVenueCardItem:(id)a3 previousItemInStack:(id)a4;
- (id)searchModeViewController;
- (id)searchResultsForViewController:(id)a3;
- (id)settingsViewController;
- (id)shortcutEditSessionController;
- (id)timePickingVC;
- (id)traits;
- (id)traitsForAddFromACViewController:(id)a3;
- (id)traitsForCuratedCollectionViewController:(id)a3;
- (id)traitsForQuickActionPresenter;
- (id)traitsForRouteSearchViewController:(id)a3;
- (int)currentMapViewTargetForAnalytics;
- (int)currentUITargetForAnalytics;
- (int)mapApplicationState;
- (int64_t)_excludedContentForPlaceCardItem:(id)a3;
- (int64_t)displayedViewMode;
- (void)_cancelUserInteractions;
- (void)_carPlayPlaceCardDidDismiss:(id)a3;
- (void)_carPlayPlaceCardDidPresent:(id)a3;
- (void)_carPlayWantsToDisplayEVOnboarding:(id)a3;
- (void)_cleanUpVenuesStackForNonVenuePlaceCardItem:(id)a3;
- (void)_cleanupRoutePlanningIfNeededAnimated:(BOOL)a3;
- (void)_enterRoutePlanningOverviewAnimated:(BOOL)a3 saveMapCamera:(BOOL)a4 completion:(id)a5;
- (void)_exitRoutePlanningIfNeededAnimated:(BOOL)a3 restoreStashedMapSelection:(BOOL)a4;
- (void)_prepareToReceiveDrop;
- (void)_presentMacRouteEditingWithEditRequired:(unint64_t)a3 index:(unint64_t)a4;
- (void)_presentVenuesPlaceCardItem:(id)a3 shouldSaveSelectionState:(BOOL)a4 source:(unint64_t)a5 resetPlaceCardViewControllerBlock:(id)a6;
- (void)_promptForCurrentLocationConfirmationWithDirectionItem:(id)a3 userInfo:(id)a4;
- (void)_promptForEditRequired:(unint64_t)a3 forWaypointAtIndex:(unint64_t)a4 inDirectionItem:(id)a5 userInfo:(id)a6;
- (void)_resetStack;
- (void)_setHikingFeaturesForPlaceCardItem:(id)a3;
- (void)_setRouteSelectionMapState;
- (void)_setTopographicalFeaturesForPlaceCardItem:(id)a3;
- (void)_viewControllerShowOfflineMaps:(id)a3 completionHandler:(id)a4;
- (void)actionControlDidDeactivate:(id)a3;
- (void)addContainerViewControllerObservers;
- (void)addRatingsForMapItem:(id)a3;
- (void)chromeViewController:(id)a3 didUpdateViewMode:(int64_t)a4;
- (void)clearMapSelection;
- (void)clearSearch;
- (void)clearSearchIfOriginatedFromWaypointEditor;
- (void)clearSearchPins;
- (void)clearSharedTrips;
- (void)closeRoutePlanningViewController:(id)a3 withSender:(id)a4;
- (void)closeSettingsIfNeeded;
- (void)closeSharedTripDetail;
- (void)closeStopDetail;
- (void)closeVenueFloorCardViewController:(id)a3;
- (void)closeVenueViewController:(id)a3;
- (void)collectionPickerClosed:(id)a3;
- (void)collectionPickerNewCollection:(id)a3;
- (void)confirmDeleteCollections:(id)a3 sourceItem:(id)a4 sourceRect:(CGRect)a5 completion:(id)a6;
- (void)confirmDeleteSharedTripWithSummary:(id)a3 sourceView:(id)a4 sourceRect:(CGRect)a5 completion:(id)a6;
- (void)containeeViewController:(id)a3 didCreateKeyboardProxy:(id)a4;
- (void)containerViewControllerDidResignContainee:(id)a3 toContainee:(id)a4;
- (void)containerViewControllerWillPresentContainee:(id)a3 overContainee:(id)a4;
- (void)continueRideBookingSessionWithApplicationIdentifier:(id)a3;
- (void)createRadar;
- (void)curatedCollectionViewController:(id)a3 pickCollectionWithSession:(id)a4 presentationOptions:(id)a5;
- (void)curatedCollectionViewController:(id)a3 selectSearchResult:(id)a4;
- (void)dealloc;
- (void)defaultZoom;
- (void)deleteMarkedLocation:(id)a3;
- (void)didRequestDirectionsForSharedTrip:(id)a3;
- (void)didSaveCustomRoute:(id)a3;
- (void)didSelectStopWithMapItem:(id)a3;
- (void)didTapMapView:(id)a3 atPoint:(CGPoint)a4;
- (void)dismissLastVenuePlaceCard;
- (void)dismissPedestrianARTeachableMomentCardIfNecessary;
- (void)dismissPlaceCardViewController:(id)a3;
- (void)dismissRoutePlanningPlaceCardIfNeeded;
- (void)displayAlertWithTitle:(id)a3 message:(id)a4 postAlertSearchType:(unsigned int)a5;
- (void)displayIncidentReportSubmissionWithItem:(id)a3 report:(id)a4;
- (void)endSearch;
- (void)endSearchForTesting;
- (void)ensureMapSelectionVisible;
- (void)ensureRoutePlanningContentIsVisible;
- (void)enterLookAroundWithEntryPoint:(id)a3 lookAroundView:(id)a4 showsFullScreen:(BOOL)a5 originFrame:(CGRect)a6;
- (void)enterPedestrianAR;
- (void)enterPedestrianAR:(id)a3;
- (void)enterRouteCreationWithMapItem:(id)a3 completion:(id)a4;
- (void)exit3dMode;
- (void)exitLookAround;
- (void)exitPedestrianAR;
- (void)getCurrentSceneTitleWithCompletion:(id)a3;
- (void)guidesHomeViewController:(id)a3 showCuratedGuideWithIdentifier:(id)a4;
- (void)handleVenueSearchResultsWithSelectedSearchResult:(id)a3 searchFieldItem:(id)a4 browseCategories:(id)a5;
- (void)incidentReportSubmissionContaineeDidFinish:(id)a3;
- (void)injectSearchPinsFromSearchInfo:(id)a3;
- (void)lineCardViewController:(id)a3 displayMapRegion:(id)a4;
- (void)lineCardViewController:(id)a3 doDirectionItem:(id)a4;
- (void)lineCardViewController:(id)a3 selectMapItem:(id)a4;
- (void)lineCardViewControllerDidAppear:(id)a3;
- (void)locationRefinementViewController:(id)a3 didSelectCoordinate:(CLLocationCoordinate2D)a4;
- (void)mapsDragDestinationHandler:(id)a3 didReceiveMapItem:(id)a4;
- (void)mapsDragDestinationHandler:(id)a3 didReceiveMapKitHandle:(id)a4 title:(id)a5;
- (void)mapsDragDestinationHandler:(id)a3 didReceiveString:(id)a4 nearCoordinate:(CLLocationCoordinate2D)a5;
- (void)markedLocationRefinementViewControllerDidCancel:(id)a3;
- (void)markedLocationRefinementViewControllerSelectedRemoveMarkedLocation:(id)a3;
- (void)nearbyTransitViewController:(id)a3 select:(id)a4;
- (void)pinnedItemsViewControllerWithViewController:(id)a3 didSelectPinSuggested:(id)a4;
- (void)pinnedItemsViewControllerWithViewController:(id)a3 didSelectPinned:(id)a4;
- (void)placeCardViewController:(id)a3 didRequestHikingToolTipRegionIDForLocation:(CLLocationCoordinate2D)a4;
- (void)placeCardViewController:(id)a3 didSelectSharePublisherShareItem:(id)a4;
- (void)placeCardViewController:(id)a3 didUpdateForViewMode:(int64_t)a4;
- (void)placeCardViewController:(id)a3 didUpdateLinkedPlacesFromPlaceCardItem:(id)a4;
- (void)placeCardViewController:(id)a3 doSearchItem:(id)a4 withUserInfo:(id)a5;
- (void)placeCardViewController:(id)a3 editNameOfMapItem:(id)a4 saveHandler:(id)a5 cancelHandler:(id)a6;
- (void)placeCardViewController:(id)a3 mapItemDidChange:(id)a4;
- (void)placeCardViewController:(id)a3 placeCardItemWillChange:(id)a4;
- (void)placeCardViewController:(id)a3 presentCategoryPlacesListForMapItem:(id)a4 searchCategory:(id)a5;
- (void)placeCardViewController:(id)a3 requestCopyLinkToClipboard:(id)a4;
- (void)placeCardViewController:(id)a3 selectTransitLineItem:(id)a4;
- (void)placeCardViewController:(id)a3 showOfflineMapRegionSelectorForRegion:(id)a4 name:(id)a5 muid:(unint64_t)a6 shouldShowDataManagementAfterDownload:(BOOL)a7;
- (void)placeCardViewController:(id)a3 willReusePlaceCardItem:(id)a4;
- (void)placeCardViewControllerDidTapHikingTip:(id)a3 originMapItem:(id)a4;
- (void)placeCardViewControllerRemovedObservingHandle:(id)a3;
- (void)placeCardViewControllerWillBecomeCurrent:(id)a3;
- (void)placeCardViewControllerWillResignCurrent:(id)a3;
- (void)placeViewControllerViewContactsClosed:(id)a3;
- (void)poiEnrichmentCoordinator:(id)a3 openURL:(id)a4;
- (void)poiEnrichmentCoordinatorDidFinish:(id)a3;
- (void)popContainee;
- (void)pptAssertSearch;
- (void)pptSelectACSuggestionMatchingAddress:(id)a3;
- (void)pptSelectFirstCuratedGuide;
- (void)pptSelectFirstGuidePublisher;
- (void)pptSelectSeeAllCuratedCollections;
- (void)pptTestAutocompleteSearchForFieldItem:(id)a3;
- (void)pptTestCreateCustomSearchResultForDroppedPinAtPoint:(CLLocationCoordinate2D)a3 animated:(BOOL)a4;
- (void)pptTestDismissTrayAnimated:(BOOL)a3 assertTrayType:(int64_t)a4;
- (void)pptTestDoDirectionItem:(id)a3;
- (void)pptTestEnterSearchMode;
- (void)pptTestMaximizePlaceCardAnimated:(BOOL)a3;
- (void)pptTestMediumizePlaceCardAnimated:(BOOL)a3;
- (void)pptTestMinimizePlaceCardAnimated:(BOOL)a3;
- (void)pptTestOpenFirstCollection;
- (void)pptTestPresentPlacecardWithMapItem:(id)a3;
- (void)pptTestSearchCancel;
- (void)pptTestSearchEndEditing;
- (void)pptTestSearchForFieldItem:(id)a3;
- (void)pptTestSearchNearbyCategoryWithIndex:(unint64_t)a3;
- (void)pptTestSearchRetainQueryForSelectedSearchCompletion:(id)a3;
- (void)pptTestStartNavigation;
- (void)pptTestUpdateTrayLayout:(unint64_t)a3 animated:(BOOL)a4;
- (void)presentAutosharingContactSearchWithContacts:(id)a3 selectionHandler:(id)a4;
- (void)presentChinaAlertForSharedTrip:(id)a3;
- (void)presentEditNoteViewControllerWithInitialText:(id)a3 libraryAccessProvider:(id)a4 placeMUID:(unint64_t)a5 completion:(id)a6;
- (void)presentEducationScreenWithAssetURLs:(id)a3 titleText:(id)a4 bodyText:(id)a5;
- (void)presentGuidesHomeWithGuideLocation:(id)a3;
- (void)presentLPRWithVehicle:(id)a3 scenario:(int64_t)a4 presenter:(id)a5 completionBlock:(id)a6;
- (void)presentLineCardForItem:(id)a3 labelMarker:(id)a4 loading:(BOOL)a5 overDisambiguation:(BOOL)a6 preferredLayout:(unint64_t)a7;
- (void)presentLineCardForItem:(id)a3 loading:(BOOL)a4 sourceView:(id)a5 sourceRect:(CGRect)a6;
- (void)presentLoadingResults;
- (void)presentLocationCorrectionViewWithSession:(id)a3;
- (void)presentMapsSettingInSettingsApp;
- (void)presentPOIEnrichmentInformedConsentWithPresentationContext:(int64_t)a3 completion:(id)a4;
- (void)presentPlaceCard:(id)a3 canReplaceCurrentIfNecessary:(BOOL)a4;
- (void)presentPlaceCardForItem:(id)a3 addToHistory:(BOOL)a4 source:(unint64_t)a5 saveSelectionState:(BOOL)a6 replaceCurrentCard:(BOOL)a7;
- (void)presentPreferredNetworksOnboardingForVehicle:(id)a3;
- (void)presentRouteLibraryWithAvailableRoutes:(id)a3 unavailableRoutes:(id)a4;
- (void)presentRoutePlanningViewType:(int64_t)a3;
- (void)presentScheduleForStep:(id)a3;
- (void)presentSearchAndRestoreSearchItem:(id)a3;
- (void)presentSearchAnimated:(BOOL)a3;
- (void)presentSharedTrip:(id)a3;
- (void)presentSharedTrip:(id)a3 inPopoverFromView:(id)a4;
- (void)presentSharedTrips;
- (void)presentSimpleList:(id)a3;
- (void)presentUnsupportedTransportTypeOrProtocolAlertForSharedTrip:(id)a3;
- (void)presentVehicleOnboardingWithVehicles:(id)a3 completion:(id)a4;
- (void)presentVenueCategoryWithVenueCategoryItem:(id)a3;
- (void)presentWalletDCIViewControllerWithTransitSystems:(id)a3 callbackDelegate:(id)a4;
- (void)presentWalletTopUpViewControllerWithTransitIdentifier:(id)a3 callbackDelegate:(id)a4;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)productViewController:(id)a3 didFinishWithResult:(int64_t)a4;
- (void)ratingsHistoryContaineeViewController:(id)a3 didSelect:(id)a4;
- (void)receivedVenueEVChargersUpdate:(id)a3;
- (void)refreshCurrentSearch;
- (void)refreshRoutePlanningTimingIfNeeded;
- (void)removeContainerViewControllerObserver;
- (void)restoreSearchForItem:(id)a3 withResults:(id)a4 sessionOrigin:(unint64_t)a5;
- (void)retainSearchQueryForSelectedSearchResult:(id)a3;
- (void)routePlanningDataCoordinator:(id)a3 isEnabled:(BOOL)a4;
- (void)routePlanningUpdatedWaypoints:(id)a3;
- (void)routeSearchViewController:(id)a3 wantsToPerformSearchWithItem:(id)a4 userInfo:(id)a5 autocompleteSessionData:(id)a6;
- (void)routeSearchViewControllerDidDismiss:(id)a3 shouldExitRoutePlanning:(BOOL)a4;
- (void)routeStepsViewController:(id)a3 wantsToDisplayAdvisory:(id)a4;
- (void)routeStepsViewController:(id)a3 wantsToShareItem:(id)a4 fromView:(id)a5;
- (void)searchSessionManagerReceiveEVChargersUpdate:(id)a3;
- (void)searchSessionManagerSessionDidFail;
- (void)searchSessionManagerSessionDidInvalidate;
- (void)searchSessionManagerSessionDidReceiveUpdate;
- (void)select3dMode;
- (void)selectSearchResult:(id)a3 animated:(BOOL)a4;
- (void)selectWaypointSearchFieldIndex:(unint64_t)a3 exitPlanningIfCancelTapped:(BOOL)a4 beginEditing:(BOOL)a5;
- (void)setContainerViewController:(id)a3;
- (void)setCurrentDirectionItem:(id)a3 withOptions:(id)a4;
- (void)setCurrentTransitLineItem:(id)a3 zoomToMapRegion:(BOOL)a4 preferredLayout:(unint64_t)a5;
- (void)setIsRoutePlanningPresented:(BOOL)a3;
- (void)setRoutePlanningAdvisoriesInfo:(id)a3;
- (void)setRoutePlanningAdvisory:(id)a3;
- (void)setSearchPins:(id)a3 selectedPin:(id)a4 animated:(BOOL)a5;
- (void)setSearchPinsFromSearchInfo:(id)a3 scrollToResults:(BOOL)a4 displayPlaceCardForResult:(id)a5 animated:(BOOL)a6 completion:(id)a7;
- (void)setUserTrackingViewUserTrackingMode:(int64_t)a3;
- (void)setViewMode:(int64_t)a3 animated:(BOOL)a4;
- (void)shortcutEditSessionControllerFinished:(id)a3 shortcutWasReplacedBy:(id)a4;
- (void)showAnnouncementForFlyover:(id)a3;
- (void)showCuratedCollectionViewController:(id)a3 replaceViewController:(BOOL)a4 completion:(id)a5;
- (void)showNearbyTeachableMomentCard;
- (void)showPedestrianARFeatureIntroTeachableMomentCard;
- (void)showPedestrianARRaiseToEnterTeachableMomentCard;
- (void)showVLF;
- (void)showWarmingSheetViewController:(int64_t)a3;
- (void)simpleResultsViewContoller:(id)a3 didTapOnAddStopWithSearchResult:(id)a4;
- (void)simpleResultsViewContoller:(id)a3 didTapOnCallWithSearchResult:(id)a4;
- (void)simpleResultsViewContoller:(id)a3 didTapOnFlyoverWithSearchResult:(id)a4;
- (void)simpleResultsViewContoller:(id)a3 didTapOnLookAroundWithSearchResult:(id)a4;
- (void)simpleResultsViewContoller:(id)a3 didTapOnWebsiteWithSearchResult:(id)a4;
- (void)simpleResultsViewContoller:(id)a3 selectClusteredLabelMarker:(id)a4;
- (void)simpleResultsViewContoller:(id)a3 selectContainmentParentMapItem:(id)a4 resultsList:(id)a5;
- (void)simpleResultsViewContoller:(id)a3 selectDirectionItem:(id)a4;
- (void)simpleResultsViewContoller:(id)a3 selectSearchResult:(id)a4;
- (void)simpleResultsViewContoller:(id)a3 selectTappableEntry:(id)a4 resultsList:(id)a5;
- (void)simpleResultsViewContoller:(id)a3 showCuratedCollection:(id)a4;
- (void)simpleResultsViewContoller:(id)a3 showCuratedCollectionsList:(id)a4 title:(id)a5;
- (void)simpleResultsViewContoller:(id)a3 showUserGeneratedCollection:(id)a4;
- (void)startNavigationWithRouteCollection:(id)a3 navigationDetailsOptions:(NavigationDetailsOptions *)a4;
- (void)startRideBookingSessionWithRideOption:(id)a3;
- (void)switchRoutePlanningTransportTypeToType:(int64_t)a3;
- (void)timingViewController:(id)a3 didPickTiming:(id)a4;
- (void)toggleRoutePlanning;
- (void)toggleTopLevelGuides;
- (void)toggleTopLevelPinned;
- (void)toggleTopLevelPlaces;
- (void)toggleTopLevelRecentlyAdded;
- (void)toggleTopLevelRecents;
- (void)toggleTopLevelSavedRoutes;
- (void)toggleTopLevelVisitedPlaces;
- (void)transitSchedulesViewController:(id)a3 wantsToShowInfoForLine:(id)a4;
- (void)updateFloatingControlsWithSearchSession:(id)a3;
- (void)updateHistoricalLocations;
- (void)updateMapApplicationState:(int)a3;
- (void)updateRedoSearchFloatingControl:(BOOL)a3;
- (void)updateResultsViewContent;
- (void)updateRouteAnnotations;
- (void)updateSearchFieldWithSearchFieldItem:(id)a3;
- (void)updateViewMode:(int64_t)a3 animated:(BOOL)a4;
- (void)userGuideViewController:(id)a3 didSelect:(id)a4;
- (void)userGuideViewController:(id)a3 didTapAddPlacesToGuide:(id)a4;
- (void)userGuidesListViewControllerWithViewController:(id)a3 confirmDelete:(id)a4 presentationOptions:(id)a5 completion:(id)a6;
- (void)userProfileViewControllerDismissByGestureWithViewController:(id)a3;
- (void)viewController:(id)a3 addItemsFromACToCollection:(id)a4;
- (void)viewController:(id)a3 addStopForSearchFieldItem:(id)a4 withUserInfo:(id)a5;
- (void)viewController:(id)a3 addStopForSearchResult:(id)a4 withUserInfo:(id)a5;
- (void)viewController:(id)a3 createDroppedPin:(id)a4;
- (void)viewController:(id)a3 createMarkedLocationAtCoordinate:(CLLocationCoordinate2D)a4 floorOrdinal:(int)a5;
- (void)viewController:(id)a3 createNewCollectionWithSession:(id)a4;
- (void)viewController:(id)a3 dismissMenuControllerAnimated:(BOOL)a4;
- (void)viewController:(id)a3 displayStoreViewControllerForAppWithiTunesIdentifier:(id)a4 clientIdentifier:(id)a5;
- (void)viewController:(id)a3 displayTableBookingFor:(id)a4;
- (void)viewController:(id)a3 displayTransitSchedulesForDepartureSequence:(id)a4 withTimeZone:(id)a5 scheduleWindowStartDate:(id)a6 includeAllDirections:(BOOL)a7;
- (void)viewController:(id)a3 displayTransitSchedulesForMapItem:(id)a4 departureSequence:(id)a5;
- (void)viewController:(id)a3 doAudioCallToSearchResult:(id)a4;
- (void)viewController:(id)a3 doDirectionIntent:(id)a4 withSearchResults:(id)a5;
- (void)viewController:(id)a3 doDirectionIntentWithLocalSearchCompletion:(id)a4;
- (void)viewController:(id)a3 doDirectionItem:(id)a4 allowToPromptEditing:(BOOL)a5 withUserInfo:(id)a6;
- (void)viewController:(id)a3 doSearchItem:(id)a4 withUserInfo:(id)a5;
- (void)viewController:(id)a3 doSearchItem:(id)a4 withUserInfo:(id)a5 refinementsQuery:(id)a6 autocompleteSessionData:(id)a7;
- (void)viewController:(id)a3 doShareSheetForShareItem:(id)a4 completion:(id)a5;
- (void)viewController:(id)a3 downloadOfflineRegionForRouteData:(id)a4;
- (void)viewController:(id)a3 editCollection:(id)a4;
- (void)viewController:(id)a3 editCollection:(id)a4 sourceView:(id)a5 sourceRect:(CGRect)a6 completion:(id)a7;
- (void)viewController:(id)a3 editLocationOfMarkedLocation:(id)a4;
- (void)viewController:(id)a3 editNameOfMapItem:(id)a4 saveHandler:(id)a5 cancelHandler:(id)a6;
- (void)viewController:(id)a3 editRoute:(id)a4;
- (void)viewController:(id)a3 editShortcut:(id)a4;
- (void)viewController:(id)a3 editShortcut:(id)a4 sourceView:(id)a5 sourceRect:(CGRect)a6;
- (void)viewController:(id)a3 enterFlyoverForMapItem:(id)a4;
- (void)viewController:(id)a3 enterRouteCreationWith:(id)a4;
- (void)viewController:(id)a3 enterRouteCreationWithRoute:(id)a4 withUserInfo:(id)a5;
- (void)viewController:(id)a3 focusSearchResult:(id)a4;
- (void)viewController:(id)a3 openCommuteEntry:(id)a4;
- (void)viewController:(id)a3 openFavoriteItem:(id)a4 withUserInfo:(id)a5;
- (void)viewController:(id)a3 openMapsSuggestionEntry:(id)a4 withUserInfo:(id)a5;
- (void)viewController:(id)a3 openPlainTextFileURL:(id)a4;
- (void)viewController:(id)a3 openSearchResult:(id)a4;
- (void)viewController:(id)a3 openTransitIncidents:(id)a4 fromView:(id)a5 withUserInfo:(id)a6;
- (void)viewController:(id)a3 openTransitLineCard:(id)a4 sourceView:(id)a5 sourceRect:(CGRect)a6;
- (void)viewController:(id)a3 openURL:(id)a4;
- (void)viewController:(id)a3 openWebsiteForSearchResult:(id)a4;
- (void)viewController:(id)a3 pickCollectionWithSession:(id)a4 sourceView:(id)a5 sourceRect:(CGRect)a6;
- (void)viewController:(id)a3 presentCluster:(id)a4;
- (void)viewController:(id)a3 presentCollectionPickerContaineeViewController:(id)a4;
- (void)viewController:(id)a3 presentMenuController:(id)a4 animated:(BOOL)a5 fromChrome:(BOOL)a6 completion:(id)a7;
- (void)viewController:(id)a3 presentParentMapItem:(id)a4;
- (void)viewController:(id)a3 presentPlacesForMapItem:(id)a4 searchCategory:(id)a5 source:(unint64_t)a6;
- (void)viewController:(id)a3 presentPlacesWithPlacesCardItem:(id)a4 source:(unint64_t)a5;
- (void)viewController:(id)a3 presentRelatedMapItems:(id)a4 withTitle:(id)a5 originalMapItem:(id)a6 analyticsDelegate:(id)a7;
- (void)viewController:(id)a3 presentReportDetail:(id)a4 fromEntryPoint:(int)a5;
- (void)viewController:(id)a3 presentVenueFloorCardViewController:(id)a4;
- (void)viewController:(id)a3 presentVenueForMapItem:(id)a4 searchCategory:(id)a5 source:(unint64_t)a6;
- (void)viewController:(id)a3 presentVenueFromAutoCompleteWithVenueIdentifier:(id)a4 searchCategory:(id)a5 source:(unint64_t)a6;
- (void)viewController:(id)a3 presentVenueWithVenueCardItem:(id)a4 source:(unint64_t)a5;
- (void)viewController:(id)a3 presentVenuesClusteredSearchResult:(id)a4;
- (void)viewController:(id)a3 removeDroppedPin:(id)a4;
- (void)viewController:(id)a3 removeMapsSuggestionsEntry:(id)a4 sourceView:(id)a5 sourceRect:(CGRect)a6 startBlock:(id)a7 completionBlock:(id)a8;
- (void)viewController:(id)a3 removeShortcut:(id)a4;
- (void)viewController:(id)a3 selectClientResolvedItem:(id)a4 fromSearchInfo:(id)a5 withUserInfo:(id)a6;
- (void)viewController:(id)a3 selectDroppedPin:(id)a4;
- (void)viewController:(id)a3 selectLastDirectionsDestinationComposedWaypoint:(id)a4;
- (void)viewController:(id)a3 selectMapItem:(id)a4 address:(id)a5 addToHistory:(BOOL)a6 source:(unint64_t)a7;
- (void)viewController:(id)a3 selectParkedCar:(id)a4 andPerformAction:(int64_t)a5 selectPOIOnMap:(BOOL)a6;
- (void)viewController:(id)a3 selectPersonalizedItem:(id)a4 source:(unint64_t)a5 saveSelectionState:(BOOL)a6;
- (void)viewController:(id)a3 selectSearchResult:(id)a4 addToHistory:(BOOL)a5 source:(unint64_t)a6 saveSelectionState:(BOOL)a7 replaceCurrentCard:(BOOL)a8;
- (void)viewController:(id)a3 selectTransitLineItem:(id)a4 zoomToMapRegion:(BOOL)a5 preferredLayout:(unint64_t)a6;
- (void)viewController:(id)a3 selectVenueSearchResult:(id)a4 source:(unint64_t)a5;
- (void)viewController:(id)a3 showAddShortcut:(id)a4;
- (void)viewController:(id)a3 showCollection:(id)a4 completion:(id)a5;
- (void)viewController:(id)a3 showCollectionWithID:(id)a4;
- (void)viewController:(id)a3 showCuratedCollection:(id)a4 replaceViewController:(BOOL)a5 completion:(id)a6;
- (void)viewController:(id)a3 showCuratedCollectionIdentifier:(id)a4 replaceViewController:(BOOL)a5 completion:(id)a6;
- (void)viewController:(id)a3 showCuratedCollectionsList:(id)a4 usingTitle:(id)a5 usingCollectionIds:(id)a6 completion:(id)a7;
- (void)viewController:(id)a3 showFavoritesType:(int64_t)a4;
- (void)viewController:(id)a3 showFullyClientizedCuratedCollection:(id)a4 replaceViewController:(BOOL)a5;
- (void)viewController:(id)a3 showGuidesHome:(id)a4;
- (void)viewController:(id)a3 showOfflineMapRegionSelectorForRegion:(id)a4 name:(id)a5 route:(id)a6 muid:(unint64_t)a7 shouldUseSessionlessAnalytics:(BOOL)a8 dismissalBlock:(id)a9 postDismissalBlock:(id)a10;
- (void)viewController:(id)a3 showOfflineMapRegionSelectorForRegion:(id)a4 name:(id)a5 route:(id)a6 muid:(unint64_t)a7 shouldUseSessionlessAnalytics:(BOOL)a8 shouldShowDataManagementAfterDownload:(BOOL)a9 shouldShowDataManagementAfterDownloadIfRegionDiffers:(BOOL)a10 dismissalBlock:(id)a11;
- (void)viewController:(id)a3 showSortPickerWithSortOptions:(id)a4 initialSelectedSortOptionIndex:(int64_t)a5 completion:(id)a6;
- (void)viewController:(id)a3 startDirectionsToRouteData:(id)a4;
- (void)viewControllerClearInjectedSearchPins:(id)a3;
- (void)viewControllerClosed:(id)a3 animated:(BOOL)a4;
- (void)viewControllerDoLastDirectionItem:(id)a3;
- (void)viewControllerGoPreviousState:(id)a3 withSender:(id)a4;
- (void)viewControllerOpenNearby:(id)a3 animated:(BOOL)a4;
- (void)viewControllerOpenSettings:(id)a3;
- (void)viewControllerPresentNearbyTransitDepartures:(id)a3;
- (void)viewControllerPresentPOIEnrichmentWithCoordinator:(id)a3;
- (void)viewControllerPresentRatingsHistory:(id)a3;
- (void)viewControllerPresentSearchEditing;
- (void)viewControllerPresentSearchEndEditingAnimated:(BOOL)a3;
- (void)viewControllerPresentUserProfile:(id)a3;
- (void)viewControllerPresentUserProfilePreferences:(id)a3 withTabType:(int64_t)a4;
- (void)viewControllerPresentVirtualGarage:(id)a3;
- (void)viewControllerRemoveSearchResultFocus:(id)a3;
- (void)viewControllerShowAddItemsFromACToLibraryView:(id)a3;
- (void)viewControllerShowAllCollections;
- (void)viewControllerShowCitySelectorFromGuideLocation:(id)a3;
- (void)viewControllerShowCollections:(id)a3;
- (void)viewControllerShowLibraryPlacesView:(id)a3;
- (void)viewControllerShowLibraryRootView:(id)a3;
- (void)viewControllerShowMyRecents:(id)a3 includeRecentSearches:(BOOL)a4;
- (void)viewControllerShowMyShortcuts:(id)a3;
- (void)viewControllerShowPhotoCredit:(id)a3;
- (void)viewControllerShowPhotoThumbnailGalleryWithMapItem:(id)a3 albumIndex:(unint64_t)a4;
- (void)viewControllerShowPublisher:(id)a3 replaceViewController:(BOOL)a4;
- (void)viewControllerShowPublisherWithID:(id)a3 numberOfCollections:(unint64_t)a4 replaceViewController:(BOOL)a5;
- (void)viewControllerShowRecentlyAdded:(id)a3;
- (void)viewControllerShowReports:(id)a3;
- (void)viewControllerShowReports:(id)a3 fromEntryPoint:(int)a4;
- (void)viewControllerShowSavedRoutesList:(id)a3;
- (void)viewControllerShowVisitHistoryHome:(id)a3;
- (void)zoomIn;
- (void)zoomOut;
@end

@implementation ActionCoordinator

- (GEOTransitLineItem)currentTransitLineItem
{
  v2 = [(ActionCoordinator *)self currentViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 lineItem];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ContaineeProtocol)currentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v3 = [WeakRetained currentViewController];

  return v3;
}

- (MKMapItem)currentMapItem
{
  v2 = [(ActionCoordinator *)self currentPlaceCardItem];
  v3 = [v2 mapItem];

  return v3;
}

- (PlaceCardItem)currentPlaceCardItem
{
  v2 = [(ActionCoordinator *)self currentViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 placeCardItem];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)removeContainerViewControllerObserver
{
  if (self->_containerViewControllerWillPresentContaineeObserver)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self->_containerViewControllerWillPresentContaineeObserver];

    containerViewControllerWillPresentContaineeObserver = self->_containerViewControllerWillPresentContaineeObserver;
    self->_containerViewControllerWillPresentContaineeObserver = 0;
  }

  if (self->_containerViewControllerDidResignContaineeObserver)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 removeObserver:self->_containerViewControllerDidResignContaineeObserver];

    containerViewControllerDidResignContaineeObserver = self->_containerViewControllerDidResignContaineeObserver;
    self->_containerViewControllerDidResignContaineeObserver = 0;
  }
}

- (void)addContainerViewControllerObservers
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);

  if (WeakRetained)
  {
    objc_initWeak(&location, self);
    v4 = +[NSNotificationCenter defaultCenter];
    v5 = objc_loadWeakRetained(&self->_containerViewController);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10005371C;
    v14[3] = &unk_10165FBE8;
    objc_copyWeak(&v15, &location);
    v6 = [v4 addObserverForName:@"ContainerWillPresentContaineeNotification" object:v5 queue:0 usingBlock:v14];
    containerViewControllerWillPresentContaineeObserver = self->_containerViewControllerWillPresentContaineeObserver;
    self->_containerViewControllerWillPresentContaineeObserver = v6;

    v8 = +[NSNotificationCenter defaultCenter];
    v9 = objc_loadWeakRetained(&self->_containerViewController);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100922FD0;
    v12[3] = &unk_10165FBE8;
    objc_copyWeak(&v13, &location);
    v10 = [v8 addObserverForName:@"ContainerDidResignContaineeNotification" object:v9 queue:0 usingBlock:v12];
    containerViewControllerDidResignContaineeObserver = self->_containerViewControllerDidResignContaineeObserver;
    self->_containerViewControllerDidResignContaineeObserver = v10;

    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

- (id)searchModeViewController
{
  searchModeViewController = self->_searchModeViewController;
  if (!searchModeViewController)
  {
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    v5 = [WeakRetained macChromeViewController];

    if (v5)
    {
      v6 = [v5 sidebarHomeActionDelegate];
      v7 = [SearchViewController alloc];
      v8 = [v5 sidebarSearchDataSourceDelegate];
      v9 = [(SearchViewController *)v7 initWithHomeActionDelegate:v6 searchDataSourceDelegate:v8];
      v10 = self->_searchModeViewController;
      self->_searchModeViewController = v9;
    }

    else
    {
      v11 = objc_alloc_init(SearchViewController);
      v6 = self->_searchModeViewController;
      self->_searchModeViewController = v11;
    }

    [(ControlContaineeViewController *)self->_searchModeViewController setDelegate:self];
    [(SearchViewController *)self->_searchModeViewController setVisitedPlacesCommonActionsHandlingDelegate:self];
    v12 = [(ActionCoordinator *)self personalizedItemManager];
    [(SearchViewController *)self->_searchModeViewController setPersonalizedItemManager:v12];

    [(ContaineeViewController *)self->_searchModeViewController setPreferredPresentationStyle:1];
    v13 = [(ActionCoordinator *)self containerViewController];
    v14 = [v13 chromeViewController];

    v15 = [v14 traitCollection];
    v16 = [v15 horizontalSizeClass];

    if (sub_10000FA08(v14) == 1 && v16 == 2)
    {
      v18 = 3;
    }

    else
    {
      v18 = 0;
    }

    v19 = [(ContaineeViewController *)self->_searchModeViewController cardPresentationController];
    [v19 setDefaultContaineeLayout:v18];

    searchModeViewController = self->_searchModeViewController;
  }

  return searchModeViewController;
}

- (PersonalizedItemManager)personalizedItemManager
{
  v2 = [(ActionCoordinator *)self containerViewController];
  v3 = [v2 chromeViewController];
  v4 = [v3 personalizedItemManager];

  return v4;
}

- (ControlContainerViewController)containerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);

  return WeakRetained;
}

- (BOOL)isRoutePlanningPresented
{
  if (self->_routePlanningDataCoordinator)
  {
    return self->_isRoutePlanningPresented;
  }

  else
  {
    v3 = [(ActionCoordinator *)self containerViewController];
    v4 = [v3 chromeViewController];
    v5 = [v4 contexts];
    v6 = [v5 _maps_firstContextOfClass:objc_opt_class()];
    v2 = v6 != 0;
  }

  return v2;
}

- (void)closeSettingsIfNeeded
{
  v2 = [(ActionCoordinator *)self containerViewController];
  v3 = [v2 chromeViewController];
  v4 = [v3 topMostPresentedViewController];

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [v5 presentingViewController];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100915A50;
      v8[3] = &unk_101661B18;
      v9 = v5;
      v7 = v5;
      [v6 dismissViewControllerAnimated:0 completion:v8];
    }
  }
}

- (id)routeAnnotationsProvider
{
  v3 = [(ActionCoordinator *)self containerViewController];
  v4 = [v3 currentViewController];
  if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  routePlanningMapController = v5;
  if (v5)
  {
    goto LABEL_8;
  }

  if ([(ActionCoordinator *)self isRoutePlanningPresented])
  {
    routePlanningMapController = self->_routePlanningMapController;
LABEL_8:
    v7 = routePlanningMapController;
    goto LABEL_9;
  }

  v7 = 0;
LABEL_9:

  return v7;
}

- (void)updateRouteAnnotations
{
  v3 = [(ActionCoordinator *)self containerViewController];
  v2 = [v3 chromeViewController];
  [v2 setNeedsUpdateComponent:@"routeAnnotations" animated:1];
}

- (GEOMapServiceTraits)newTraits
{
  v2 = [(ActionCoordinator *)self containerViewController];
  v3 = [v2 chromeViewController];
  v4 = [v3 currentTraits];

  return v4;
}

- (VenuesManager)venuesManager
{
  v2 = [(ActionCoordinator *)self containerViewController];
  v3 = [v2 chromeViewController];
  v4 = [v3 venuesManager];

  return v4;
}

- (void)updateHistoricalLocations
{
  v3 = [(ActionCoordinator *)self containerViewController];
  v2 = [v3 chromeViewController];
  [v2 updateHistoricalLocations];
}

- (BOOL)_canCaptureSearchStateForCardItem:(id)a3 previousItemInStack:(id)a4
{
  v6 = a3;
  if ([a4 conformsToProtocol:&OBJC_PROTOCOL___VenuePlaceCardItem])
  {
    v7 = [(ActionCoordinator *)self currentSearchSession];
    v8 = [v7 currentResultsSearchInfo];
    v9 = [v8 singleResultMode];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  if ([v6 conformsToProtocol:&OBJC_PROTOCOL___VenueRoutePlanningCardItem] & 1) != 0 || (objc_msgSend(v6, "conformsToProtocol:", &OBJC_PROTOCOL___VenueClusterCardItem) & 1) != 0 || (objc_msgSend(v6, "conformsToProtocol:", &OBJC_PROTOCOL___VenuePlaceCardItem))
  {
LABEL_7:
    v10 = 1;
    goto LABEL_8;
  }

  v12 = [(ActionCoordinator *)self venueCardCoordinator];
  if ([v12 isCardStackEmpty])
  {
  }

  else
  {
    v13 = [v6 conformsToProtocol:&OBJC_PROTOCOL___VenueCategoryCardItem];

    if (v13)
    {
      goto LABEL_7;
    }
  }

LABEL_3:
  v10 = 0;
LABEL_8:

  return v10;
}

- (id)searchFieldItemForVenueCardItem:(id)a3 previousItemInStack:(id)a4
{
  if ([(ActionCoordinator *)self _canCaptureSearchStateForCardItem:a3 previousItemInStack:a4])
  {
    v5 = [(ActionCoordinator *)self currentSearchSession];
    v6 = [v5 searchFieldItem];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)searchInfoForVenueCardItem:(id)a3 previousItemInStack:(id)a4
{
  if ([(ActionCoordinator *)self _canCaptureSearchStateForCardItem:a3 previousItemInStack:a4])
  {
    v5 = [(ActionCoordinator *)self currentSearchSession];
    v6 = [v5 currentResultsSearchInfo];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)mapSelectionStateForVenueCardItem:(id)a3 savePlaceCardSelectionState:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([v6 conformsToProtocol:&OBJC_PROTOCOL___VenueRoutePlanningCardItem])
  {
    goto LABEL_2;
  }

  if ([v6 conformsToProtocol:&OBJC_PROTOCOL___VenueClusterCardItem])
  {
    goto LABEL_4;
  }

  if (![v6 conformsToProtocol:&OBJC_PROTOCOL___VenuePlaceCardItem])
  {
    if (![v6 conformsToProtocol:&OBJC_PROTOCOL___VenueCategoryCardItem])
    {
LABEL_4:
      v8 = 0;
      goto LABEL_5;
    }

LABEL_2:
    v7 = [(ActionCoordinator *)self mapSelectionManager];
    v8 = [v7 selectionStateIncludingCamera:1 includeNotCustomLabelMarkers:0];

    goto LABEL_5;
  }

  routePlanningSelectionRestorationState = self->_routePlanningSelectionRestorationState;
  if (!routePlanningSelectionRestorationState)
  {
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_2;
  }

  v8 = routePlanningSelectionRestorationState;
LABEL_5:

  return v8;
}

- (void)_setTopographicalFeaturesForPlaceCardItem:(id)a3
{
  v4 = a3;
  v5 = [(ActionCoordinator *)self containerViewController];
  v6 = [v5 chromeViewController];

  if ([(ActionCoordinator *)self isRoutePlanningPresented])
  {
    v7 = sub_1008800D4();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Route planning is currently presented, will not toggle topographic lines.", &buf, 2u);
    }

    goto LABEL_29;
  }

  v8 = [v4 mapItem];

  if (!v8)
  {
    v9 = sub_1008800D4();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "PlaceCard is changing to a nil mapItem. Disabling topographic features.", &buf, 2u);
    }

    goto LABEL_9;
  }

  if ([(ActionCoordinator *)self displayedViewMode])
  {
    v9 = sub_1008800D4();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "View mode is not Explore, so disabling topographic features.", &buf, 2u);
    }

LABEL_9:

    [(ActionCoordinator *)self _setHikingToken:0];
    goto LABEL_29;
  }

  v10 = [v4 mapItem];
  v11 = [v10 _geoMapItem];
  v12 = [v11 _placeData];

  if ([v12 hasMapDisplayType])
  {
    v13 = [v12 mapDisplayType];
    v14 = sub_1008800D4();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 67109120;
      HIDWORD(buf) = v13 == 1;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "PlaceCard mapItem has a mapDisplayType, toggling topographic features to %d.", &buf, 8u);
    }

    if (v13 == 1)
    {
      v15 = [(ActionCoordinator *)self _hikingToken];
      v16 = v15 == 0;

      if (v16)
      {
        v17 = [v6 acquireHikingMapToken];
        [(ActionCoordinator *)self _setHikingToken:v17];
      }
    }

    else
    {
      [(ActionCoordinator *)self _setHikingToken:0];
    }
  }

  else if (([v4 isDroppedPin] & 1) != 0 || objc_msgSend(v10, "_isMapItemTypeAddress"))
  {
    v18 = sub_1008800D4();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "PlaceCard mapItem is a dropped pin, checking if it is inside of a hiking region.", &buf, 2u);
    }

    objc_initWeak(&buf, self);
    [v10 _coordinate];
    v20 = v19;
    v22 = v21;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100880128;
    v24[3] = &unk_10162C910;
    objc_copyWeak(&v26, &buf);
    v25 = v6;
    [v25 checkIfCoordinate:v24 isInHikingContextualRegionWithCompletionHandler:{v20, v22}];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&buf);
  }

  else
  {
    v23 = sub_1008800D4();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "PlaceCard mapItem lacks a mapDisplayType, will not toggle.", &buf, 2u);
    }
  }

LABEL_29:
}

- (void)_setHikingFeaturesForPlaceCardItem:(id)a3
{
  v4 = a3;
  v5 = [v4 mapItem];
  v6 = [v5 _mapsui_trailSelectionInfoForMap];

  v7 = sub_1008800D4();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v8)
    {
      v14 = 134217984;
      v15 = [v6 trailID];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Trail selection info found, selecting trail with ID %llu.", &v14, 0xCu);
    }

    v9 = [(ActionCoordinator *)self mapSelectionManager];
    v10 = [v6 trailID];
    v11 = [v6 trailName];
    v12 = +[NSLocale currentLocale];
    v13 = [v12 localeIdentifier];
    [v9 selectTrailWithId:v10 name:v11 locale:v13];
  }

  else
  {
    if (v8)
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "No trail selection info found, deselecting all trails.", &v14, 2u);
    }

    v9 = [(ActionCoordinator *)self mapSelectionManager];
    [v9 deselectTrails];
  }

  [(ActionCoordinator *)self _setTopographicalFeaturesForPlaceCardItem:v4];
}

- (void)placeViewControllerViewContactsClosed:(id)a3
{
  v4 = a3;
  v5 = [(ActionCoordinator *)self mapSelectionManager];
  [v5 clearSelection];

  v6 = dispatch_time(0, 250000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100880520;
  block[3] = &unk_101661B18;
  v9 = v4;
  v7 = v4;
  dispatch_after(v6, &_dispatch_main_q, block);
}

- (void)placeCardViewController:(id)a3 didUpdateForViewMode:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 isActive];
  v7 = sub_1008800D4();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "View mode has changed, so hiking features need to be recalculated.", buf, 2u);
    }

    v7 = [v5 placeCardItem];
    if (v7)
    {
      [(ActionCoordinator *)self _setHikingFeaturesForPlaceCardItem:v7];
    }
  }

  else if (v8)
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "View mode has changed but place card is inactive, no work to do.", v9, 2u);
  }
}

- (void)placeCardViewControllerDidTapHikingTip:(id)a3 originMapItem:(id)a4
{
  v5 = a4;
  v6 = [(ActionCoordinator *)self appCoordinator];
  [v6 enterRouteCreationWithRoute:0 originMapItem:v5 destinationMapItem:0 userInfo:0 completion:0];
}

- (void)placeCardViewController:(id)a3 didRequestHikingToolTipRegionIDForLocation:(CLLocationCoordinate2D)a4
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v8 = [(ActionCoordinator *)self containerViewController];
  v6 = [v8 chromeViewController];
  v7 = [v6 mapView];
  [v7 requestHikingToolTipRegionIDForLocation:{latitude, longitude}];
}

- (void)placeCardViewControllerWillBecomeCurrent:(id)a3
{
  v4 = a3;
  v5 = sub_1008800D4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Place Card is becoming current, will select trails and enable topographic features if needed.", v7, 2u);
  }

  v6 = [v4 placeCardItem];

  if (v6)
  {
    [(ActionCoordinator *)self _setHikingFeaturesForPlaceCardItem:v6];
  }
}

- (void)placeCardViewControllerWillResignCurrent:(id)a3
{
  v4 = sub_1008800D4();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Place Card is resigning current, will deselect trails and disable topographic features if needed.", v6, 2u);
  }

  v5 = [(ActionCoordinator *)self mapSelectionManager];
  [v5 deselectTrails];

  [(ActionCoordinator *)self _setTopographicalFeaturesForPlaceCardItem:0];
}

- (void)placeCardViewController:(id)a3 willReusePlaceCardItem:(id)a4
{
  v5 = a4;
  v6 = sub_1008800D4();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Place Card is reusing its Place Card Item, will set hiking features for existing mapItem.", v7, 2u);
  }

  [(ActionCoordinator *)self _setHikingFeaturesForPlaceCardItem:v5];
}

- (void)placeCardViewControllerRemovedObservingHandle:(id)a3
{
  v4 = [(ActionCoordinator *)self containerViewController];
  v5 = [v4 chromeViewController];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10088095C;
  v6[3] = &unk_101661B18;
  v6[4] = self;
  [v5 popToRootContextAnimated:0 completion:v6];
}

- (void)placeCardViewController:(id)a3 showOfflineMapRegionSelectorForRegion:(id)a4 name:(id)a5 muid:(unint64_t)a6 shouldShowDataManagementAfterDownload:(BOOL)a7
{
  v12 = a5;
  v13 = a4;
  v17 = a3;
  v14 = [v17 placeCardItem];
  v15 = [v14 isHomeWorkSchoolAddress];

  BYTE1(v16) = 1;
  LOBYTE(v16) = a7;
  [(ActionCoordinator *)self viewController:v17 showOfflineMapRegionSelectorForRegion:v13 name:v12 route:0 muid:a6 shouldUseSessionlessAnalytics:v15 shouldShowDataManagementAfterDownload:v16 shouldShowDataManagementAfterDownloadIfRegionDiffers:0 dismissalBlock:?];
}

- (void)placeCardViewController:(id)a3 requestCopyLinkToClipboard:(id)a4
{
  v5 = a4;
  v7 = [(ActionCoordinator *)self containerViewController];
  v6 = [v7 chromeViewController];
  [v6 copy:v5];
}

- (void)placeCardViewController:(id)a3 didSelectSharePublisherShareItem:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = objc_alloc_init(MUPresentationOptions);
  [v9 setPresentingViewController:v7];

  v8 = [(ActionCoordinator *)self appCoordinator];
  [v8 shareItem:v6 presentationOptions:0 completion:0];
}

- (void)placeCardViewController:(id)a3 editNameOfMapItem:(id)a4 saveHandler:(id)a5 cancelHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_initWeak(&location, self);
  v14 = [v10 placeCardItem];
  v15 = [v14 searchResult];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = [[SearchResult alloc] initWithMapItem:v11];
  }

  v18 = v17;

  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100880E88;
  v30[3] = &unk_101661340;
  objc_copyWeak(&v32, &location);
  v19 = v18;
  v31 = v19;
  v20 = objc_retainBlock(v30);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100880EF0;
  v27[3] = &unk_10162C8E8;
  v21 = v12;
  v28 = v21;
  v29 = v20;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100880F40;
  v24[3] = &unk_10165BA38;
  v22 = v13;
  v25 = v22;
  v23 = v29;
  v26 = v23;
  [(ActionCoordinator *)self viewController:v10 editNameOfMapItem:v11 saveHandler:v27 cancelHandler:v24];

  objc_destroyWeak(&v32);
  objc_destroyWeak(&location);
}

- (void)placeCardViewController:(id)a3 doSearchItem:(id)a4 withUserInfo:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(ActionCoordinator *)self viewControllerPresentSearchEndEditing];
  [(ActionCoordinator *)self viewController:v10 doSearchItem:v9 withUserInfo:v8];
}

- (void)placeCardViewController:(id)a3 didUpdateLinkedPlacesFromPlaceCardItem:(id)a4
{
  v5 = a4;
  v6 = [(ActionCoordinator *)self searchPinsManager];
  [v6 showLinkedPlacesAndPolygonForPlaceCardItem:v5];
}

- (void)placeCardViewController:(id)a3 presentCategoryPlacesListForMapItem:(id)a4 searchCategory:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  if ([v9 _browseCategory_isVenueItem])
  {
    [(ActionCoordinator *)self viewController:v10 presentVenueForMapItem:v9 searchCategory:v8 source:4];
  }

  else
  {
    [(ActionCoordinator *)self viewController:v10 presentPlacesForMapItem:v9 searchCategory:v8 source:4];
  }
}

- (void)placeCardViewController:(id)a3 selectTransitLineItem:(id)a4
{
  v6 = a4;
  v9 = a3;
  v7 = [(ActionCoordinator *)self containerViewController];
  v8 = sub_10000FA08(v7) != 5;

  [(ActionCoordinator *)self viewController:v9 selectTransitLineItem:v6 zoomToMapRegion:v8 preferredLayout:2];
}

- (void)placeCardViewController:(id)a3 mapItemDidChange:(id)a4
{
  v5 = a4;
  v6 = sub_1008800D4();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v11 = 134217984;
    v12 = [v5 _muid];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Place Card mapItemDidChange to muid %llu.", &v11, 0xCu);
  }

  v7 = [(ActionCoordinator *)self containerViewController];
  v8 = [v7 chromeViewController];
  [v8 setNeedsUpdateComponent:@"lookAroundButton" animated:1];

  v9 = [(ActionCoordinator *)self containerViewController];
  v10 = [v9 chromeViewController];
  [v10 updateComponentsIfNeeded];
}

- (void)placeCardViewController:(id)a3 placeCardItemWillChange:(id)a4
{
  v5 = a4;
  v6 = [v5 mapItem];
  v7 = [v6 _hasMUID];

  if (v7)
  {
    v8 = sub_1008800D4();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v5 mapItem];
      v10 = 134217984;
      v11 = [v9 _muid];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Place Card placeCardItemWillChange to muid %llu.", &v10, 0xCu);
    }

LABEL_7:

    goto LABEL_8;
  }

  if ([v5 isDroppedPin])
  {
    v8 = sub_1008800D4();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Place Card placeCardItemWillChange to dropped pin.", &v10, 2u);
    }

    goto LABEL_7;
  }

LABEL_8:
  [(ActionCoordinator *)self _setHikingFeaturesForPlaceCardItem:v5];
}

- (UIView)incidentsVCSourceView
{
  WeakRetained = objc_loadWeakRetained(&self->_incidentsVCSourceView);

  return WeakRetained;
}

- (AppCoordinator)appCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_appCoordinator);

  return WeakRetained;
}

- (void)_carPlayPlaceCardDidDismiss:(id)a3
{
  v4 = [a3 object];
  if (v4)
  {
    v14 = v4;
    v5 = [v4 platformController];
    v6 = [(ActionCoordinator *)self platformController];

    v4 = v14;
    if (v5 == v6)
    {
      WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
      v8 = [WeakRetained currentViewController];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;

      if (v10)
      {
        v11 = [v14 placeCardItem];
        v12 = [v10 placeCardItem];
        v13 = sub_100C73AE8(v11, v12);

        if (v13)
        {
          self->_isDismissingPlaceCardFromCarPlay = 1;
          [(ActionCoordinator *)self popContainee];
        }
      }

      v4 = v14;
    }
  }
}

- (void)_carPlayPlaceCardDidPresent:(id)a3
{
  v4 = a3;
  v5 = sub_10001CDEC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Received notification of CarPlay place card presenting", &v18, 2u);
  }

  v6 = [v4 object];

  if (v6 && ([v6 platformController], v7 = objc_claimAutoreleasedReturnValue(), -[ActionCoordinator platformController](self, "platformController"), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v7 == v8))
  {
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    v13 = [WeakRetained currentViewController];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v9 = v14;

    if (!v9 || (-[NSObject placeCardItem](v9, "placeCardItem"), v15 = objc_claimAutoreleasedReturnValue(), [v6 placeCardItem], v16 = objc_claimAutoreleasedReturnValue(), v17 = sub_100C73AE8(v15, v16), v16, v15, (v17 & 1) == 0))
    {
      v10 = [v6 placeCardItem];
      [(ActionCoordinator *)self presentPlaceCardForItem:v10 addToHistory:1 source:0 saveSelectionState:0 replaceCurrentCard:1];
      goto LABEL_13;
    }
  }

  else
  {
    v9 = sub_10001CDEC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v6 platformController];
      v11 = [(ActionCoordinator *)self platformController];
      v18 = 138412802;
      v19 = v6;
      v20 = 2112;
      v21 = v10;
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Synchronization info is either nil or platform controllers are not the same %@, %@, %@", &v18, 0x20u);

LABEL_13:
    }
  }
}

- (void)pinnedItemsViewControllerWithViewController:(id)a3 didSelectPinSuggested:(id)a4
{
  v6 = a4;
  v9 = a3;
  v7 = [v6 shortcutItem];
  v8 = [v7 isSetupPlaceholder];

  if (v8)
  {
    [(ActionCoordinator *)self viewController:v9 showAddShortcut:v6];
  }

  else
  {
    [(ActionCoordinator *)self viewController:v9 editShortcut:v6];
  }
}

- (void)pinnedItemsViewControllerWithViewController:(id)a3 didSelectPinned:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = @"DirectionsSessionInitiatorKey";
  v13 = &off_1016E77F0;
  v8 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v9 = [v8 mutableCopy];

  v10 = [v7 shortcutIdentifier];

  if (v10)
  {
    v11 = [v7 shortcutIdentifier];
    [v9 setObject:v11 forKeyedSubscript:@"ShortcutIdentifier"];
  }

  [(ActionCoordinator *)self viewController:v6 openFavoriteItem:v7 withUserInfo:v9];
}

- (void)userGuidesListViewControllerWithViewController:(id)a3 confirmDelete:(id)a4 presentationOptions:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v22 = [v11 sourceItem];
  [v11 sourceRect];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [(ActionCoordinator *)self viewController:v13 confirmDeleteCollections:v12 sourceItem:v22 sourceRect:v10 completion:v15, v17, v19, v21];
}

- (void)userGuideViewController:(id)a3 didTapAddPlacesToGuide:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CollectionEditSession *)[CollectionSaveSession alloc] initWithCollection:v6];

  [(ActionCoordinator *)self viewController:v7 addItemsFromACToCollection:v8];
}

- (void)userGuideViewController:(id)a3 didSelect:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[SearchResult alloc] initWithMapItem:v6];

  [(ActionCoordinator *)self viewController:v7 openSearchResult:v8];
}

- (void)userProfileViewControllerDismissByGestureWithViewController:(id)a3
{
  v4 = [(ActionCoordinator *)self containerViewController];
  v3 = [v4 chromeViewController];
  [v3 setNeedsUpdateComponent:@"floatingControls" animated:1];
}

- (void)ratingsHistoryContaineeViewController:(id)a3 didSelect:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[SearchResult alloc] initWithMapItem:v6];

  [(ActionCoordinator *)self viewController:v7 openSearchResult:v8];
}

- (id)traitsForAddFromACViewController:(id)a3
{
  v3 = [(ActionCoordinator *)self newTraits];

  return v3;
}

- (void)guidesHomeViewController:(id)a3 showCuratedGuideWithIdentifier:(id)a4
{
  v6 = a4;
  v8 = a3;
  v7 = [(ActionCoordinator *)self containerViewController];
  [v7 removeControllerFromStack:v8];

  [(ActionCoordinator *)self viewController:v8 showCuratedCollectionIdentifier:v6];
}

- (void)nearbyTransitViewController:(id)a3 select:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 view];
  [(ActionCoordinator *)self viewController:v7 openTransitIncidents:v6 fromView:v8 withUserInfo:0];
}

- (void)injectSearchPinsFromSearchInfo:(id)a3
{
  v4 = a3;
  v5 = [(ActionCoordinator *)self searchPinsManager];
  [v5 setSearchPinsFromSearchInfo:v4 scrollToResults:1 displayPlaceCardForResult:0 animated:1 completion:0];
}

- (void)viewControllerClearInjectedSearchPins:(id)a3
{
  v3 = [(ActionCoordinator *)self searchPinsManager];
  [v3 clearSearchPins];
}

- (id)searchResultsForViewController:(id)a3
{
  v3 = [(ActionCoordinator *)self searchPinsManager];
  v4 = [v3 allSearchResults];

  return v4;
}

- (id)traitsForCuratedCollectionViewController:(id)a3
{
  v3 = [(ActionCoordinator *)self newTraits];

  return v3;
}

- (void)curatedCollectionViewController:(id)a3 pickCollectionWithSession:(id)a4 presentationOptions:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v19 = [v8 sourceView];
  [v8 sourceRect];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [(ActionCoordinator *)self viewController:v10 pickCollectionWithSession:v9 sourceView:v19 sourceRect:v12, v14, v16, v18];
}

- (void)curatedCollectionViewController:(id)a3 selectSearchResult:(id)a4
{
  v5 = a4;
  v6 = [(ActionCoordinator *)self mapSelectionManager];
  [v6 selectSearchResult:v5 animated:1];
}

- (void)presentLocationCorrectionViewWithSession:(id)a3
{
  v4 = a3;
  BOOL = GEOConfigGetBOOL();
  v6 = &off_1015F6760;
  if (!BOOL)
  {
    v6 = off_1015F6758;
  }

  v8 = [objc_alloc(*v6) initWithSessionObject:v4];

  [v8 setContaineeDelegate:self];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained presentController:v8 animated:1];
}

- (void)viewController:(id)a3 showSortPickerWithSortOptions:(id)a4 initialSelectedSortOptionIndex:(int64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [[_TtC4Maps30SortOptionPickerViewController alloc] initWithSortOptions:v11 initialSelectedSortOptionIndex:a5 onDone:v12];
  [(ContaineeViewController *)v13 setContaineeDelegate:self];
  objc_initWeak(&location, self);
  objc_initWeak(&from, v13);
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_100907548;
  v20 = &unk_101654190;
  objc_copyWeak(&v21, &location);
  objc_copyWeak(&v22, &from);
  [(SortOptionPickerViewController *)v13 setCustomDismissHandler:&v17];
  v14 = [(ActionCoordinator *)self containerViewController:v17];
  v15 = sub_10000FA08(v14);

  if (v15 == 5)
  {
    [v10 presentViewController:v13 animated:1 completion:0];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    [WeakRetained presentController:v13 animated:1];
  }

  objc_destroyWeak(&v22);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

- (void)didSaveCustomRoute:(id)a3
{
  routeDataToEdit = self->_routeDataToEdit;
  self->_routeDataToEdit = 0;

  [(ActionCoordinator *)self popContainee];
}

- (void)popContainee
{
  v2 = [(ActionCoordinator *)self containerViewController];
  [v2 popLastViewControllerAnimated:1];
}

- (void)viewController:(id)a3 downloadOfflineRegionForRouteData:(id)a4
{
  v23 = a3;
  v6 = a4;
  v7 = [v6 boundingMapRegion];
  v8 = [GEOMapRegion _maps_offlineDownloadRegionForRouteBounds:v7];

  v9 = [[GEORouteBuilder_PersistentData alloc] initWithPersistentData:v6];
  v10 = [v9 buildRoute];
  v11 = [v6 userProvidedName];
  if ([v11 length])
  {
    [v6 userProvidedName];
  }

  else
  {
    [v6 routeName];
  }
  v12 = ;

  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = sub_100907968;
  v28[4] = sub_100907978;
  v13 = [(ActionCoordinator *)self iosBasedChromeViewController];
  v29 = [v13 acquireHikingMapToken];

  v14 = [(ActionCoordinator *)self iosChromeViewController];
  v15 = [v14 mapView];
  v16 = [v15 _mapLayer];
  v17 = [v16 applicationSubState];

  v18 = [(ActionCoordinator *)self iosChromeViewController];
  v19 = [v18 mapView];
  v20 = [v19 _mapLayer];
  [v20 setApplicationSubState:1];

  objc_initWeak(&location, self);
  v21 = [v6 mapItemMuid];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100907980;
  v24[3] = &unk_10162ED08;
  v24[4] = v28;
  objc_copyWeak(&v25, &location);
  v26 = v17;
  LOWORD(v22) = 256;
  [(ActionCoordinator *)self viewController:v23 showOfflineMapRegionSelectorForRegion:v8 name:v12 route:v10 muid:v21 shouldUseSessionlessAnalytics:0 shouldShowDataManagementAfterDownload:v22 shouldShowDataManagementAfterDownloadIfRegionDiffers:v24 dismissalBlock:?];
  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
  _Block_object_dispose(v28, 8);
}

- (void)viewControllerShowSavedRoutesList:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100907B04;
  v5[3] = &unk_10162ECE0;
  objc_copyWeak(&v6, &location);
  [MapsSavedRoutesManager fetchSavedRoutesWithType:1 completion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)viewControllerShowRecentlyAdded:(id)a3
{
  v5 = [[_TtC4Maps43LibraryRecentlyAddedContaineeViewController alloc] initWithNibName:0 bundle:0];
  [(LibraryRecentlyAddedContaineeViewController *)v5 setActionDelegate:self];
  [(ContaineeViewController *)v5 setContaineeDelegate:self];
  v4 = [(ActionCoordinator *)self containerViewController];
  [v4 presentController:v5 animated:1];
}

- (void)viewControllerShowVisitHistoryHome:(id)a3
{
  v8 = objc_alloc_init(_TtC4Maps40VisitedPlacesLibraryContextConfiguration);
  v4 = [[_TtC4Maps27VisitedPlacesLibraryContext alloc] initWithConfiguration:v8];
  [(VisitedPlacesLibraryContext *)v4 setActionDelegate:self];
  v5 = [(ActionCoordinator *)self appCoordinator];
  [(VisitedPlacesLibraryContext *)v4 setShareDelegate:v5];

  v6 = [(ActionCoordinator *)self containerViewController];
  v7 = [v6 chromeViewController];
  [v7 pushContext:v4 animated:1 completion:0];
}

- (void)viewController:(id)a3 editRoute:(id)a4
{
  objc_storeStrong(&self->_routeDataToEdit, a4);
  v6 = a4;
  v7 = [MapsSaveRouteContainee alloc];

  v9 = [(MapsSaveRouteContainee *)v7 initWithDelegate:self isEditing:1 showInitialKeyboard:1];
  v8 = [(ActionCoordinator *)self containerViewController];
  [v8 presentController:v9 animated:1];
}

- (void)viewController:(id)a3 startDirectionsToRouteData:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  objc_initWeak(&from, v6);
  v8 = +[MKLocationManager sharedLocationManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100907EE8;
  v11[3] = &unk_10162ECB8;
  objc_copyWeak(&v13, &location);
  objc_copyWeak(&v14, &from);
  v9 = v7;
  v12 = v9;
  v10 = [v8 singleLocationUpdateWithHandler:v11];

  [v10 start];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

- (void)routeStepsViewController:(id)a3 wantsToDisplayAdvisory:(id)a4
{
  [(ActionCoordinator *)self setRoutePlanningAdvisory:a4];

  [(ActionCoordinator *)self presentRoutePlanningViewType:5];
}

- (void)routeStepsViewController:(id)a3 wantsToShareItem:(id)a4 fromView:(id)a5
{
  v7 = a4;
  v9 = [MUPresentationOptions optionsWithSender:a5];
  v8 = [(ActionCoordinator *)self appCoordinator];
  [v8 shareItem:v7 presentationOptions:v9 completion:0];
}

- (void)routeSearchViewControllerDidDismiss:(id)a3 shouldExitRoutePlanning:(BOOL)a4
{
  if (a4)
  {
    v5 = !UIAccessibilityIsReduceMotionEnabled();

    [(ActionCoordinator *)self exitRoutePlanningIfNeededAnimated:v5];
  }

  else
  {

    [(ActionCoordinator *)self closeRoutePlanningViewController:a3 withSender:0];
  }
}

- (void)routeSearchViewController:(id)a3 wantsToPerformSearchWithItem:(id)a4 userInfo:(id)a5 autocompleteSessionData:(id)a6
{
  v16 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (GEOConfigGetBOOL())
  {
    v13 = [[_TtC4Maps20SearchResultsContext alloc] initWithSearchFieldItem:v10 contextType:1 recentAutocompleteSearchSessionData:v12];
    v14 = [(ActionCoordinator *)self containerViewController];
    v15 = [v14 chromeViewController];
    [v15 pushContext:v13 animated:1 completion:0];
  }

  else
  {
    [(ActionCoordinator *)self viewController:v16 doSearchItem:v10 withUserInfo:v11 refinementsQuery:0 autocompleteSessionData:v12];
  }
}

- (id)traitsForRouteSearchViewController:(id)a3
{
  v3 = [(ActionCoordinator *)self newTraits];

  return v3;
}

- (void)presentWalletTopUpViewControllerWithTransitIdentifier:(id)a3 callbackDelegate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = sub_10003D020();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Showing Wallet Top-Up View Controller", v11, 2u);
  }

  v9 = [[PKPerformActionSetupViewController alloc] initWithPassIdentifier:v7];
  [v9 setDelegate:v6];

  v10 = [(ActionCoordinator *)self containerViewController];
  [v10 _maps_topMostPresentViewController:v9 animated:1 completion:0];
}

- (void)presentWalletDCIViewControllerWithTransitSystems:(id)a3 callbackDelegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    if ([v7 count])
    {
      v9 = objc_alloc_init(PKPaymentSetupConfiguration);
      [v9 setReferrerIdentifier:@"maps"];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100908AB8;
      v14[3] = &unk_10162EC68;
      v14[4] = self;
      v15 = v7;
      v16 = v9;
      v17 = v8;
      v18 = a2;
      v10 = v9;
      [PKPaymentSetupViewController paymentSetupFeaturesForConfiguration:v10 completion:v14];

      goto LABEL_13;
    }

    v13 = sub_10003D020();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v20 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/UI/ActionCoordinator.m";
      v21 = 1024;
      v22 = 6771;
      v23 = 2082;
      v24 = "[ActionCoordinator presentWalletDCIViewControllerWithTransitSystems:callbackDelegate:]";
      v25 = 2082;
      v26 = "transitSystems.count == 0u";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. transitSystems.count cannot be 0", buf, 0x26u);
    }

    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v20 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/UI/ActionCoordinator.m";
      v21 = 1024;
      v22 = 6771;
      v23 = 2082;
      v24 = "[ActionCoordinator presentWalletDCIViewControllerWithTransitSystems:callbackDelegate:]";
      v25 = 2082;
      v26 = "transitSystems.count == 0u";
      v12 = "At %{public}s:%d, %{public}s forbids: %{public}s. transitSystems.count cannot be 0";
      goto LABEL_12;
    }
  }

  else
  {
    v11 = sub_10003D020();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v20 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/UI/ActionCoordinator.m";
      v21 = 1024;
      v22 = 6770;
      v23 = 2082;
      v24 = "[ActionCoordinator presentWalletDCIViewControllerWithTransitSystems:callbackDelegate:]";
      v25 = 2082;
      v26 = "transitSystems == nil";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. transitSystems cannot be nil", buf, 0x26u);
    }

    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v20 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/UI/ActionCoordinator.m";
      v21 = 1024;
      v22 = 6770;
      v23 = 2082;
      v24 = "[ActionCoordinator presentWalletDCIViewControllerWithTransitSystems:callbackDelegate:]";
      v25 = 2082;
      v26 = "transitSystems == nil";
      v12 = "At %{public}s:%d, %{public}s forbids: %{public}s. transitSystems cannot be nil";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, v12, buf, 0x26u);
    }
  }

LABEL_13:
}

- (id)_filteredFeaturesFromTransitSystems:(id)a3 allFeatures:(id)a4
{
  v5 = a3;
  v6 = a4;
  v24 = v5;
  v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v6;
  v25 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v25)
  {
    v23 = *v31;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v31 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v10 = v24;
        v11 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v27;
          do
          {
            for (j = 0; j != v12; j = j + 1)
            {
              if (*v27 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v26 + 1) + 8 * j);
              v16 = [v9 identifiers];
              v17 = [v15 identifier];
              v18 = [v16 containsObject:v17];

              if (v18)
              {
                v19 = [v9 copy];
                [v7 addObject:v19];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v12);
        }
      }

      v25 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v25);
  }

  v20 = [v7 copy];

  return v20;
}

- (void)presentEducationScreenWithAssetURLs:(id)a3 titleText:(id)a4 bodyText:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v13 = [[TransitPayEducationScreenViewController alloc] initWithAssetURLs:v10 titleText:v9 bodyText:v8];

  v11 = [[UINavigationController alloc] initWithRootViewController:v13];
  v12 = [(ActionCoordinator *)self containerViewController];
  [v12 _maps_topMostPresentViewController:v11 animated:1 completion:0];
}

- (void)viewController:(id)a3 presentReportDetail:(id)a4 fromEntryPoint:(int)a5
{
  v5 = *&a5;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v11 = [WeakRetained _maps_mapsSceneDelegate];
  v12 = [v11 rapPresenter];
  v13 = [v12 presentOfflineAlertIfNecessaryWithCompletion:0];

  if (v13)
  {
    v14 = sub_10002E924();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v22 = 0;
      v15 = "can't present ReportDetail because Maps is offline";
      v16 = &v22;
LABEL_11:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, v15, v16, 2u);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  if (!v9 || ([v9 reportID], v17 = objc_claimAutoreleasedReturnValue(), v17, !v17))
  {
    v14 = sub_10002E924();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v21 = 0;
      v15 = "can't present ReportDetail because rapRecord or reportID is nil";
      v16 = &v21;
      goto LABEL_11;
    }

LABEL_12:

    goto LABEL_13;
  }

  rapNotificationDetailsCoordinator = self->_rapNotificationDetailsCoordinator;
  if (!rapNotificationDetailsCoordinator)
  {
    v19 = [[_TtC4Maps33RAPNotificationDetailsCoordinator alloc] initWithParentViewController:v8];
    v20 = self->_rapNotificationDetailsCoordinator;
    self->_rapNotificationDetailsCoordinator = v19;

    [(RAPNotificationDetailsCoordinator *)self->_rapNotificationDetailsCoordinator setCoordinator:self];
    rapNotificationDetailsCoordinator = self->_rapNotificationDetailsCoordinator;
  }

  [(RAPNotificationDetailsCoordinator *)rapNotificationDetailsCoordinator presentRAPNotificationDetailsViewControllerWithRapRecord:v9 entryPoint:v5];
LABEL_13:
}

- (void)viewControllerShowReports:(id)a3 fromEntryPoint:(int)a4
{
  v4 = *&a4;
  if (_MKRAPIsAvailable() && (sub_1007413D0() & 1) == 0)
  {
    [CATransaction setFrameStallSkipRequest:1];
    v6 = [(ActionCoordinator *)self reportsHomeViewController];
    [v6 setEntryPoint:v4];

    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    v7 = [(ActionCoordinator *)self reportsHomeViewController];
    [WeakRetained presentController:v7 animated:1];
  }
}

- (void)viewControllerShowReports:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 29;
    v5 = v6;
  }

  else
  {
    v5 = v6;
    if (self->_searchModeViewController == v6)
    {
      v4 = 8;
    }

    else
    {
      v4 = 39;
    }
  }

  [(ActionCoordinator *)self viewControllerShowReports:v5 fromEntryPoint:v4];
}

- (id)reportsHomeViewController
{
  reportsHomeViewController = self->_reportsHomeViewController;
  if (!reportsHomeViewController)
  {
    v4 = objc_alloc_init(RAPHomeViewController);
    v5 = self->_reportsHomeViewController;
    self->_reportsHomeViewController = v4;

    [(ContaineeViewController *)self->_reportsHomeViewController setContaineeDelegate:self];
    [(ControlContaineeViewController *)self->_reportsHomeViewController setDelegate:self];
    reportsHomeViewController = self->_reportsHomeViewController;
  }

  return reportsHomeViewController;
}

- (void)createRadar
{
  v2 = +[MapsRadarController sharedInstance];
  [v2 launchTTR];
}

- (void)enterPedestrianAR:(id)a3
{
  _os_activity_label_useraction(&_mh_execute_header, "Tapped pedestrian AR button");

  [(ActionCoordinator *)self enterPedestrianAR];
}

- (void)dismissPedestrianARTeachableMomentCardIfNecessary
{
  if (-[ActionCoordinator isTeachableMomentCardActive](self, "isTeachableMomentCardActive") || (-[ActionCoordinator containerViewController](self, "containerViewController"), v3 = objc_claimAutoreleasedReturnValue(), [v3 currentViewController], v4 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v4, v3, (isKindOfClass & 1) != 0))
  {
    v6 = sub_100798A3C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [(ActionCoordinator *)self containerViewController];
      v8 = [v7 currentViewController];
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Dismissing Pedestrian AR teachable moment card: %@", &v12, 0xCu);
    }

    v9 = [(ActionCoordinator *)self containerViewController];
    v10 = [(ActionCoordinator *)self containerViewController];
    v11 = [v10 currentViewController];
    [v9 removeControllerFromStack:v11];
  }
}

- (void)showPedestrianARRaiseToEnterTeachableMomentCard
{
  v3 = [(ActionCoordinator *)self containerViewController];
  v4 = [v3 currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = sub_100798A3C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "The Pedestrian AR raise to enter teachable moment card is already visible; can't show twice", buf, 2u);
    }
  }

  else
  {
    v8 = objc_alloc_init(PedestrianARRaiseToEnterTeachableMomentContaineeViewController);
    [(ContaineeViewController *)v8 setContaineeDelegate:self];
    v7 = [(ActionCoordinator *)self containerViewController];
    [v7 presentController:v8 animated:1];
  }
}

- (void)showPedestrianARFeatureIntroTeachableMomentCard
{
  if ([(ActionCoordinator *)self isTeachableMomentCardActive])
  {
    v3 = sub_100798A3C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "The Pedestrian AR feature intro teachable moment card is already visible; can't show twice", buf, 2u);
    }
  }

  else
  {
    v5 = [[PedestrianARFeatureIntroTeachableMomentContaineeViewController alloc] initWithCoordinator:self];
    [(ContaineeViewController *)v5 setContaineeDelegate:self];
    v4 = [(ActionCoordinator *)self containerViewController];
    [v4 presentController:v5 animated:1];
  }
}

- (BOOL)isWeatherPopoverActive
{
  v2 = [(ActionCoordinator *)self containerViewController];
  v3 = [v2 _maps_mapsSceneDelegate];
  v4 = [v3 topMostPresentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)isTeachableMomentCardActive
{
  v2 = [(ActionCoordinator *)self containerViewController];
  v3 = [v2 currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)exitPedestrianAR
{
  v2 = [(ActionCoordinator *)self appCoordinator];
  [v2 exitPedestrianAR];
}

- (void)enterPedestrianAR
{
  v3 = sub_100798A3C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Will enter pedestrian AR from route planning", buf, 2u);
  }

  if ([(ActionCoordinator *)self canEnterPedestrianAR])
  {
    objc_initWeak(&location, self);
    v4 = [(ActionCoordinator *)self containerViewController];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100909C48;
    v26[3] = &unk_1016619A8;
    objc_copyWeak(&v27, &location);
    v5 = [v4 showVLFCrowdsourcingPermissionCardWithContaineeDelegate:self delegate:self completion:v26];

    if (v5)
    {
LABEL_24:
      objc_destroyWeak(&v27);
      objc_destroyWeak(&location);
      return;
    }

    v6 = [(ActionCoordinator *)self containerViewController];
    v7 = [v6 currentViewController];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    v10 = [(ActionCoordinator *)self containerViewController];
    v11 = [v10 currentViewController];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    if (v9)
    {
      v14 = sub_100798A3C();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Feature intro teachable moment card is active; dismissing it before entering AR", buf, 2u);
      }

      v15 = v9;
    }

    else
    {
      if (!v13)
      {
LABEL_23:
        v25 = 0;
        v23 = 0u;
        v24 = 0u;
        *buf = 0u;
        +[StartNavigationDetailsBuilder defaultNavigationDetailsOptions];
        *&v23 = 2;
        *(&v24 + 1) = 0;
        v17 = [(ActionCoordinator *)self appCoordinator];
        v18 = [(ActionCoordinator *)self routePlanningDataCoordinator];
        v19 = [v18 routeCollection];
        v20[0] = *buf;
        v20[1] = v23;
        v20[2] = v24;
        v21 = v25;
        [v17 startNavigationWithRouteCollection:v19 navigationDetailsOptions:v20];

        goto LABEL_24;
      }

      v14 = sub_100798A3C();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Raise to enter teachable moment card is active; dismissing it before entering AR", buf, 2u);
      }

      v15 = v13;
    }

    [(ActionCoordinator *)self containeeViewControllerGoToPreviousState:v15 withSender:0];
    goto LABEL_23;
  }

  v16 = sub_100798A3C();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Cannot enter pedestrian AR at the moment", buf, 2u);
  }
}

- (BOOL)canEnterPedestrianAR
{
  if (!+[PedestrianARSessionTask isPedestrianARModeSupported])
  {
    v7 = sub_100798A3C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      v9 = "Cannot enter pedestrian AR because it's not supported on the current device";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, v9, &v13, 2u);
    }

LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  v3 = [(ActionCoordinator *)self routePlanningDataCoordinator];
  v4 = [v3 routeCollection];
  v5 = [v4 count];

  if (!v5)
  {
    v7 = sub_100798A3C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      v9 = "Cannot enter pedestrian AR without a route";
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  v6 = [(ActionCoordinator *)self platformController];
  v7 = [v6 pedestrianARSessionStateManager];

  if (([v7 shouldShowPedestrianAR]& 1) == 0)
  {
    v10 = sub_100798A3C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v7 debugDescription];
      v13 = 138412290;
      v14 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Cannot enter pedestrian AR for state manager: %@", &v13, 0xCu);
    }

    goto LABEL_13;
  }

  v8 = 1;
LABEL_14:

  return v8;
}

- (BOOL)isPedestrianARShowingFailureView
{
  if (![(ActionCoordinator *)self isPedestrianARActive])
  {
    return 0;
  }

  v3 = [(ActionCoordinator *)self appCoordinator];
  v4 = [v3 chromeViewController];
  v5 = [v4 topContext];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = [(ActionCoordinator *)self appCoordinator];
  v8 = [v7 chromeViewController];
  v9 = [v8 topContext];
  v10 = [v9 fullscreenViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    v13 = [v12 isShowingFailureView];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)isPedestrianARActive
{
  v2 = [(ActionCoordinator *)self appCoordinator];
  v3 = [v2 chromeViewController];
  v4 = [v3 topContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 1;
  }

  else
  {
    v6 = +[MNNavigationService sharedService];
    v5 = [v6 state] == 3;
  }

  return v5;
}

- (void)timingViewController:(id)a3 didPickTiming:(id)a4
{
  v5 = a4;
  v6 = [(ActionCoordinator *)self routePlanningDataCoordinator];
  [v6 updateTiming:v5];
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v10 = a3;
  v4 = [v10 presentedViewController];
  incidentsVC = self->_incidentsVC;

  if (v4 == incidentsVC)
  {
    [(RouteIncidentsViewController *)self->_incidentsVC resetForDismiss];
  }

  else
  {
    v6 = [v10 presentedViewController];
    v7 = [(ActionCoordinator *)self lineCardVC];
    v8 = v7;
    if (v6 == v7)
    {
      v9 = [(TransitLineSelectionActionController *)self->_lineSelectionAction isActive];

      if (v9)
      {
        [(TransitLineSelectionActionController *)self->_lineSelectionAction deactivateWithContext:0];
      }
    }

    else
    {
    }
  }
}

- (UIScrollView)pptTestScrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v3 = [WeakRetained currentViewController];

  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 pptTestScrollView];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)pptTestDismissTrayAnimated:(BOOL)a3 assertTrayType:(int64_t)a4
{
  v4 = a3;
  v10 = [(ActionCoordinator *)self routePlanningOverviewViewControllerIfLoaded:a3];
  v6 = [(ActionCoordinator *)self currentViewController];
  v7 = v6;
  if (v10 && v6 == v10)
  {
    [(ActionCoordinator *)self closeRoutePlanningViewController:v10 withSender:0];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    [WeakRetained popLastViewControllerAnimated:v4];

    v9 = [(ActionCoordinator *)self containerViewController];
    [v9 popLastViewControllerFromViewController:v7 animated:v4 useDefaultContaineeLayout:0];
  }
}

- (BOOL)pptTestIsTrayType:(int64_t)a3
{
  switch(a3)
  {
    case 0:
      return 1;
    case 2:
      v6 = +[UIDevice currentDevice];
      v7 = [v6 userInterfaceIdiom];

      v8 = [(ActionCoordinator *)self currentViewController];
      v4 = v8;
      if (v7 == 5)
      {
        v9 = v8 == 0;
LABEL_11:

        return v9;
      }

      v5 = [(ActionCoordinator *)self searchModeViewController];
LABEL_10:
      v9 = v4 == v5;

      goto LABEL_11;
    case 1:
      v4 = [(ActionCoordinator *)self currentViewController];
      v5 = [(ActionCoordinator *)self placeCardViewController];
      goto LABEL_10;
  }

  return 0;
}

- (void)pptTestUpdateTrayLayout:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  if (a3 < 3)
  {
    v6 = a3 + 1;
  }

  else
  {
    v6 = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v8 = [WeakRetained containeeLayout];

  if (v8 == v6)
  {
    v14[0] = @"ContainerLayout";
    v9 = [NSNumber numberWithUnsignedInteger:v6];
    v14[1] = @"ContainerContainee";
    v15[0] = v9;
    v10 = objc_loadWeakRetained(&self->_containerViewController);
    v11 = [v10 currentViewController];
    v15[1] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
    [PPTNotificationCenter postNotificationIfNeededWithName:@"PPTTestTrayLayoutDidUpdateNotification" object:self userInfo:v12];
  }

  else
  {
    v13 = objc_loadWeakRetained(&self->_containerViewController);
    [v13 setLayoutIfSupported:v6 animated:v4];
  }
}

- (BOOL)pptTestCanUpdateTrayLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  if ([WeakRetained containeeLayout] == 5)
  {
    v4 = 0;
  }

  else
  {
    v5 = objc_loadWeakRetained(&self->_containerViewController);
    v4 = [v5 containeeLayout] != 4;
  }

  return v4;
}

- (void)pptTestOpenFirstCollection
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v3 = [WeakRetained currentViewController];

  if ([v3 conformsToProtocol:&OBJC_PROTOCOL___PPTTestPresentCollectionProtocol])
  {
    [v3 pptPresentFirstCollection];
  }
}

- (UIScrollView)pptTestScrollViewForProactive
{
  v2 = [(ActionCoordinator *)self searchModeViewController];
  v3 = [v2 scrollViewForProactive];

  return v3;
}

- (void)mapsDragDestinationHandler:(id)a3 didReceiveMapKitHandle:(id)a4 title:(id)a5
{
  v7 = a5;
  v8 = a4;
  [(ActionCoordinator *)self _prepareToReceiveDrop];
  v9 = objc_alloc_init(SearchFieldItem);
  [(SearchFieldItem *)v9 setMapKitHandle:v8];

  [(SearchFieldItem *)v9 setMapKitHandleTitle:v7];
  [(ActionCoordinator *)self viewController:0 doSearchItem:v9 withUserInfo:&__NSDictionary0__struct];
}

- (void)mapsDragDestinationHandler:(id)a3 didReceiveString:(id)a4 nearCoordinate:(CLLocationCoordinate2D)a5
{
  longitude = a5.longitude;
  latitude = a5.latitude;
  v8 = a4;
  [(ActionCoordinator *)self _prepareToReceiveDrop];
  v9 = objc_alloc_init(SearchFieldItem);
  [(SearchFieldItem *)v9 setSearchString:v8];

  [(SearchFieldItem *)v9 setCoordinateHint:latitude, longitude];
  [(ActionCoordinator *)self viewController:0 doSearchItem:v9 withUserInfo:&__NSDictionary0__struct];
}

- (BOOL)mapsDragDestinationHandler:(id)a3 didReceiveURL:(id)a4
{
  v5 = a4;
  [(ActionCoordinator *)self _prepareToReceiveDrop];
  v6 = +[UIApplication _maps_keyMapsSceneDelegate];
  v7 = [v6 entryPointsCoordinator];
  v8 = [(ActionCoordinator *)self containerViewController];
  v9 = [v8 view];
  v10 = [v9 window];
  v11 = [v10 windowScene];
  v12 = [v11 session];
  v13 = [(ActionCoordinator *)self containerViewController];
  v14 = [v13 view];
  [v14 bounds];
  [v7 openURL:v5 session:v12 sceneOptions:0 mkOptions:0 windowSize:{v15, v16}];

  return 1;
}

- (BOOL)mapsDragDestinationHandler:(id)a3 didReceiveVCard:(id)a4
{
  v5 = a4;
  [(ActionCoordinator *)self _prepareToReceiveDrop];
  v6 = [v5 postalAddresses];
  v7 = [v6 firstObject];

  if (v7)
  {
    v8 = [[AddressBookAddress alloc] initWithContact:v5 addressValue:v7];
    v9 = [SearchFieldItem searchFieldItemWithObject:v8];
    [(ActionCoordinator *)self viewController:0 doSearchItem:v9 withUserInfo:&__NSDictionary0__struct];
  }

  return v7 != 0;
}

- (void)mapsDragDestinationHandler:(id)a3 didReceiveMapItem:(id)a4
{
  v5 = a4;
  [(ActionCoordinator *)self _prepareToReceiveDrop];
  v7 = [[SearchResult alloc] initWithMapItem:v5];

  [(SearchResultRepr *)v7 setHasIncompleteMetadata:1];
  v6 = [SearchFieldItem searchFieldItemWithObject:v7];
  [(ActionCoordinator *)self viewController:0 doSearchItem:v6 withUserInfo:&__NSDictionary0__struct];
}

- (void)_prepareToReceiveDrop
{
  [(ActionCoordinator *)self exitRoutePlanningIfNeededAnimated:0];

  [(ActionCoordinator *)self presentSearchAnimated:0];
}

- (void)markedLocationRefinementViewControllerDidCancel:(id)a3
{
  v3 = [a3 presentingViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)markedLocationRefinementViewControllerSelectedRemoveMarkedLocation:(id)a3
{
  v4 = a3;
  v5 = [v4 originalMarkedLocation];
  v6 = [v4 presentingViewController];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10090AEA0;
  v9[3] = &unk_101661A40;
  v9[4] = self;
  v10 = v4;
  v11 = v5;
  v7 = v5;
  v8 = v4;
  [v6 dismissViewControllerAnimated:1 completion:v9];
}

- (void)locationRefinementViewController:(id)a3 didSelectCoordinate:(CLLocationCoordinate2D)a4
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v8 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ActionCoordinator *)self viewController:v8 createMarkedLocationAtCoordinate:0x7FFFFFFFLL floorOrdinal:latitude, longitude];
    v7 = [v8 presentingViewController];
    [v7 dismissViewControllerAnimated:1 completion:0];
  }
}

- (int)currentMapViewTargetForAnalytics
{
  v3 = [(ActionCoordinator *)self currentViewController];
  v4 = [v3 conformsToProtocol:&OBJC_PROTOCOL___GEOLogContextDelegate];

  if (!v4)
  {
    return 0;
  }

  v5 = [(ActionCoordinator *)self currentViewController];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 currentMapViewTargetForAnalytics];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int)currentUITargetForAnalytics
{
  v3 = [(ActionCoordinator *)self currentViewController];
  v4 = [v3 conformsToProtocol:&OBJC_PROTOCOL___GEOLogContextDelegate];

  if (!v4)
  {
    return 0;
  }

  v5 = [(ActionCoordinator *)self currentViewController];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 currentUITargetForAnalytics];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)pptTestPresentPlacecardWithMapItem:(id)a3
{
  v4 = a3;
  v5 = [[PlaceCardItem alloc] initWithMapItem:v4];

  [(ActionCoordinator *)self presentPlaceCardForItem:v5 addToHistory:0 source:0 saveSelectionState:1];
}

- (void)pptTestStartNavigation
{
  v2 = [(ActionCoordinator *)self routePlanningOverviewViewController];
  if ([v2 conformsToProtocol:&OBJC_PROTOCOL___PPTTestNavigationProtocol])
  {
    [v2 pptTestStartNavigation];
  }
}

- (void)pptTestDoDirectionItem:(id)a3
{
  v6 = @"DirectionsSessionInitiatorKey";
  v7 = &off_1016E7808;
  v4 = a3;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [(ActionCoordinator *)self viewController:0 doDirectionItem:v4 withUserInfo:v5];
}

- (void)pptTestCreateCustomSearchResultForDroppedPinAtPoint:(CLLocationCoordinate2D)a3 animated:(BOOL)a4
{
  v5 = [SearchResult customSearchResultWithCoordinate:a4, a3.latitude, a3.longitude];
  [(ActionCoordinator *)self viewController:0 removeDroppedPin:0];
  [(ActionCoordinator *)self viewController:0 createDroppedPin:v5];
}

- (void)pptSelectFirstGuidePublisher
{
  v2 = [(ActionCoordinator *)self searchModeViewController];
  [v2 pptSelectFirstGuidePublisher];
}

- (void)pptSelectSeeAllCuratedCollections
{
  v2 = [(ActionCoordinator *)self searchModeViewController];
  [v2 pptSelectSeeAllCuratedCollections];
}

- (void)pptSelectACSuggestionMatchingAddress:(id)a3
{
  v4 = a3;
  v5 = [(ActionCoordinator *)self searchModeViewController];
  [v5 pptSelectACSuggestionMatchingAddress:v4];
}

- (void)pptSelectFirstCuratedGuide
{
  v2 = [(ActionCoordinator *)self searchModeViewController];
  [v2 pptSelectFirstCuratedCollection];
}

- (void)pptTestSearchCancel
{
  [(ActionCoordinator *)self pptAssertSearch];
  v3 = [(ActionCoordinator *)self searchModeViewController];
  [v3 conformsToProtocol:&OBJC_PROTOCOL___UISearchBarDelegate];
  [v3 searchBarCancelButtonClicked:0];
}

- (void)pptTestEnterSearchMode
{
  [CATransaction setFrameStallSkipRequest:1];
  [(ActionCoordinator *)self pptAssertSearch];
  v3 = [(ActionCoordinator *)self searchModeViewController];
  [v3 pptSearchBarShouldProvideTextChangeNotification];

  v4 = [(ActionCoordinator *)self currentViewController];
  v5 = [v4 cardPresentationController];
  [v5 wantsLayout:3];

  v6 = [(ActionCoordinator *)self searchModeViewController];
  [v6 searchBarBecomeFirstResponder];
}

- (void)pptTestSearchForFieldItem:(id)a3
{
  v4 = a3;
  [(ActionCoordinator *)self pptAssertSearch];
  v5 = +[UIApplication sharedApplication];
  [v5 sendAction:"resignFirstResponder" toTarget:0 fromSender:0 forEvent:0];

  [(ActionCoordinator *)self viewController:0 doSearchItem:v4 withUserInfo:0];
  v6 = +[UIDevice currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if (v7 == 5)
  {
    v8 = [(ActionCoordinator *)self searchModeViewController];
    [v8 pptSetSearchDataSource];
  }
}

- (void)pptAssertSearch
{
  v3 = +[UIDevice currentDevice];
  v4 = [v3 userInterfaceIdiom];

  v5 = [(ActionCoordinator *)self currentViewController];
  if (v4 != 5)
  {
    v6 = v5;
    [(ActionCoordinator *)self searchModeViewController];

    v5 = v6;
  }
}

- (void)pptTestSearchEndEditing
{
  v2 = [(ActionCoordinator *)self searchModeViewController];
  [v2 endEditing];
}

- (void)pptTestAutocompleteSearchForFieldItem:(id)a3
{
  v4 = a3;
  v5 = [(ActionCoordinator *)self searchModeViewController];
  [v5 updateSearchFieldWithItem:v4];
}

- (void)pptTestSearchRetainQueryForSelectedSearchCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ActionCoordinator *)self searchModeViewController];
  [v5 retainSearchQueryForSelectedAutocompleteItem:v4 forTimeInterval:1.79769313e308];
}

- (void)pptTestSearchNearbyCategoryWithIndex:(unint64_t)a3
{
  v4 = [(ActionCoordinator *)self searchModeViewController];
  [v4 selectNearbyCategoryAtIndex:a3];
}

- (void)pptTestMediumizePlaceCardAnimated:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained setLayoutIfSupported:2 animated:v3];
}

- (void)pptTestMinimizePlaceCardAnimated:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained setLayoutIfSupported:1 animated:v3];
}

- (void)pptTestMaximizePlaceCardAnimated:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained setLayoutIfSupported:3 animated:v3];
}

- (BOOL)pptTestCanResizePlacecard
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v3 = [WeakRetained containerStyle];

  return ((v3 - 2) & 0xFFFFFFFFFFFFFFFALL) != 0;
}

- (void)didTapMapView:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v26 = a3;
  if ([(ActionCoordinator *)self isRoutePlanningPresented])
  {
    v7 = [(ActionCoordinator *)self containerViewController];
    v8 = [v7 currentViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      [(RoutePlanningMapController *)self->_routePlanningMapController didTapMapView:v26 atPoint:x, y];
    }
  }

  v10 = [(ActionCoordinator *)self containerViewController];
  v11 = [v10 chromeViewController];
  if (objc_opt_respondsToSelector())
  {
    v12 = [(ActionCoordinator *)self containerViewController];
    v13 = [v12 chromeViewController];
    v14 = [v13 mapViewShouldHandleTapToDeselect:v26];

    if (!v14)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v15 = [(ActionCoordinator *)self mapSelectionManager];
  v16 = [v15 hasSelection];

  if (v16)
  {
    v17 = [(ActionCoordinator *)self containerViewController];
    v18 = [v17 chromeViewController];
    [v18 setNeedsUpdateComponent:@"lookAroundButton" animated:1];

    v19 = [(ActionCoordinator *)self mapSelectionManager];
    [v19 clearSelection];
  }

  else
  {
    v20 = [(ActionCoordinator *)self lineSelectionAction];
    v21 = [v20 isActive];

    if (v21)
    {
      v19 = [(ActionCoordinator *)self lineSelectionAction];
      [v19 deactivateWithContext:0];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
      v23 = [WeakRetained currentViewController];
      objc_opt_class();
      v24 = objc_opt_isKindOfClass();

      if ((v24 & 1) == 0)
      {
        goto LABEL_15;
      }

      v19 = objc_loadWeakRetained(&self->_containerViewController);
      v25 = [v19 currentViewController];
      [(ActionCoordinator *)self viewControllerClosed:v25 animated:1];
    }
  }

LABEL_15:
}

- (void)viewControllerShowPhotoCredit:(id)a3
{
  v10 = a3;
  v4 = [v10 parentViewController];
  [v4 setIsPreparingForModalPresentation:1];
  v5 = [v4 cardPresentationController];
  [v5 updateHeightForCurrentLayoutAnimated:1];

  v6 = [[PhotoCreditViewController alloc] initWithCompletionHandler:&stru_10162EC18];
  [(ContaineeViewController *)v6 setContaineeDelegate:self];
  [(PhotoCreditViewController *)v6 setDelegate:v4];
  v7 = [(ActionCoordinator *)self containerViewController];
  v8 = sub_10000FA08(v7);

  if (v8 == 5)
  {
    [v10 presentViewController:v6 animated:1 completion:0];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    [WeakRetained presentController:v6 animated:1];
  }
}

- (void)viewControllerPresentPOIEnrichmentWithCoordinator:(id)a3
{
  v10 = a3;
  objc_storeStrong(&self->_poiEnrichmentCoordinator, a3);
  [(UGCPOIEnrichmentCoordinator *)self->_poiEnrichmentCoordinator setDelegate:self];
  v5 = [(UGCPOIEnrichmentCoordinator *)self->_poiEnrichmentCoordinator containerViewController];

  if (!v5)
  {
    v6 = [(ActionCoordinator *)self containerViewController];
    [(UGCPOIEnrichmentCoordinator *)self->_poiEnrichmentCoordinator setContainerViewController:v6];
  }

  v7 = [(UGCPOIEnrichmentCoordinator *)self->_poiEnrichmentCoordinator containeeDelegate];

  if (!v7)
  {
    [(UGCPOIEnrichmentCoordinator *)self->_poiEnrichmentCoordinator setContaineeDelegate:self];
  }

  v8 = [(UGCPOIEnrichmentCoordinator *)self->_poiEnrichmentCoordinator presentingViewController];

  if (!v8)
  {
    v9 = [(ActionCoordinator *)self containerViewController];
    [(UGCPOIEnrichmentCoordinator *)self->_poiEnrichmentCoordinator setPresentingViewController:v9];
  }

  [(UGCPOIEnrichmentCoordinator *)self->_poiEnrichmentCoordinator present];
}

- (void)poiEnrichmentCoordinator:(id)a3 openURL:(id)a4
{
  v6 = a4;
  v7 = [a3 presentingViewController];
  [(ActionCoordinator *)self viewController:v7 openURL:v6];
}

- (void)poiEnrichmentCoordinatorDidFinish:(id)a3
{
  poiEnrichmentCoordinator = self->_poiEnrichmentCoordinator;
  self->_poiEnrichmentCoordinator = 0;
}

- (void)addRatingsForMapItem:(id)a3
{
  v4 = a3;
  v6 = [[MKMapItem alloc] initWithGeoMapItem:v4 isPlaceHolderPlace:0];

  v5 = [UGCPOIEnrichmentCoordinator ratingsAndPhotosCoordinatorWithMapItem:v6 initialOverallState:0 entryPoint:0 originTarget:@"SEARCH_TRAY"];
  [v5 setSubmissionStatusDelegate:self];
  [v5 setPresentationContext:2];
  [(ActionCoordinator *)self viewControllerPresentPOIEnrichmentWithCoordinator:v5];
}

- (void)presentPOIEnrichmentInformedConsentWithPresentationContext:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(ActionCoordinator *)self containerViewController];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10090C010;
  v9[3] = &unk_10162EBD8;
  v10 = v6;
  v8 = v6;
  [UGCInformedConsentViewController presentIfNeededWithPresentingViewController:v7 presentationContext:a3 completion:v9];
}

- (void)ensureRoutePlanningContentIsVisible
{
  if (![(ActionCoordinator *)self isRoutePlanningPresented])
  {
    v3 = sub_10006D178();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315906;
      v7 = "[ActionCoordinator ensureRoutePlanningContentIsVisible]";
      v8 = 2080;
      v9 = "ActionCoordinator.m";
      v10 = 1024;
      v11 = 5866;
      v12 = 2080;
      v13 = "self.isRoutePlanningPresented";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v6, 0x26u);
    }

    if (sub_100E03634())
    {
      v4 = sub_10006D178();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = +[NSThread callStackSymbols];
        v6 = 138412290;
        v7 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%@", &v6, 0xCu);
      }
    }
  }

  if ([(ActionCoordinator *)self isRoutePlanningPresented])
  {
    [(RoutePlanningMapController *)self->_routePlanningMapController updateCameraIfPossible];
  }
}

- (void)continueRideBookingSessionWithApplicationIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(ActionCoordinator *)self appCoordinator];
  [v5 continueRideBookingSessionWithApplicationIdentifier:v4];
}

- (void)startRideBookingSessionWithRideOption:(id)a3
{
  v4 = a3;
  [(ActionCoordinator *)self setIsRoutePlanningPresented:0];
  v5 = [(ActionCoordinator *)self appCoordinator];
  [v5 startRideBookingSessionWithRideBookingRideOption:v4];
}

- (void)startNavigationWithRouteCollection:(id)a3 navigationDetailsOptions:(NavigationDetailsOptions *)a4
{
  v6 = a3;
  v7 = [(ActionCoordinator *)self searchSessionManager];
  v8 = [v7 currentSearchSession];
  [v8 resetEVChargerTimers];

  v9 = [(ActionCoordinator *)self appCoordinator];
  v10 = *&a4->guidanceType;
  v11[0] = *&a4->shouldSimulateLocations;
  v11[1] = v10;
  v11[2] = *&a4->isReconnecting;
  navigationModeContext = a4->navigationModeContext;
  [v9 startNavigationWithRouteCollection:v6 navigationDetailsOptions:v11];
}

- (void)selectWaypointSearchFieldIndex:(unint64_t)a3 exitPlanningIfCancelTapped:(BOOL)a4 beginEditing:(BOOL)a5
{
  v5 = a4;
  v7 = [(ActionCoordinator *)self routeSearchVC:a3];
  [v7 setExitRoutePlanningOnCancel:v5];
  [v7 selectFieldIndex:a3 beginEditing:0];
}

- (void)presentScheduleForStep:(id)a3
{
  v4 = a3;
  v8 = [[TransitSchedulesViewController alloc] initWithTransitRouteStep:v4];

  [(TransitSchedulesViewController *)v8 setActionCoordinator:self];
  [(ContaineeViewController *)v8 setContaineeDelegate:self];
  [(TransitSchedulesViewController *)v8 setTransitSchedulesDelegate:self];
  [(ControlContaineeViewController *)v8 setDelegate:self];
  if (sub_10000FA08(v8) != 5)
  {
    v5 = [(ContaineeViewController *)v8 cardPresentationController];
    [v5 setPresentedModally:0];

    v6 = [(ContaineeViewController *)v8 cardPresentationController];
    [v6 setTakesAvailableHeight:0];
  }

  v7 = [(ActionCoordinator *)self containerViewController];
  [v7 presentController:v8 animated:1];
}

- (void)setRoutePlanningAdvisory:(id)a3
{
  v4 = a3;
  v5 = [(ActionCoordinator *)self incidentsVC];
  [v5 setAdvisory:v4];
}

- (void)setRoutePlanningAdvisoriesInfo:(id)a3
{
  v4 = a3;
  v5 = [(ActionCoordinator *)self incidentsVC];
  [v5 setAdvisoriesInfo:v4];
}

- (void)closeRoutePlanningViewController:(id)a3 withSender:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100798A3C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v33 = 138412546;
    *&v33[4] = v6;
    v34 = 2112;
    v35 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "closeRoutePlanningViewController: %@ sender: %@", v33, 0x16u);
  }

  v9 = [(ActionCoordinator *)self containerViewController];
  v10 = [v9 traitCollection];
  v11 = [v10 userInterfaceIdiom];

  if (v11 != 5 || [v6 modalPresentationStyle] != 7)
  {
    v12 = [(ActionCoordinator *)self currentViewController];

    if (v12 != v6)
    {
      v13 = sub_100798A3C();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = [(ActionCoordinator *)self currentViewController];
        *v33 = 138412546;
        *&v33[4] = v14;
        v34 = 2112;
        v35 = v6;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Aborting closing route planning as %@ does not equal %@", v33, 0x16u);
      }

LABEL_41:

      goto LABEL_42;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v6 presentedViewController];

      if (v15)
      {
        v16 = [(ActionCoordinator *)self containerViewController];
        [v16 dismissViewControllerAnimated:1 completion:0];

        goto LABEL_42;
      }
    }

    v13 = [(ActionCoordinator *)self routePlanningOverviewViewControllerIfLoaded];
    if (v13)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (v13 == v6 || (isKindOfClass & 1) == 0)
      {
        goto LABEL_21;
      }

      v18 = sub_100798A3C();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *v33 = 0;
        v19 = "The overview VC does not point to the current overview VC being dismissed";
LABEL_19:
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, v19, v33, 2u);
      }
    }

    else
    {
      v18 = sub_100798A3C();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *v33 = 0;
        v19 = "The overview VC is not set at the point of closing";
        goto LABEL_19;
      }
    }

LABEL_21:
    IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
    objc_opt_class();
    v21 = objc_opt_isKindOfClass();
    v22 = [(ActionCoordinator *)self platformController];
    v23 = [v22 currentSession];
    if (v21)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = 0;
      }

      else
      {
        v27 = [(ActionCoordinator *)self platformController];
        v28 = [v27 previousSession];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v24 = 0;
        }

        else
        {
          v24 = [(SearchViewController *)self->_searchModeViewController shouldRetainSearchQuery]^ 1;
        }
      }

      [(ActionCoordinator *)self _exitRoutePlanningIfNeededAnimated:!IsReduceMotionEnabled restoreStashedMapSelection:v24];
    }

    else
    {
      objc_opt_class();
      v25 = objc_opt_isKindOfClass();

      if (v25)
      {
        v26 = [(ActionCoordinator *)self containerViewController];
        [v26 popLastViewControllerFromViewController:v6 animated:!IsReduceMotionEnabled useDefaultContaineeLayout:0];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || v11 == 5 && _UISolariumEnabled() && (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v26 = [(ActionCoordinator *)self containerViewController];
          [v26 popLastViewControllerAnimated:!IsReduceMotionEnabled];
        }

        else
        {
          v31 = [(ActionCoordinator *)self isRoutePlanningPresented];
          v26 = [(ActionCoordinator *)self containerViewController];
          if (v31)
          {
            [(ActionCoordinator *)self routePlanningOverviewViewController];
          }

          else
          {
            [(ActionCoordinator *)self routeSearchVC];
          }
          v32 = ;
          [v26 popLastViewControllerFromViewController:v32 animated:!IsReduceMotionEnabled useDefaultContaineeLayout:0];
        }
      }
    }

    incidentsVC = self->_incidentsVC;
    if (incidentsVC == v6)
    {
      [(RouteIncidentsViewController *)incidentsVC resetForDismiss];
    }

    routeSearchVC = self->_routeSearchVC;
    if (routeSearchVC == v6)
    {
      self->_routeSearchVC = 0;
    }

    goto LABEL_41;
  }

  [v6 dismissViewControllerAnimated:1 completion:0];
LABEL_42:
}

- (void)_presentMacRouteEditingWithEditRequired:(unint64_t)a3 index:(unint64_t)a4
{
  [(ActionCoordinator *)self presentRoutePlanningViewType:1];
  if (a3)
  {
    v9 = [self->_currentDirectionItem items];
    v7 = [(ActionCoordinator *)self routeSearchVC];
    [v7 updateWithItems:v9];

    if ([v9 count] > a4)
    {
      v8 = [(ActionCoordinator *)self routeSearchVC];
      [v8 selectFieldIndex:a4 beginEditing:1];
    }
  }
}

- (void)presentPreferredNetworksOnboardingForVehicle:(id)a3
{
  v4 = a3;
  v5 = sub_100798370();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = self;
    if (!v6)
    {
      v11 = @"<nil>";
      goto LABEL_10;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(ActionCoordinator *)v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_8;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_8:

LABEL_10:
    *buf = 138543874;
    v17 = v11;
    v18 = 2080;
    v19 = "[ActionCoordinator presentPreferredNetworksOnboardingForVehicle:]";
    v20 = 2112;
    v21 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] %s, vehicle: %@", buf, 0x20u);
  }

  v12 = [[PreferredNetworksOnboardingController alloc] initWithVehicle:v4];
  preferredNetworksOnboardingController = self->_preferredNetworksOnboardingController;
  self->_preferredNetworksOnboardingController = v12;

  v14 = self->_preferredNetworksOnboardingController;
  v15 = [(ActionCoordinator *)self containerViewController];
  [(PreferredNetworksOnboardingController *)v14 presentInViewController:v15 animated:1 completion:0];
}

- (void)presentVehicleOnboardingWithVehicles:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100798370();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self;
    if (!v9)
    {
      v14 = @"<nil>";
      goto LABEL_10;
    }

    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    if (objc_opt_respondsToSelector())
    {
      v12 = [(ActionCoordinator *)v9 performSelector:"accessibilityIdentifier"];
      v13 = v12;
      if (v12 && ![v12 isEqualToString:v11])
      {
        v14 = [NSString stringWithFormat:@"%@<%p, %@>", v11, v9, v13];

        goto LABEL_8;
      }
    }

    v14 = [NSString stringWithFormat:@"%@<%p>", v11, v9];
LABEL_8:

LABEL_10:
    *buf = 138543874;
    v20 = v14;
    v21 = 2080;
    v22 = "[ActionCoordinator presentVehicleOnboardingWithVehicles:completion:]";
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] %s, vehicles: %@", buf, 0x20u);
  }

  v15 = [[EVOnboardingController alloc] initWithUnpairedVehicles:v6];
  vehicleOnboardingController = self->_vehicleOnboardingController;
  self->_vehicleOnboardingController = v15;

  v17 = self->_vehicleOnboardingController;
  v18 = [(ActionCoordinator *)self containerViewController];
  [(EVOnboardingController *)v17 presentInViewController:v18 animated:1 completion:v7];
}

- (void)presentEditNoteViewControllerWithInitialText:(id)a3 libraryAccessProvider:(id)a4 placeMUID:(unint64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = objc_retainBlock(v12);
  noteEditorCompletionBlock = self->_noteEditorCompletionBlock;
  self->_noteEditorCompletionBlock = v13;

  v15 = [[_TtC4Maps27PlaceNoteEditViewController alloc] initWithNote:v10];
  objc_initWeak(&location, self);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10090D0D8;
  v19[3] = &unk_10162EBB0;
  objc_copyWeak(v22, &location);
  v16 = v11;
  v20 = v16;
  v22[1] = a5;
  v17 = v10;
  v21 = v17;
  [(PlaceNoteEditViewController *)v15 setDismissHandler:v19];
  v18 = [(ActionCoordinator *)self containerViewController];
  [v18 presentController:v15 animated:1];

  objc_destroyWeak(v22);
  objc_destroyWeak(&location);
}

- (void)_carPlayWantsToDisplayEVOnboarding:(id)a3
{
  v4 = a3;
  if ([(EVOnboardingController *)self->_vehicleOnboardingController state]< 1 || [(EVOnboardingController *)self->_vehicleOnboardingController state]> 4)
  {
    v5 = [v4 userInfo];
    v6 = [v5 objectForKeyedSubscript:@"EVOnboardingCarPlayVehicleKey"];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [v5 objectForKeyedSubscript:@"EVOnboardingCarPlayDictionaryKey"];
      if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v8 = sub_100798370();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v16 = v6;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "_carPlayWantsToDisplayEVOnboarding: will display onboarding for vehicle: %@", buf, 0xCu);
        }

        objc_initWeak(buf, self);
        v14 = v6;
        v9 = [NSArray arrayWithObjects:&v14 count:1];
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_10090D524;
        v11[3] = &unk_101661340;
        objc_copyWeak(&v13, buf);
        v7 = v7;
        v12 = v7;
        [(ActionCoordinator *)self presentVehicleOnboardingWithVehicles:v9 completion:v11];

        objc_destroyWeak(&v13);
        objc_destroyWeak(buf);
      }

      else
      {
        v10 = sub_100798370();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v16 = v5;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "_carPlayWantsToDisplayEVOnboarding: Received invalid dictionaryKey object through notification: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v7 = sub_100798370();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v16 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "_carPlayWantsToDisplayEVOnboarding: Received invalid vehicle object through notification: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v5 = sub_100798370();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "_carPlayWantsToDisplayEVOnboarding: will not present another CP onboarding as we have already presented one.", buf, 2u);
    }
  }
}

- (void)switchRoutePlanningTransportTypeToType:(int64_t)a3
{
  if (self->_routePlanningDataCoordinator)
  {
    v7 = [(ActionCoordinator *)self routePlanningDataCoordinator];
    [v7 updateTransportType:a3];
  }

  else
  {
    v4 = sub_10006D178();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v9 = "[ActionCoordinator switchRoutePlanningTransportTypeToType:]";
      v10 = 2080;
      v11 = "ActionCoordinator.m";
      v12 = 1024;
      v13 = 5638;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v5 = sub_10006D178();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v9 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }
}

- (void)refreshRoutePlanningTimingIfNeeded
{
  v3 = [(ActionCoordinator *)self containerViewController];
  v11 = [v3 currentOrPendingViewController];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = v11;
  if (isKindOfClass)
  {
    v6 = v11;
    v7 = [(ActionCoordinator *)self routePlanningDataCoordinator];
    v8 = [v7 routeCollection];
    v9 = [v8 currentRoute];

    if (v9)
    {
      v10 = [v9 shouldShowSchedule];
    }

    else
    {
      v10 = 0;
    }

    [v6 setShowArriveBy:v10 animated:1];

    v5 = v11;
  }
}

- (void)presentRoutePlanningViewType:(int64_t)a3
{
  v5 = sub_100798A3C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v34 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "presentRoutePlanningViewType: %ld", buf, 0xCu);
  }

  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  v7 = IsReduceMotionEnabled;
  v8 = 0;
  if (a3 > 3)
  {
    if (a3 > 5)
    {
      if (a3 != 6)
      {
        if (a3 == 7)
        {
          v9 = [(ActionCoordinator *)self autosharingVC];
          v23 = [(PlatformController *)self->_platformController currentSession];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24 = v23;
          }

          else
          {
            v24 = 0;
          }

          v25 = v24;

          v26 = [v25 automaticSharingContacts];

          if (v26)
          {
            v27 = v26;
          }

          else
          {
            v27 = &__NSArray0__struct;
          }

          [(RoutePlanningEbikeOptionsViewController *)v9 setContacts:v27];
        }

        else
        {
          v9 = 0;
          if (a3 != 8)
          {
LABEL_28:
            if ([(RoutePlanningEbikeOptionsViewController *)v9 modalPresentationStyle]== 7)
            {
              v19 = [(RoutePlanningEbikeOptionsViewController *)v9 popoverPresentationController];
              v20 = [v19 delegate];

              if (!v20)
              {
                v21 = [(RoutePlanningEbikeOptionsViewController *)v9 popoverPresentationController];
                [v21 setDelegate:self];
              }

              v22 = [(ActionCoordinator *)self containerViewController];
              [v22 _maps_topMostPresentViewController:v9 animated:!v7 completion:0];
            }

            else
            {
              v22 = [(ActionCoordinator *)self containerViewController];
              [v22 presentController:v9 animated:!v7 completion:v8];
            }

            return;
          }

          v10 = [RoutePlanningEbikeOptionsViewController alloc];
          v11 = [(ActionCoordinator *)self routePlanningDataCoordinator];
          v30[0] = _NSConcreteStackBlock;
          v30[1] = 3221225472;
          v30[2] = sub_10090DD0C;
          v30[3] = &unk_10162E5D0;
          v30[4] = self;
          v9 = [(RoutePlanningOptionsViewController *)v10 initWithDataCoordinator:v11 automaticallySaveChanges:0 completionHandler:v30];
        }

LABEL_27:
        v8 = 0;
        goto LABEL_28;
      }

      v18 = [(ActionCoordinator *)self routingAppsVC];
LABEL_26:
      v9 = v18;
      goto LABEL_27;
    }

    if (a3 == 4)
    {
      [(ActionCoordinator *)self routeOptionsVC];
    }

    else
    {
      [(ActionCoordinator *)self incidentsVC];
    }

    v18 = LABEL_19:;
    goto LABEL_26;
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      [(ActionCoordinator *)self routeStepsVC];
    }

    else
    {
      [(ActionCoordinator *)self timePickingVC];
    }

    goto LABEL_19;
  }

  if (!a3)
  {
    [(ActionCoordinator *)self _enterRoutePlanningOverviewAnimated:!IsReduceMotionEnabled completion:0];
    return;
  }

  v9 = 0;
  if (a3 != 1)
  {
    goto LABEL_28;
  }

  v12 = [(ActionCoordinator *)self routeSearchVC];
  [v12 setPauseSelectionUpdates:1];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10090DCCC;
  v31[3] = &unk_101661738;
  v13 = v12;
  v32 = v13;
  v8 = objc_retainBlock(v31);
  [v13 updateFieldsWithCurrentDirectionItem];
  if ((_UISolariumEnabled() & 1) != 0 || (-[ActionCoordinator containerViewController](self, "containerViewController"), v14 = objc_claimAutoreleasedReturnValue(), [v14 traitCollection], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "userInterfaceIdiom"), v15, v14, v16 != 5))
  {
    v28 = [(ActionCoordinator *)self containerViewController];
    [v28 removeControllerFromStack:v13];

    v9 = v13;
    v29 = +[MKMapService sharedService];
    [v29 captureUserAction:3006 onTarget:-[ActionCoordinator currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];

    goto LABEL_28;
  }

  if ([self->_currentDirectionItem transportType])
  {
    v17 = [(ActionCoordinator *)self routePlanningDataCoordinator];
    [v17 updateTransportType:{-[DirectionItem transportType](self->_currentDirectionItem, "transportType")}];
  }

  [(ActionCoordinator *)self _enterRoutePlanningOverviewAnimated:1 completion:v8];
}

- (void)presentMapsSettingInSettingsApp
{
  v2 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Apps/com.apple.Maps"];
  if (v2)
  {
    v3 = +[UIApplication sharedApplication];
    [v3 _maps_openURL:v2 options:0 completionHandler:0];
  }

  else
  {
    v3 = sub_100798A3C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Route Planning: Failed to create URL for Settings app", v4, 2u);
    }
  }
}

- (void)routePlanningUpdatedWaypoints:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v16 = v4;
    v5 = [(ActionCoordinator *)self containerViewController];
    v6 = [v5 currentViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v4 = v16;
    if (isKindOfClass)
    {
      v8 = [(ActionCoordinator *)self containerViewController];
      v9 = [v8 currentViewController];

      v10 = [v16 origin];
      v11 = [v10 geoMapItem];
      v12 = [v11 timezone];
      [v9 setOriginTimeZone:v12];

      v13 = [v16 destination];
      v14 = [v13 geoMapItem];
      v15 = [v14 timezone];
      [v9 setDestinationTimeZone:v15];

      v4 = v16;
    }
  }
}

- (void)_setRouteSelectionMapState
{
  if (self->_routePlanningDataCoordinator)
  {
    v3 = [(ActionCoordinator *)self mapSelectionManager];
    v4 = [v3 hasSelection];

    if (v4)
    {
      v5 = [(ActionCoordinator *)self mapSelectionManager];
      [v5 clearSelection];
    }

    [(ActionCoordinator *)self updateMapApplicationState:1];
    v6 = [(ActionCoordinator *)self routePlanningMapController];
    [v6 setSelectCurrentRoute:1];
  }
}

- (void)_cleanupRoutePlanningIfNeededAnimated:(BOOL)a3
{
  if (self->_routePlanningDataCoordinator)
  {
    v3 = a3;
    if ([(ActionCoordinator *)self isRoutePlanningPresented]|| [(ActionCoordinator *)self _isRoutePlanningTopMost])
    {
      if (![(ActionCoordinator *)self isRoutePlanningPresented])
      {
        v13 = sub_10006D178();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v16 = 136315906;
          v17 = "[ActionCoordinator _cleanupRoutePlanningIfNeededAnimated:]";
          v18 = 2080;
          v19 = "ActionCoordinator.m";
          v20 = 1024;
          v21 = 5487;
          v22 = 2080;
          v23 = "self.isRoutePlanningPresented";
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v16, 0x26u);
        }

        if (sub_100E03634())
        {
          v14 = sub_10006D178();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v15 = +[NSThread callStackSymbols];
            v16 = 138412290;
            v17 = v15;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@", &v16, 0xCu);
          }
        }
      }

      [(ActionCoordinator *)self setIsRoutePlanningPresented:0];
      v5 = [(ActionCoordinator *)self platformController];
      v6 = [v5 currentSession];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        v8 = [(ActionCoordinator *)self routePlanningMapController];
        [v8 clearMapState:v3];

        [(RoutePlanningMapController *)self->_routePlanningMapController restoreOriginalMapViewMode:v3];
        [(ActionCoordinator *)self updateMapApplicationState:0];
      }

      v9 = [(ActionCoordinator *)self routePlanningDataCoordinator];
      [v9 stop];

      v10 = [(ActionCoordinator *)self containerViewController];
      v11 = [v10 chromeViewController];
      [v11 setNeedsUpdateComponent:@"lookAroundButton" animated:1];
      goto LABEL_8;
    }
  }

  else
  {
    v12 = sub_10006D178();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315650;
      v17 = "[ActionCoordinator _cleanupRoutePlanningIfNeededAnimated:]";
      v18 = 2080;
      v19 = "ActionCoordinator.m";
      v20 = 1024;
      v21 = 5483;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v16, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v10 = sub_10006D178();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      v11 = +[NSThread callStackSymbols];
      v16 = 138412290;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@", &v16, 0xCu);
LABEL_8:

LABEL_9:
    }
  }
}

- (void)_exitRoutePlanningIfNeededAnimated:(BOOL)a3 restoreStashedMapSelection:(BOOL)a4
{
  if (self->_routePlanningDataCoordinator)
  {
    v4 = a4;
    v5 = a3;
    v7 = sub_100798A3C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v28 = 134349568;
      v29 = self;
      v30 = 1024;
      *v31 = v5;
      *&v31[4] = 1024;
      *&v31[6] = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] _exitRoutePlanningIfNeededAnimated: %d, restoreStashedMapSelection: %d", &v28, 0x18u);
    }

    if (![(ActionCoordinator *)self isRoutePlanningPresented]&& ![(ActionCoordinator *)self _isRoutePlanningTopMost])
    {
      v10 = sub_100798A3C();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v28 = 134349056;
        v29 = self;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}p] _exitRoutePlanningIfNeededAnimated: Route planning is not presented; ignoring", &v28, 0xCu);
      }

      goto LABEL_25;
    }

    if (![(ActionCoordinator *)self isRoutePlanningPresented])
    {
      v25 = sub_10006D178();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v28 = 136315906;
        v29 = "[ActionCoordinator _exitRoutePlanningIfNeededAnimated:restoreStashedMapSelection:]";
        v30 = 2080;
        *v31 = "ActionCoordinator.m";
        *&v31[8] = 1024;
        v32 = 5449;
        v33 = 2080;
        v34 = "self.isRoutePlanningPresented";
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v28, 0x26u);
      }

      if (sub_100E03634())
      {
        v26 = sub_10006D178();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = +[NSThread callStackSymbols];
          v28 = 138412290;
          v29 = v27;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%@", &v28, 0xCu);
        }
      }
    }

    [(ActionCoordinator *)self clearSearchIfOriginatedFromWaypointEditor];
    v8 = [(ActionCoordinator *)self routePlanningDataCoordinator];
    v9 = [v8 resolvedWaypointSet];
    v10 = [v9 destination];

    [(ActionCoordinator *)self _cleanupRoutePlanningIfNeededAnimated:v5];
    v11 = [(ActionCoordinator *)self routePlanningOverviewViewController];
    v12 = [(ActionCoordinator *)self currentViewController];
    v13 = [(ActionCoordinator *)self venueCardCoordinator];
    v14 = [v13 topViewController];

    if (v12 == v14)
    {
      v15 = [(ActionCoordinator *)self venueCardCoordinator];
      [v15 popVenueCardItem:0];
    }

    v16 = [(ActionCoordinator *)self containerViewController];
    [v16 popLastViewControllerFromViewController:v11 animated:v5 useDefaultContaineeLayout:0];

    if (!v4)
    {
LABEL_22:
      v23 = sub_100798A3C();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        LOWORD(v28) = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "_exitRoutePlanningIfNeededAnimated, deleting selection state", &v28, 2u);
      }

      routePlanningSelectionRestorationState = self->_routePlanningSelectionRestorationState;
      self->_routePlanningSelectionRestorationState = 0;

LABEL_25:
      return;
    }

    v17 = self->_routePlanningSelectionRestorationState;
    if (v17)
    {
      v18 = [(ActionCoordinator *)self mapSelectionManager];
      [v18 restoreSelectionState:v17 animated:v5];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
      v22 = sub_10000FA08(WeakRetained);

      if (v22 != 5)
      {
LABEL_21:

        goto LABEL_22;
      }
    }

    [(ActionCoordinator *)self viewController:0 selectLastDirectionsDestinationComposedWaypoint:v10];
    goto LABEL_21;
  }

  v19 = sub_10006D178();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v28 = 136315650;
    v29 = "[ActionCoordinator _exitRoutePlanningIfNeededAnimated:restoreStashedMapSelection:]";
    v30 = 2080;
    *v31 = "ActionCoordinator.m";
    *&v31[8] = 1024;
    v32 = 5442;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v28, 0x1Cu);
  }

  if (sub_100E03634())
  {
    v10 = sub_10006D178();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v20 = +[NSThread callStackSymbols];
      v28 = 138412290;
      v29 = v20;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@", &v28, 0xCu);
    }

    goto LABEL_25;
  }
}

- (void)_enterRoutePlanningOverviewAnimated:(BOOL)a3 saveMapCamera:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  if (self->_routePlanningDataCoordinator)
  {
    v72 = v6;
    [CATransaction setFrameStallSkipRequest:1];
    v9 = [(ActionCoordinator *)self routePlanningOverviewViewController];
    v10 = [(ActionCoordinator *)self currentViewController];

    v11 = sub_100798A3C();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = objc_retainBlock(v8);
      *buf = 134350082;
      v75 = self;
      v76 = 1024;
      *v77 = v6;
      *&v77[4] = 1024;
      *&v77[6] = v5;
      *v78 = 2112;
      *&v78[2] = v12;
      v79 = 1024;
      v80 = v10 != v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}p] _enterRoutePlanningOverviewAnimated: %d saveMapCamera: %d completion: %@ presentOverview: %d", buf, 0x28u);
    }

    if (v10 != v9 && ![self->_currentDirectionItem isVenueItem])
    {
      v13 = [(ActionCoordinator *)self currentViewController];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
        v15 = sub_10000FA08(WeakRetained);

        if (v15 != 5)
        {
          v16 = sub_100798A3C();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 134349056;
            v75 = self;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[%{public}p] _enterRoutePlanningOverviewAnimated, saving selection state", buf, 0xCu);
          }

          v17 = [(ActionCoordinator *)self mapSelectionManager];
          v18 = [v17 selectionStateIncludingCamera:v5 includeNotCustomLabelMarkers:1];
          routePlanningSelectionRestorationState = self->_routePlanningSelectionRestorationState;
          self->_routePlanningSelectionRestorationState = v18;

          goto LABEL_23;
        }
      }

      else
      {
      }
    }

    v17 = [(ActionCoordinator *)self platformController];
    v22 = [v17 previousSession];
    if (v22)
    {
      v23 = v22;
      v71 = v10;
      v24 = v9;
      v25 = [(ActionCoordinator *)self platformController];
      v26 = [v25 previousSession];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {

LABEL_22:
        v9 = v24;
        v10 = v71;
        goto LABEL_23;
      }

      v70 = v8;
      v27 = [(ActionCoordinator *)self platformController];
      v28 = [v27 previousSession];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {

        v8 = v70;
        goto LABEL_22;
      }

      v61 = [(ActionCoordinator *)self platformController];
      v62 = [v61 previousSession];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      v9 = v24;
      v8 = v70;
      v10 = v71;
      if (isKindOfClass)
      {
LABEL_24:
        v29 = [(ActionCoordinator *)self routePlanningDataCoordinator];
        v30 = [(ActionCoordinator *)self displayedViewMode]+ 1;
        if (v30 > 7)
        {
          v31 = 1;
        }

        else
        {
          v31 = dword_101215C80[v30];
        }

        v32 = MapsSuggestionsEngineForMapsProcess();
        [v32 setMapType:v31];

        v33 = +[CarDisplayController sharedInstance];
        [v33 updateMapsSuggestionsSignalForMapType:v31];

        if ([(ActionCoordinator *)self isRoutePlanningPresented])
        {
          v34 = 0;
        }

        else
        {
          v35 = [(ActionCoordinator *)self currentViewController];
          v34 = v35 == self->_routeSearchVC;
        }

        if (![(ActionCoordinator *)self isRoutePlanningPresented])
        {
          v36 = sub_100798A3C();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            *buf = 134349056;
            v75 = self;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "[%{public}p] _enterRoutePlanningOverviewAnimated: Route planning is not currently presented", buf, 0xCu);
          }

          v37 = objc_loadWeakRetained(&self->_containerViewController);
          v38 = sub_10000FA08(v37);

          if (v38 == 5)
          {
            v39 = [(ActionCoordinator *)self appCoordinator];
            [v39 closeSharedTrips];

            [(ActionCoordinator *)self clearSearch];
          }

          v40 = [(ActionCoordinator *)self containerViewController];
          v41 = [v40 topMostPresentedViewController];
          objc_opt_class();
          v42 = objc_opt_isKindOfClass();

          if (v42)
          {
            v43 = sub_1007984E4();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              v44 = [(ActionCoordinator *)self containerViewController];
              v45 = [v44 topMostPresentedViewController];
              *buf = 134349314;
              v75 = self;
              v76 = 2112;
              *v77 = v45;
              _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "[%{public}p] _enterRoutePlanningOverviewAnimated: Need to present a RoutePlanning VC but there is an SFSafariViewController (%@) present. Dismissing it first.", buf, 0x16u);
            }

            v73[0] = _NSConcreteStackBlock;
            v73[1] = 3221225472;
            v73[2] = sub_10090F1B0;
            v73[3] = &unk_101661B18;
            v73[4] = self;
            [UIViewController _performWithoutDeferringTransitions:v73];
          }

          [(ActionCoordinator *)self setIsRoutePlanningPresented:1];
          v46 = [(ActionCoordinator *)self displayedViewMode];
          v47 = [(ActionCoordinator *)self routePlanningMapController];
          [v47 saveOriginalMapViewModeAs:v46];

          [v29 refreshRidesharingOptionsIfVisible];
          v48 = objc_loadWeakRetained(&self->_containerViewController);
          v49 = sub_10000FA08(v48);

          if (v49 == 5)
          {
            [v29 refreshVirtualGarage];
          }

          [v29 setupDataForCurrentObservers];
        }

        v50 = sub_100798A3C();
        v51 = os_log_type_enabled(v50, OS_LOG_TYPE_INFO);
        if (v10 == v9)
        {
          if (v51)
          {
            *buf = 134349056;
            v75 = self;
            _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "[%{public}p] _enterRoutePlanningOverviewAnimated: Route planning is already presented; will update route selection map state", buf, 0xCu);
          }

          [(ActionCoordinator *)self _setRouteSelectionMapState];
          goto LABEL_58;
        }

        if (v51)
        {
          *buf = 134349312;
          v75 = self;
          v76 = 1024;
          *v77 = v34;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "[%{public}p] _enterRoutePlanningOverviewAnimated: Presenting route planning now with edited direction intent: %d", buf, 0x12u);
        }

        v52 = [(ActionCoordinator *)self currentViewController];
        routeSearchVC = self->_routeSearchVC;

        if (v52 == routeSearchVC)
        {
          v54 = self->_routeSearchVC;
          self->_routeSearchVC = 0;
        }

        [(ActionCoordinator *)self _setRouteSelectionMapState];
        if (v34)
        {
          v55 = [DirectionsHistoryRecordingHelper destinationGEOMapItemToRecordWithDirectionItem:self->_currentDirectionItem];
          if (v55)
          {
            [HistoryEntryRecentsItem saveGeoMapItem:v55];
          }

          v56 = [(ActionCoordinator *)self containerViewController];
          v57 = [(ActionCoordinator *)self containerViewController];
          v58 = [v57 currentViewController];
          [v56 popLastViewControllerFromViewController:v58 animated:v72 useDefaultContaineeLayout:0];
        }

        v59 = objc_loadWeakRetained(&self->_containerViewController);
        if (sub_10000FA08(v59) == 5 && ![v29 desiredTransportType])
        {
          v64 = [v29 requestState];

          if (v64)
          {
            goto LABEL_54;
          }

          v65 = [(ActionCoordinator *)self containerViewController];
          v66 = [v65 chromeViewController];
          v59 = [v66 defaultTransportTypeFinder];

          v67 = [v59 geoIdealTransportTypeForOrigin:0 destination:kCLLocationCoordinate2DInvalid.latitude ignoreMapType:{kCLLocationCoordinate2DInvalid.longitude, kCLLocationCoordinate2DInvalid.latitude, kCLLocationCoordinate2DInvalid.longitude}] - 1;
          if (v67 > 5)
          {
            v68 = 1;
          }

          else
          {
            v68 = qword_101216278[v67];
          }

          [v29 updateTransportType:v68];
        }

LABEL_54:
        v60 = objc_loadWeakRetained(&self->_containerViewController);
        [v60 presentController:v9 animated:v72 useDefaultContaineeLayout:1 completion:v8];

LABEL_58:
LABEL_59:

        goto LABEL_60;
      }

      v63 = sub_100798A3C();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
      {
        *buf = 134349056;
        v75 = self;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_INFO, "[%{public}p] _enterRoutePlanningOverviewAnimated, deleting selection state", buf, 0xCu);
      }

      v17 = self->_routePlanningSelectionRestorationState;
      self->_routePlanningSelectionRestorationState = 0;
    }

LABEL_23:

    goto LABEL_24;
  }

  v20 = sub_10006D178();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v75 = "[ActionCoordinator _enterRoutePlanningOverviewAnimated:saveMapCamera:completion:]";
    v76 = 2080;
    *v77 = "ActionCoordinator.m";
    *&v77[8] = 1024;
    *v78 = 5353;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
  }

  if (sub_100E03634())
  {
    v9 = sub_10006D178();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v21 = +[NSThread callStackSymbols];
      *buf = 138412290;
      v75 = v21;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    goto LABEL_59;
  }

LABEL_60:
}

- (void)routePlanningDataCoordinator:(id)a3 isEnabled:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (self->_routePlanningDataCoordinator)
  {
    if (v4)
    {
      v7 = [(ActionCoordinator *)self platformController];
      v8 = [v7 currentSession];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;

      v11 = [v6 directionItemForCurrentSession];
      if (![self->_currentDirectionItem isEquivalentAsWaypointToDirectionItem:v11])
      {
        objc_storeStrong(&self->_currentDirectionItem, v11);
      }

      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_10090F6D4;
      v31[3] = &unk_101661B18;
      v31[4] = self;
      v12 = objc_retainBlock(v31);
      if (v10)
      {
        v13 = [v10 configuration];
        v14 = [v13 shouldRestoreCamera];
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_10090F784;
        v29[3] = &unk_10165F438;
        v15 = &v30;
        v30 = v12;
        v16 = v12;
        [(ActionCoordinator *)self _enterRoutePlanningOverviewAnimated:1 saveMapCamera:v14 completion:v29];
      }

      else
      {
        v20 = [(ActionCoordinator *)self platformController];
        v21 = [v20 currentSession];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          v24 = sub_10006D178();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v33 = "[ActionCoordinator routePlanningDataCoordinator:isEnabled:]";
            v34 = 2080;
            v35 = "ActionCoordinator.m";
            v36 = 1024;
            v37 = 5334;
            v38 = 2080;
            v39 = "[self.platformController.currentSession isKindOfClass:[RideBookingPlanningSession class]]";
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
          }

          if (sub_100E03634())
          {
            v25 = sub_10006D178();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              v26 = +[NSThread callStackSymbols];
              *buf = 138412290;
              v33 = v26;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
            }
          }
        }

        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_10090F794;
        v27[3] = &unk_10165F438;
        v15 = &v28;
        v28 = v12;
        v23 = v12;
        [(ActionCoordinator *)self _enterRoutePlanningOverviewAnimated:1 completion:v27];
      }

      goto LABEL_21;
    }

    if ([(ActionCoordinator *)self isRoutePlanningPresented])
    {
      v10 = [(ActionCoordinator *)self currentViewController];
      [(ActionCoordinator *)self closeRoutePlanningViewController:v10 withSender:0];
LABEL_21:
    }
  }

  else
  {
    v17 = sub_10006D178();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v33 = "[ActionCoordinator routePlanningDataCoordinator:isEnabled:]";
      v34 = 2080;
      v35 = "ActionCoordinator.m";
      v36 = 1024;
      v37 = 5313;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v18 = sub_10006D178();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v33 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }
}

- (BOOL)_isRoutePlanningTopMost
{
  v2 = self;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v4 = [WeakRetained chromeViewController];
  v5 = [v4 topMostPresentedViewController];
  v6 = [(ActionCoordinator *)v2 routePlanningOverviewViewController];
  LOBYTE(v2) = v5 == v6;

  return v2;
}

- (void)handleVenueSearchResultsWithSelectedSearchResult:(id)a3 searchFieldItem:(id)a4 browseCategories:(id)a5
{
  v19 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [(ActionCoordinator *)self venueCardCoordinator];
  v11 = [v10 topViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = [v19 firstObject];
  [(VenuesManager *)self->_venuesManager displayFloorForSelectedSearchResult:v14];
  v15 = [v9 venueCategoryItem];

  v16 = [v15 isAutoCompleteCategory];
  if (v16)
  {
    v17 = [v13 contentDownloader];
    [v17 searchDidReceiveAutoCompleteSubcategories:v8];
  }

  v18 = [v13 contentDownloader];
  [v18 searchDidReceiveResults:v19];
}

- (void)receivedVenueEVChargersUpdate:(id)a3
{
  v10 = a3;
  v4 = [(ActionCoordinator *)self venueCardCoordinator];
  v5 = [v4 topViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [v7 contentDownloader];

    if (v8)
    {
      v9 = [v7 contentDownloader];
      [v9 searchDidReceiveEVChargerUpdates:v10];
    }
  }
}

- (void)updateSearchFieldWithSearchFieldItem:(id)a3
{
  v5 = a3;
  v4 = [(ActionCoordinator *)self searchModeViewController];
  [v4 updateSearchFieldWithItem:v5];

  [(SearchViewController *)self->_searchCardViewController updateSearchFieldWithItem:v5];
}

- (void)retainSearchQueryForSelectedSearchResult:(id)a3
{
  v4 = a3;
  v5 = [(ActionCoordinator *)self searchModeViewController];
  [v5 retainSearchQueryForSelectedSearchResult:v4];
}

- (void)presentLPRWithVehicle:(id)a3 scenario:(int64_t)a4 presenter:(id)a5 completionBlock:(id)a6
{
  v16 = a3;
  v10 = a5;
  v11 = a6;
  v12 = objc_alloc_init(LPRFlowController);
  lprOnboardingController = self->_lprOnboardingController;
  self->_lprOnboardingController = v12;

  v14 = self->_lprOnboardingController;
  if (v10)
  {
    [(LPRFlowController *)self->_lprOnboardingController presentLPRFlowWithVehicle:v16 scenario:a4 presenter:v10 completionBlock:v11];
  }

  else
  {
    v15 = [(ActionCoordinator *)self containerViewController];
    [(LPRFlowController *)v14 presentLPRFlowWithVehicle:v16 scenario:a4 presenter:v15 completionBlock:v11];
  }
}

- (void)updateResultsViewContent
{
  v3 = [(ActionCoordinator *)self resultsViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(ActionCoordinator *)self resultsViewController];
    v5 = [(ActionCoordinator *)self currentSearchSession];
    [v6 updateSearchSession:v5];
  }
}

- (void)updateFloatingControlsWithSearchSession:(id)a3
{
  v4 = a3;
  v6 = [(ActionCoordinator *)self containerViewController];
  v5 = [v6 floatingControlsPresentationController];
  [v5 setSearchSession:v4];
}

- (void)searchSessionManagerSessionDidFail
{
  [(ActionCoordinator *)self updateResultsViewContent];
  [(ActionCoordinator *)self updateRedoSearchFloatingControl:1];
  v3 = [(ActionCoordinator *)self venueCardCoordinator];
  v4 = [v3 topViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 contentDownloader];

  [v7 searchDidFail];
}

- (void)searchSessionManagerSessionDidInvalidate
{
  v3 = [(ActionCoordinator *)self venueCardCoordinator];
  v4 = [v3 topViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 contentDownloader];

  [v7 searchDidCancel];
  v13 = [(ActionCoordinator *)self currentViewController];
  v8 = [(ActionCoordinator *)self resultsViewController];
  if (v13 == v8)
  {

LABEL_9:
    v11 = [self->_addStopResultsViewController presentingViewController];

    if (v11)
    {
      addStopResultsViewController = self->_addStopResultsViewController;
    }

    else
    {
      [(ResultsViewController *)self->_resultsViewController searchDidCancel:1];
      addStopResultsViewController = self->_resultsViewController;
    }

    [(ActionCoordinator *)self containeeViewControllerGoToPreviousState:addStopResultsViewController withSender:0];
    return;
  }

  if (MapsFeature_IsEnabled_SearchAndDiscovery())
  {
    v9 = [(ActionCoordinator *)self currentViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      return;
    }

    goto LABEL_9;
  }
}

- (void)searchSessionManagerReceiveEVChargersUpdate:(id)a3
{
  v7 = a3;
  v4 = [(ActionCoordinator *)self resultsViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(ActionCoordinator *)self resultsViewController];
    [v6 refreshEVChargers:v7];
  }
}

- (BOOL)searchSessionShouldUpdateEVChargers
{
  v3 = [(ActionCoordinator *)self containerViewController];
  v4 = [v3 topMostPresentedViewController];
  v5 = [(ActionCoordinator *)self resultsViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)searchSessionManagerSessionDidReceiveUpdate
{
  [(ActionCoordinator *)self updateResultsViewContent];
  v3 = [(ActionCoordinator *)self appCoordinator];
  [v3 setNeedsUserActivityUpdate];

  [(ActionCoordinator *)self updateRedoSearchFloatingControl:0];
}

- (void)showAnnouncementForFlyover:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_initWeak(&location, self);
    v5 = [TopBannerItem alloc];
    v6 = [NSAttributedString alloc];
    v7 = [v4 announcement];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = &stru_1016631F0;
    }

    v10 = [v6 initWithString:v9];
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"Start" value:@"localized string not found" table:0];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1009102D4;
    v16[3] = &unk_10162EB88;
    objc_copyWeak(&v17, &location);
    v13 = [(TopBannerItem *)v5 initWithType:1 layout:0 userInfo:v4 attributedString:v10 icon:0 buttonText:v12 buttonAction:v16];

    v19 = v13;
    v14 = [NSArray arrayWithObjects:&v19 count:1];
    v15 = [(ActionCoordinator *)self containerViewController];
    [v15 updateTopBannerViewWithTopBannerItems:v14];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

- (void)updateRedoSearchFloatingControl:(BOOL)a3
{
  v5 = [(ActionCoordinator *)self resultsViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    v7 = sub_10000FA08(WeakRetained);

    if (v7 != 5)
    {
      return;
    }
  }

  v8 = [(ActionCoordinator *)self containerViewController];
  v9 = [v8 chromeViewController];
  v18 = [v9 redoSearchOverlay];

  v10 = [(ActionCoordinator *)self searchModeViewController];
  [v10 didUpdateSearchResults];

  v11 = [(ActionCoordinator *)self currentSearchSession];
  v12 = [v11 searchInfo];
  v13 = [v12 results];
  v14 = [v13 count];

  v15 = objc_loadWeakRetained(&self->_containerViewController);
  if (sub_10000FA08(v15) != 5)
  {

LABEL_9:
    v16 = 1;
    [v18 shouldHideFloatingControl:1 animated:1];
    goto LABEL_10;
  }

  v16 = 2;
  if (!a3)
  {
    v17 = v18;
    if (!v14)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

LABEL_10:
  v17 = v18;
LABEL_11:
  [v17 updateSearchOverlayWithState:v16];
}

- (void)actionControlDidDeactivate:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(ActionCoordinator *)self containerViewController];
    v7 = [v6 currentViewController];
    objc_opt_class();
    v8 = objc_opt_isKindOfClass();

    if (v8)
    {
      v9 = [(ActionCoordinator *)self lineCardVC];
      [(ActionCoordinator *)self viewControllerClosed:v9 animated:1];
    }

    v10 = [(ActionCoordinator *)self lineCardVC];
    [v10 resetNearestStation];
  }
}

- (void)zoomOut
{
  v3 = [(ActionCoordinator *)self mapView];
  [v3 startLinearZoomIn:0];

  v4 = [(ActionCoordinator *)self mapView];
  [NSObject cancelPreviousPerformRequestsWithTarget:v4 selector:"stopZoomingWithInertia" object:0];

  v5 = [(ActionCoordinator *)self mapView];
  [v5 performSelector:"stopZoomingWithInertia" withObject:0 afterDelay:0.3];
}

- (void)zoomIn
{
  v3 = [(ActionCoordinator *)self mapView];
  [v3 startLinearZoomIn:1];

  v4 = [(ActionCoordinator *)self mapView];
  [NSObject cancelPreviousPerformRequestsWithTarget:v4 selector:"stopZoomingWithInertia" object:0];

  v5 = [(ActionCoordinator *)self mapView];
  [v5 performSelector:"stopZoomingWithInertia" withObject:0 afterDelay:0.3];
}

- (void)defaultZoom
{
  v3 = [(ActionCoordinator *)self mapView];
  [v3 centerCoordinate];
  v5 = v4;
  v7 = v6;

  v8 = [(ActionCoordinator *)self mapView];
  [v8 setCenterCoordinate:1 zoomLevel:v5 animated:{v7, 16.0}];
}

- (BOOL)shouldShowSearchOverlay
{
  v3 = +[UIDevice currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 5)
  {
    if (MapsFeature_IsEnabled_SearchAndDiscovery())
    {
      v5 = [(ActionCoordinator *)self currentSearchSession];
      v6 = [v5 searchInfo];

      v7 = [(ActionCoordinator *)self currentViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      v9 = [v6 searchRedoButtonThreshold];
      if (v9 && ([v6 shouldAllowManualRedoButton] & 1) != 0)
      {
        v10 = 1;
      }

      else if ([v6 canRedoSearch])
      {
        v19 = [v6 searchAutoRedoThreshold];
        v10 = v19 != 0;
      }

      else
      {
        v10 = 0;
      }

      v20 = sub_100067540();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = @"NO";
        if (v10)
        {
          v21 = @"YES";
        }

        v22 = v21;
        v23 = [(ActionCoordinator *)self currentViewController];
        v24 = 138412546;
        v25 = v22;
        v26 = 2112;
        v27 = v23;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "[ActionCoordinator] Show search overlay %@, CurrentVC: %@", &v24, 0x16u);
      }

      v15 = isKindOfClass & v10;
    }

    else
    {
      v15 = 1;
    }

    return v15 & 1;
  }

  v11 = [(ActionCoordinator *)self currentViewController];
  objc_opt_class();
  v12 = objc_opt_isKindOfClass();

  v13 = [(ActionCoordinator *)self currentViewController];
  v14 = v13;
  if (v12)
  {
LABEL_11:
    v17 = [v13 shouldShowSearchOverlay];

    return v17;
  }

  objc_opt_class();
  v16 = objc_opt_isKindOfClass();

  if (v16)
  {
    v13 = [(ActionCoordinator *)self currentViewController];
    v14 = v13;
    goto LABEL_11;
  }

  v15 = 0;
  return v15 & 1;
}

- (void)refreshCurrentSearch
{
  v3 = [(ActionCoordinator *)self appCoordinator];
  v4 = [v3 chromeViewController];
  v5 = [v4 topContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return;
  }

  v7 = sub_100067540();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = [(ActionCoordinator *)self currentViewController];
    v25 = 138412290;
    v26 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[ActionCoordinator] Refreshing current search. CurrentVC: %@", &v25, 0xCu);
  }

  v9 = [(ActionCoordinator *)self resultsViewController];
  objc_opt_class();
  v10 = objc_opt_isKindOfClass();

  if ((v10 & 1) == 0)
  {
    v20 = [(ActionCoordinator *)self resultsViewController];
    objc_opt_class();
    v21 = objc_opt_isKindOfClass();

    if ((v21 & 1) == 0)
    {
      v23 = sub_100067540();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = [(ActionCoordinator *)self currentViewController];
        v25 = 138412290;
        v26 = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "[ActionCoordinator] Unable to refresh current search. CurrentVC: %@", &v25, 0xCu);
      }

      goto LABEL_17;
    }

    goto LABEL_11;
  }

  if (!MapsFeature_IsEnabled_SearchAndDiscovery())
  {
LABEL_11:
    v22 = [(ActionCoordinator *)self resultsViewController];
LABEL_16:
    v23 = v22;
    [v22 refreshCurrentSearch];
LABEL_17:

    return;
  }

  v11 = [(ActionCoordinator *)self containerViewController];
  v12 = [v11 chromeViewController];
  [v12 setNeedsUpdateComponent:@"floatingSearchButton" animated:1];

  v13 = [(ActionCoordinator *)self currentViewController];
  v14 = [(ActionCoordinator *)self searchModeViewController];
  v15 = v14;
  if (v13 == v14)
  {

LABEL_15:
    v22 = [(ActionCoordinator *)self currentViewController];
    goto LABEL_16;
  }

  v16 = [(ActionCoordinator *)self currentViewController];
  searchCardViewController = self->_searchCardViewController;

  if (v16 == searchCardViewController)
  {
    goto LABEL_15;
  }

  v18 = [(ActionCoordinator *)self currentViewController];
  v19 = [(ActionCoordinator *)self resultsViewController];

  if (v18 == v19)
  {
    goto LABEL_15;
  }
}

- (void)updateMapApplicationState:(int)a3
{
  v3 = *&a3;
  v6 = [(ActionCoordinator *)self containerViewController];
  v4 = [v6 chromeViewController];
  v5 = [v4 mapView];
  [v5 _setApplicationState:v3];
}

- (int)mapApplicationState
{
  v2 = [(ActionCoordinator *)self containerViewController];
  v3 = [v2 chromeViewController];
  v4 = [v3 mapView];
  v5 = [v4 _applicationState];

  return v5;
}

- (void)displayAlertWithTitle:(id)a3 message:(id)a4 postAlertSearchType:(unsigned int)a5
{
  v5 = *&a5;
  v8 = a4;
  v9 = a3;
  v12 = [(ActionCoordinator *)self containerViewController];
  v10 = [v12 chromeViewController];
  v11 = [v10 interruptionManager];
  [v11 displayAlertWithTitle:v9 message:v8 postAlertSearchType:v5];
}

- (void)setUserTrackingViewUserTrackingMode:(int64_t)a3
{
  v4 = [(ActionCoordinator *)self mapView];
  [v4 setUserTrackingMode:a3];
}

- (void)chromeViewController:(id)a3 didUpdateViewMode:(int64_t)a4
{
  v6 = a3;
  v7 = [(ActionCoordinator *)self containerViewController];
  v8 = [v7 chromeViewController];

  if (v8 == v6)
  {
    if (![(ActionCoordinator *)self isRoutePlanningPresented]|| !self->_routePlanningDataCoordinator)
    {
      v12 = [(ActionCoordinator *)self lineSelectionAction];
      v13 = [v12 isActive];

      if (a4 != 3 && v13)
      {
        v14 = [(ActionCoordinator *)self lineSelectionAction];
        [v14 deactivateWithContext:0];
      }

      goto LABEL_48;
    }

    v9 = [(ActionCoordinator *)self routePlanningDataCoordinator];
    v10 = [v9 transportType];
    if (!v10)
    {
      goto LABEL_45;
    }

    v11 = v10;
    if (a4 <= 7)
    {
      if (((1 << a4) & 0x67) != 0)
      {
        if (v10 == 3)
        {
          if (a4 == 3)
          {
            goto LABEL_24;
          }

LABEL_19:
          v15 = sub_100798408();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            if (a4 < 8 && ((0xEFu >> a4) & 1) != 0)
            {
              v16 = *(&off_10162EDE8 + a4);
            }

            else
            {
              v16 = [NSString stringWithFormat:@"<Unknown: %ld>", a4];
            }

            if ((v11 - 2) > 3)
            {
              v21 = @"Drive";
            }

            else
            {
              v21 = *(&off_10162EE90 + (v11 - 2));
            }

            *buf = 138543618;
            v37 = v16;
            v38 = 2114;
            v39 = v21;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "view mode %{public}@ isn't supported by transport type %{public}@; will attempt to replace the transport type", buf, 0x16u);
          }

          v26 = [(ActionCoordinator *)self containerViewController];
          v27 = [v26 chromeViewController];
          v28 = [v27 defaultTransportTypeFinder];

          objc_initWeak(buf, self);
          currentDirectionItem = self->_currentDirectionItem;
          v33[0] = _NSConcreteStackBlock;
          v33[1] = 3221225472;
          v33[2] = sub_1009113EC;
          v33[3] = &unk_10162EB60;
          objc_copyWeak(v35, buf);
          v35[1] = a4;
          v34 = v9;
          [v28 transportTypeForDirectionItem:currentDirectionItem ignoreMapType:0 completion:v33];

          objc_destroyWeak(v35);
          objc_destroyWeak(buf);
        }

LABEL_45:
        v30 = [(ActionCoordinator *)self settingsController];
        v31 = [v30 userRequestingViewModeChange];

        if (v31)
        {
          [(RoutePlanningMapController *)self->_routePlanningMapController saveOriginalMapViewModeAs:a4];
        }

LABEL_48:
        v32 = [(ActionCoordinator *)self placeCardViewController];
        [v32 updateForViewMode:a4];

        goto LABEL_49;
      }

      if (a4 == 3)
      {
        if (v10 == 3)
        {
          goto LABEL_45;
        }

LABEL_24:
        if (a4 == 3)
        {
          v17 = 3;
        }

        else
        {
          v17 = 1;
        }

        if (a4 == -1)
        {
          v18 = 0;
        }

        else
        {
          v18 = v17;
        }

        v19 = sub_100798408();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          if ((0x1DFu >> (a4 + 1)))
          {
            v20 = *(&off_10162EE28 + a4 + 1);
          }

          else
          {
            v20 = [NSString stringWithFormat:@"<Unknown: %ld>", a4];
          }

          v22 = v20;
          v23 = v22;
          if ((v11 - 2) > 3)
          {
            v24 = @"Drive";
          }

          else
          {
            v24 = *(&off_10162EE90 + (v11 - 2));
          }

          v25 = *(&off_10162EE70 + v18);
          *buf = 138543874;
          v37 = v22;
          v38 = 2114;
          v39 = v24;
          v40 = 2114;
          v41 = v25;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "view mode %{public}@ isn't supported by transport type %{public}@; will switch to default transport type %{public}@", buf, 0x20u);
        }

        [self->_currentDirectionItem setTransportType:v18];
        [v9 updateTransportType:v18];
        goto LABEL_45;
      }

      if (a4 == 7)
      {
        if (v10 == 1 || v10 == 4)
        {
          goto LABEL_45;
        }

        goto LABEL_24;
      }
    }

    if (a4 != -1)
    {
      goto LABEL_19;
    }

    goto LABEL_24;
  }

LABEL_49:
}

- (void)updateViewMode:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = [(ActionCoordinator *)self containerViewController];
  v6 = [v7 chromeViewController];
  [v6 updateViewMode:a3 animated:v4 preserveMapSelection:1];
}

- (void)setViewMode:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = [(ActionCoordinator *)self settingsController];
  v8 = [v7 bestMapViewModeForViewMode:a3];

  v9 = [(ActionCoordinator *)self settingsController];
  [v9 setMapViewMode:v8 animated:v4];
}

- (int64_t)displayedViewMode
{
  v2 = [(ActionCoordinator *)self containerViewController];
  v3 = [v2 chromeViewController];
  v4 = [v3 displayedViewMode];

  return v4;
}

- (void)select3dMode
{
  v3 = [(ActionCoordinator *)self mapView];
  v4 = [v3 _isPitched];

  if (!v4)
  {
    if (!+[SettingsController deviceSupportsGlobe])
    {
      v5 = [(ActionCoordinator *)self displayedViewMode];
      if (v5 == 1)
      {
        v6 = 5;
        goto LABEL_10;
      }

      if (v5 == 2)
      {
        v6 = 6;
LABEL_10:
        v7 = [(ActionCoordinator *)self settingsController];
        [v7 setMapViewMode:v6 animated:0];
      }
    }

    v8 = +[MKMapService sharedService];
    [v8 captureUserAction:5009 onTarget:-[ActionCoordinator currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];

    v9 = [(ActionCoordinator *)self mapView];
    [v9 _enter3DMode];

    self->_is3dModeSelected = 1;
    return;
  }

  [(ActionCoordinator *)self exit3dMode];
}

- (void)exit3dMode
{
  *&self->_is3dModeSelected = 256;
  v3 = [(ActionCoordinator *)self mapView];
  [v3 _exit3DMode];

  if (!+[SettingsController deviceSupportsGlobe])
  {
    v4 = [(ActionCoordinator *)self settingsController];
    v5 = [v4 in3DMode];

    v6 = [(ActionCoordinator *)self displayedViewMode];
    if (v6 != 5 || v5)
    {
      if ((v6 != 6) | v5 & 1)
      {
        goto LABEL_8;
      }

      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    v8 = [(ActionCoordinator *)self settingsController];
    [v8 setMapViewMode:v7 animated:0];
  }

LABEL_8:
  v9 = +[MKMapService sharedService];
  [v9 captureUserAction:5010 onTarget:-[ActionCoordinator currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];

  v10 = [(ActionCoordinator *)self containerViewController];
  [v10 refreshControls];
}

- (void)productViewController:(id)a3 didFinishWithResult:(int64_t)a4
{
  v6 = a3;
  v7 = [(ActionCoordinator *)self containerViewController];
  v8 = [v7 traitCollection];
  v9 = [v8 userInterfaceIdiom];

  if (v9)
  {
    v10 = [v6 presentingViewController];
    [v10 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    [v6 dismissViewControllerAnimated:1 completion:0];
  }

  v11 = [v6 clientIdentifier];

  v12 = [v11 isEqualToString:@"RidesharingStoreProductClientIdentifier"];
  if (a4 == 4 && v12)
  {
    v15 = [(ActionCoordinator *)self routePlanningDataCoordinator];
    v13 = [v15 rideOptionStateObserver];
    v14 = [v13 analyticsBookingSession];
    [v14 setInstalledApp:1];
  }
}

- (void)containeeViewController:(id)a3 didCreateKeyboardProxy:(id)a4
{
  v5 = a4;
  v6 = [(ActionCoordinator *)self searchModeViewController];
  [v6 keyboardProxyViewCreated:v5];
}

- (void)confirmDeleteSharedTripWithSummary:(id)a3 sourceView:(id)a4 sourceRect:(CGRect)a5 completion:(id)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v21 = a4;
  v13 = a6;
  v14 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v16 = [WeakRetained traitCollection];
  v17 = +[UIAlertController _maps_confirmationAlertControllerForBlockingTripInSummary:userInterfaceIdiom:completion:](UIAlertController, "_maps_confirmationAlertControllerForBlockingTripInSummary:userInterfaceIdiom:completion:", v14, [v16 userInterfaceIdiom], v13);

  if (v21)
  {
    v18 = [v17 popoverPresentationController];
    [v18 setSourceView:v21];

    v19 = [v17 popoverPresentationController];
    [v19 setSourceRect:{x, y, width, height}];
  }

  v20 = objc_loadWeakRetained(&self->_containerViewController);
  [v20 _maps_topMostPresentViewController:v17 animated:1 completion:0];
}

- (void)confirmDeleteCollections:(id)a3 sourceItem:(id)a4 sourceRect:(CGRect)a5 completion:(id)a6
{
  v16 = a4;
  v9 = a6;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v12 = [WeakRetained traitCollection];
  v13 = +[UIAlertController _maps_confirmationAlertControllerForDeletingCollections:userInterfaceIdiom:completion:](UIAlertController, "_maps_confirmationAlertControllerForDeletingCollections:userInterfaceIdiom:completion:", v10, [v12 userInterfaceIdiom], v9);

  if (v16)
  {
    v14 = [v13 popoverPresentationController];
    [v14 setSourceItem:v16];
  }

  v15 = objc_loadWeakRetained(&self->_containerViewController);
  [v15 _maps_topMostPresentViewController:v13 animated:1 completion:0];
}

- (void)deleteMarkedLocation:(id)a3
{
  v3 = [(ActionCoordinator *)self searchPinsManager];
  [v3 clearDroppedPin];

  v4 = +[CustomSearchManager sharedManager];
  [v4 setCustomSearchResult:0 animated:1 shouldSelectOnMap:0 context:@"__internal_MapsDroppedPinContextSwipe"];
}

- (void)presentAutosharingContactSearchWithContacts:(id)a3 selectionHandler:(id)a4
{
  v10 = a3;
  v6 = a4;
  if ([(ActionCoordinator *)self isRoutePlanningPresented])
  {
    v7 = [[ContactSearchViewController alloc] initWithInitialContacts:v10 selectionHandler:v6];
    v8 = [(ContaineeViewController *)v7 cardPresentationController];
    [v8 setPresentedModally:1];

    [(ContaineeViewController *)v7 setContaineeDelegate:self];
    v9 = [(ActionCoordinator *)self containerViewController];
    [v9 presentController:v7 animated:1];
  }
}

- (void)closeStopDetail
{
  v3 = [(ActionCoordinator *)self containerViewController];
  v4 = [v3 currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(ActionCoordinator *)self containerViewController];
    [v6 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)closeSharedTripDetail
{
  v2 = [(ActionCoordinator *)self containerViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (void)didSelectStopWithMapItem:(id)a3
{
  v4 = a3;
  v5 = [[PlaceCardItem alloc] initWithMapItem:v4];
  v6 = [(ActionCoordinator *)self containerViewController];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100912090;
  v9[3] = &unk_101661A40;
  v9[4] = self;
  v10 = v4;
  v11 = v5;
  v7 = v5;
  v8 = v4;
  [v6 dismissViewControllerAnimated:1 completion:v9];
}

- (void)didRequestDirectionsForSharedTrip:(id)a3
{
  v3 = [a3 destinationWaypointMapItem];
  v4 = [MKMapItem _itemWithGeoMapItem:v3];
  v9 = v4;
  v5 = [NSArray arrayWithObjects:&v9 count:1];
  v7 = MKLaunchOptionsDirectionsModeKey;
  v8 = MKLaunchOptionsDirectionsModeDefault;
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [MKMapItem openMapsWithItems:v5 launchOptions:v6 completionHandler:&stru_10162EB38];
}

- (void)_cancelUserInteractions
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v4 = [WeakRetained chromeViewController];
  v5 = [v4 view];
  v6 = [v5 isUserInteractionEnabled];

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_containerViewController);
    v8 = [v7 chromeViewController];
    v9 = [v8 view];
    [v9 setUserInteractionEnabled:0];

    v12 = objc_loadWeakRetained(&self->_containerViewController);
    v10 = [v12 chromeViewController];
    v11 = [v10 view];
    [v11 setUserInteractionEnabled:1];
  }
}

- (void)exitLookAround
{
  v2 = [(ActionCoordinator *)self appCoordinator];
  [v2 exitLookAround];
}

- (void)enterLookAroundWithEntryPoint:(id)a3 lookAroundView:(id)a4 showsFullScreen:(BOOL)a5 originFrame:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v10 = a5;
  v13 = a4;
  v14 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v16 = [WeakRetained chromeViewController];
  v17 = objc_loadWeakRetained(&self->_containerViewController);
  v18 = [v17 chromeContext];
  v19 = [v16 isTopContext:v18];

  if (v19)
  {
    [(ActionCoordinator *)self _cancelUserInteractions];
  }

  v20 = [(ActionCoordinator *)self appCoordinator];
  [v20 enterLookAroundWithEntryPoint:v14 lookAroundView:v13 showsFullScreen:v10 originFrame:{x, y, width, height}];
}

- (BOOL)shouldDismissPlaceCardOnClearMapSelection
{
  v2 = [(ActionCoordinator *)self containerViewController];
  v3 = [v2 chromeViewController];
  v4 = [v3 topContext];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0;
  }

  else
  {
    objc_opt_class();
    v5 = objc_opt_isKindOfClass() ^ 1;
  }

  return v5 & 1;
}

- (void)dismissPlaceCardViewController:(id)a3
{
  if (self->_placeCardViewController == a3)
  {
    v5 = a3;
    v6 = [(ActionCoordinator *)self containerViewController];
    [v6 popLastViewControllerFromViewController:v5 animated:1 useDefaultContaineeLayout:0];

    placeCardViewController = self->_placeCardViewController;
    self->_placeCardViewController = 0;
  }
}

- (BOOL)shouldReusePlaceCardViewController:(id)a3
{
  v4 = a3;
  v5 = [v4 presentingViewController];

  v6 = [(ActionCoordinator *)self currentViewController];

  return v6 == v4 || v5 == 0;
}

- (void)dismissLastVenuePlaceCard
{
  v3 = [(ActionCoordinator *)self venueCardCoordinator];
  v7 = [v3 topViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(ActionCoordinator *)self mapSelectionManager];
    [v4 clearSelection];

    v5 = [(ActionCoordinator *)self containerViewController];
    [v5 removeControllerFromStack:v7];

    v6 = [(ActionCoordinator *)self venueCardCoordinator];
    [v6 popVenueCardItem:0];
  }
}

- (void)closeVenueFloorCardViewController:(id)a3
{
  v7 = a3;
  v4 = [(ActionCoordinator *)self containerViewController];
  v5 = [v4 currentViewController];

  v6 = [(ActionCoordinator *)self containerViewController];
  if (v5 == v7)
  {
    [v6 popLastViewControllerFromViewController:v7 animated:1 useDefaultContaineeLayout:0];
  }

  else
  {
    [v6 removeControllerFromStack:v7];
  }
}

- (void)viewController:(id)a3 presentVenueFloorCardViewController:(id)a4
{
  v5 = a4;
  v6 = [(ActionCoordinator *)self containerViewController];
  [v6 presentController:v5 animated:1];
}

- (void)closeVenueViewController:(id)a3
{
  v4 = a3;
  v5 = [(ActionCoordinator *)self venueCardCoordinator];
  v6 = [v5 topViewController];

  if (v6 == v4)
  {
    v7 = [(ActionCoordinator *)self containerViewController];
    v8 = [v7 chromeViewController];
    [v8 setNeedsUpdateComponent:@"lookAroundButton" animated:1];

    v9 = [(ActionCoordinator *)self mapSelectionManager];
    [v9 clearSelection];

    v10 = [(ActionCoordinator *)self searchPinsManager];
    [v10 clearLinkedPlacesAndPolygon];

    v11 = [(ActionCoordinator *)self venueCardCoordinator];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100912988;
    v12[3] = &unk_10162EB18;
    v12[4] = self;
    v13 = v4;
    [v11 popVenueCardItem:v12];
  }
}

- (void)viewController:(id)a3 presentVenuesClusteredSearchResult:(id)a4
{
  v5 = a4;
  v6 = [(ActionCoordinator *)self venueCardCoordinator];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100912D74;
  v8[3] = &unk_10162EB18;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [v6 popVenueCardItem:v8];
}

- (void)viewController:(id)a3 selectVenueSearchResult:(id)a4 source:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(ActionCoordinator *)self currentSearchSession];
  v11 = [v10 currentResultsSearchInfo];
  v12 = [v11 shouldInjectSearchResults];

  if (v12)
  {
    v13 = [(ActionCoordinator *)self searchPinsManager];
    [v13 selectAndShowSearchResult:v9 animated:1];
  }

  else
  {
    [(ActionCoordinator *)self viewController:v8 selectSearchResult:v9 addToHistory:1 source:a5 saveSelectionState:1];
    v13 = [(ActionCoordinator *)self searchPinsManager];
    v15 = v9;
    v14 = [NSArray arrayWithObjects:&v15 count:1];
    [v13 setSearchPins:v14 selectedPin:v9 animated:1];
  }
}

- (void)viewController:(id)a3 presentPlacesWithPlacesCardItem:(id)a4 source:(unint64_t)a5
{
  v6 = a4;
  v7 = [(ActionCoordinator *)self mapSelectionManager];
  [v7 clearSelection];

  v8 = [(ActionCoordinator *)self searchPinsManager];
  [v8 clearLinkedPlacesAndPolygon];

  v9 = [PlaceCategoryItem alloc];
  v10 = [v6 searchCategory];
  v11 = [v6 mapItem];
  v12 = [v11 _muid];
  v13 = [v6 searchCategory];

  v15 = -[PlaceCategoryItem initWithSearchCategory:parentMuid:displayMode:](v9, "initWithSearchCategory:parentMuid:displayMode:", v10, v12, [v13 displayMode]);
  v14 = [SearchFieldItem searchFieldItemWithObject:v15];
  [(ActionCoordinator *)self viewController:0 doSearchItem:v14 withUserInfo:0];
}

- (void)viewController:(id)a3 presentVenueWithVenueCardItem:(id)a4 source:(unint64_t)a5
{
  v16 = a4;
  if ([v16 isVenueItem])
  {
    v7 = [(ActionCoordinator *)self venueCardCoordinator];
    [v7 pushVenueCardItem:v16 source:a5];

    v8 = [(ActionCoordinator *)self mapSelectionManager];
    [v8 clearSelection];

    v9 = [(ActionCoordinator *)self searchPinsManager];
    [v9 clearLinkedPlacesAndPolygon];

    v10 = [(ActionCoordinator *)self venueCardCoordinator];
    v11 = [v10 viewControllerForCardItem:v16];

    v12 = v11;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    [v14 setContaineeDelegate:self];
    [v14 setDelegate:self];
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    [WeakRetained presentController:v14 animated:1 useDefaultContaineeLayout:1];
  }
}

- (void)viewController:(id)a3 presentVenueForMapItem:(id)a4 searchCategory:(id)a5 source:(unint64_t)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[VenueSearchCardItem alloc] initWithMapItem:v11 searchCategory:v10];

  [(ActionCoordinator *)self viewController:v12 presentVenueWithVenueCardItem:v13 source:a6];
}

- (void)viewController:(id)a3 presentVenueFromAutoCompleteWithVenueIdentifier:(id)a4 searchCategory:(id)a5 source:(unint64_t)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[VenueAutoCompleteSearchCardItem alloc] initWithVenueIdentifier:v11 searchCategory:v10];

  [(ActionCoordinator *)self viewController:v12 presentVenueWithVenueCardItem:v13 source:a6];
}

- (void)viewController:(id)a3 dismissMenuControllerAnimated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained popLastViewControllerFromViewController:v6 animated:v4 useDefaultContaineeLayout:0];
}

- (void)viewController:(id)a3 presentMenuController:(id)a4 animated:(BOOL)a5 fromChrome:(BOOL)a6 completion:(id)a7
{
  v9 = a6;
  v10 = a5;
  v18 = a3;
  v13 = a4;
  v14 = a7;
  v15 = v18;
  if (v9)
  {
    v7 = [(ActionCoordinator *)self containerViewController];
    v15 = [v7 chromeViewController];
  }

  v16 = [v13 macMenuPresentationController];
  [v16 setContainerViewController:v15];

  if (v9)
  {
  }

  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained presentController:v13 animated:v10 completion:v14];
}

- (void)displayIncidentReportSubmissionWithItem:(id)a3 report:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [[NavTrafficIncidentReportSubmissionContaineeViewController alloc] initWithItem:v7 report:v6];

  [(ContaineeViewController *)v9 setContaineeDelegate:self];
  [(NavTrafficIncidentReportSubmissionContaineeViewController *)v9 setReportingDelegate:self];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained presentController:v9 animated:1 useDefaultContaineeLayout:1];
}

- (void)incidentReportSubmissionContaineeDidFinish:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained popLastViewControllerAnimated:1];
}

- (void)transitSchedulesViewController:(id)a3 wantsToShowInfoForLine:(id)a4
{
  v6 = a4;
  v9 = a3;
  v7 = [(ActionCoordinator *)self containerViewController];
  v8 = sub_10000FA08(v7) != 5;

  [(ActionCoordinator *)self viewController:v9 selectTransitLineItem:v6 zoomToMapRegion:v8];
}

- (void)viewController:(id)a3 displayTransitSchedulesForDepartureSequence:(id)a4 withTimeZone:(id)a5 scheduleWindowStartDate:(id)a6 includeAllDirections:(BOOL)a7
{
  v7 = a7;
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v15 = [[TransitSchedulesViewController alloc] initWithDepartureSequence:v13 timeZone:v12 scheduleWindowStartDate:v11 includeAllDirections:v7];

  [(TransitSchedulesViewController *)v15 setActionCoordinator:self];
  [(ContaineeViewController *)v15 setContaineeDelegate:self];
  [(TransitSchedulesViewController *)v15 setTransitSchedulesDelegate:self];
  [(ControlContaineeViewController *)v15 setDelegate:self];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained presentController:v15 animated:1 useDefaultContaineeLayout:0];

  [GEOAPPortal captureUserAction:21 target:[(ActionCoordinator *)self currentUITargetForAnalytics] value:0];
}

- (void)showNearbyTeachableMomentCard
{
  v3 = [(ActionCoordinator *)self containerViewController];
  v4 = [v3 currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = sub_10005F62C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v16 = 0;
      v7 = "The Nearby teachable moment card is already visible; can't show twice";
      v8 = &v16;
      v9 = v6;
      v10 = OS_LOG_TYPE_ERROR;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v9, v10, v7, v8, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v12 = [WeakRetained containerStyle];

  if ((v12 & 0xFFFFFFFFFFFFFFFDLL) == 4)
  {
    v6 = sub_100798A3C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v7 = "Not showing Nearby teachable moment card because the phone is in landscape";
      v8 = buf;
      v9 = v6;
      v10 = OS_LOG_TYPE_DEBUG;
      goto LABEL_7;
    }

LABEL_8:

    return;
  }

  v14 = objc_alloc_init(_TtC4Maps44NearbyTeachableMomentContaineeViewController);
  [(ContaineeViewController *)v14 setContaineeDelegate:self];
  v13 = [(ActionCoordinator *)self containerViewController];
  [v13 presentController:v14 animated:1];
}

- (void)viewControllerPresentNearbyTransitDepartures:(id)a3
{
  v4 = [(ActionCoordinator *)self containerViewController];
  v5 = sub_10000FA08(v4);

  if (v5 != 5 || ([(ActionCoordinator *)self currentViewController], v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v6, (isKindOfClass & 1) == 0))
  {
    v8 = [_TtC4Maps27NearbyTransitViewController alloc];
    v9 = [(ActionCoordinator *)self containerViewController];
    v10 = [v9 chromeViewController];
    v11 = [v10 mapView];
    v13 = [(NearbyTransitViewController *)v8 initWithMapView:v11 viewMode:[(ActionCoordinator *)self displayedViewMode]];

    [(ContaineeViewController *)v13 setContaineeDelegate:self];
    [(NearbyTransitViewController *)v13 setNearbyTransitDelegate:self];
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    [WeakRetained presentController:v13 animated:1 useDefaultContaineeLayout:0];
  }
}

- (void)viewController:(id)a3 displayTransitSchedulesForMapItem:(id)a4 departureSequence:(id)a5
{
  v7 = a5;
  v8 = a4;
  v10 = [[TransitSchedulesViewController alloc] initWithTransitMapItem:v8 departureSequence:v7];

  [(TransitSchedulesViewController *)v10 setActionCoordinator:self];
  [(ContaineeViewController *)v10 setContaineeDelegate:self];
  [(TransitSchedulesViewController *)v10 setTransitSchedulesDelegate:self];
  [(ControlContaineeViewController *)v10 setDelegate:self];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained presentController:v10 animated:1 useDefaultContaineeLayout:0];

  if ([(ActionCoordinator *)self isRoutePlanningPresented])
  {
    [(RoutePlanningMapController *)self->_routePlanningMapController setSelectCurrentRoute:0];
  }

  [GEOAPPortal captureUserAction:21 target:[(ActionCoordinator *)self currentUITargetForAnalytics] value:0];
}

- (BOOL)clusterIsPartOfVenues:(id)a3
{
  v4 = a3;
  v5 = [(ActionCoordinator *)self venueCardCoordinator];
  v6 = [v5 venueIdForCurrentCardStack];

  v20 = v6;
  if (v6)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = [v4 clusterFeatureAnnotations];
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v19 = v4;
      v10 = *v22;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          if ([v12 conformsToProtocol:{&OBJC_PROTOCOL___CustomPOIAnnotation, v19}])
          {
            v13 = [v12 searchResult];
            v14 = [v13 mapItem];
            v15 = [v14 _venueInfo];
            v16 = [v15 venueIdentifier];
            v17 = [v16 venueID];

            if (v17 != v20)
            {
              LOBYTE(v6) = 0;
              goto LABEL_13;
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }

      LOBYTE(v6) = 1;
LABEL_13:
      v4 = v19;
    }

    else
    {
      LOBYTE(v6) = 1;
    }
  }

  return v6;
}

- (void)showVLF
{
  v3 = [(ActionCoordinator *)self containerViewController];
  v4 = [v3 currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v15 = [(ActionCoordinator *)self containerViewController];
    v6 = [v15 currentViewController];
    [v6 handleVLFPuckTapped];
  }

  else
  {
    objc_initWeak(&location, self);
    v7 = [(ActionCoordinator *)self containerViewController];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100913EEC;
    v16[3] = &unk_1016619A8;
    objc_copyWeak(&v17, &location);
    v8 = [v7 showVLFCrowdsourcingPermissionCardWithContaineeDelegate:self delegate:self completion:v16];

    if ((v8 & 1) == 0)
    {
      v9 = [(ActionCoordinator *)self containerViewController];
      v10 = [v9 chromeViewController];
      v11 = [v10 userLocationView];

      if ([v11 isVLFBannerVisible])
      {
        v12 = 2;
      }

      else
      {
        v12 = [v11 isVLFPuckVisible];
      }

      v13 = [[VLFContaineeViewController alloc] initWithEntryPoint:v12];
      [(ContaineeViewController *)v13 setContaineeDelegate:self];
      v14 = [(ActionCoordinator *)self containerViewController];
      [v14 presentController:v13];
    }

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

- (void)viewController:(id)a3 presentCluster:(id)a4
{
  v30 = a4;
  if ([v30 isCluster])
  {
    v5 = [v30 clusterFeatureAnnotations];
    v6 = [v5 firstObject];

    if ([(ActionCoordinator *)self clusterIsPartOfVenues:v30])
    {
      v7 = [[LabelMarkerVenueCardItem alloc] initWithLabelMarker:v30];
      v8 = [(ActionCoordinator *)self venueCardCoordinator];
      v9 = [v8 topViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v11 = [(ActionCoordinator *)self venueCardCoordinator];
        [v11 popVenueCardItem:0];
      }

      v12 = [(ActionCoordinator *)self venueCardCoordinator];
      [v12 pushVenueCardItem:v7 source:5];

      v13 = [(ActionCoordinator *)self venueCardCoordinator];
      v14 = [v13 viewControllerForCardItem:v7];

      v15 = v14;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;

      [v17 setContaineeDelegate:self];
      [v17 setResultsDelegate:self];
      [v17 setEnableQuickActionMenu:1];
      [v17 setDisplayDistance:0];
      v18 = [v17 view];
      v19 = [(ActionCoordinator *)self currentSearchSession];
      v20 = [v19 searchInfo];
      [v17 setCluster:v30 sortAlphabetically:1 originalSearchInfo:v20];

      [(ActionCoordinator *)self presentSimpleList:v17];
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
LABEL_14:

        goto LABEL_15;
      }

      v21 = [(ActionCoordinator *)self simpleListResultsVC];
      v22 = [v21 cluster];

      if (v22 != v30)
      {
        v23 = [(ActionCoordinator *)self simpleListResultsVC];
        [v23 clearCluster];
      }

      v24 = [(ActionCoordinator *)self simpleListResultsVC];
      [v24 setDisplayDistance:1];

      v25 = [(ActionCoordinator *)self simpleListResultsVC];
      v26 = [(ResultsViewController *)self->_resultsViewController currentLocation];
      [v25 updateCurrentLocation:v26 isClusterResult:1];

      v27 = [(ActionCoordinator *)self simpleListResultsVC];
      v28 = [(ActionCoordinator *)self currentSearchSession];
      v29 = [v28 searchInfo];
      [v27 setCluster:v30 sortAlphabetically:0 originalSearchInfo:v29];

      v7 = [(ActionCoordinator *)self simpleListResultsVC];
      [(ActionCoordinator *)self presentSimpleList:v7];
    }

    goto LABEL_14;
  }

LABEL_15:
}

- (void)viewController:(id)a3 openWebsiteForSearchResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100914930;
  v35[3] = &unk_10162EAF0;
  v35[4] = self;
  v8 = v6;
  v36 = v8;
  v9 = objc_retainBlock(v35);
  v10 = [v7 mapItem];
  v11 = [v10 url];

  if (!v11)
  {
    if (![v7 isAddressBookResult])
    {
      goto LABEL_10;
    }

    v12 = [v7 address];
    v13 = [v12 contact];

    v14 = [v13 urlAddresses];
    v15 = [v14 count];

    v16 = [v13 urlAddresses];
    v17 = [v16 count];

    if (v15 == 1)
    {
      v18 = [v13 urlAddresses];
      v19 = [v18 lastObject];
      v20 = [v19 value];
      v21 = [NSURL URLWithString:v20];

      (v9[2])(v9, v21);
    }

    else
    {
      if (v17 < 2)
      {
LABEL_9:

        goto LABEL_10;
      }

      v22 = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:0];
      v23 = [v13 urlAddresses];
      v29 = _NSConcreteStackBlock;
      v30 = 3221225472;
      v31 = sub_100914940;
      v32 = &unk_10162EAC8;
      v33 = v22;
      v34 = v9;
      v21 = v22;
      [v23 enumerateObjectsUsingBlock:&v29];

      v24 = [NSBundle mainBundle:v29];
      v25 = [v24 localizedStringForKey:@"Cancel" value:@"localized string not found" table:0];
      v26 = [UIAlertAction actionWithTitle:v25 style:1 handler:0];
      [v21 addAction:v26];

      v27 = [(ActionCoordinator *)self containerViewController];
      v28 = [v27 chromeViewController];
      [v28 _maps_topMostPresentViewController:v21 animated:1 completion:0];
    }

    goto LABEL_9;
  }

  (v9[2])(v9, v11);
LABEL_10:
}

- (void)viewController:(id)a3 doAudioCallToSearchResult:(id)a4
{
  v5 = a4;
  v6 = [v5 mapItem];
  v7 = [v6 phoneNumber];

  if (v7 && (v8 = [(NSString *)v7 length]) != 0)
  {
    sub_100914DE0(v8, v7);
  }

  else if ([v5 isAddressBookResult])
  {
    v9 = [v5 address];
    v10 = [v9 contact];

    v11 = [v10 phoneNumbers];
    v12 = [v11 count];

    v13 = [v10 phoneNumbers];
    v14 = [v13 count];

    if (v12 == 1)
    {
      v15 = [v10 phoneNumbers];
      v16 = [v15 lastObject];
      v17 = [v16 value];

      v18 = [v17 stringValue];
      sub_100914DE0(v18, v18);
    }

    else if (v14 >= 2)
    {
      v19 = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:0];
      v20 = [v10 phoneNumbers];
      v27 = _NSConcreteStackBlock;
      v28 = 3221225472;
      v29 = sub_100914E48;
      v30 = &unk_10162EAC8;
      v31 = v19;
      v32 = &stru_10162EAA0;
      v21 = v19;
      [v20 enumerateObjectsUsingBlock:&v27];

      v22 = [NSBundle mainBundle:v27];
      v23 = [v22 localizedStringForKey:@"Cancel" value:@"localized string not found" table:0];
      v24 = [UIAlertAction actionWithTitle:v23 style:1 handler:0];
      [v21 addAction:v24];

      v25 = [(ActionCoordinator *)self containerViewController];
      v26 = [v25 chromeViewController];
      [v26 _maps_topMostPresentViewController:v21 animated:1 completion:0];
    }
  }
}

- (void)viewController:(id)a3 doShareSheetForShareItem:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 view];
  v12 = [MUPresentationOptions optionsWithSender:v10];

  v11 = [(ActionCoordinator *)self appCoordinator];
  [v11 shareItem:v9 presentationOptions:v12 completion:v8];
}

- (void)viewController:(id)a3 displayStoreViewControllerForAppWithiTunesIdentifier:(id)a4 clientIdentifier:(id)a5
{
  if (a4)
  {
    v7 = a5;
    v8 = a4;
    v9 = objc_alloc_init(SKStoreProductViewController);
    [v9 setDelegate:self];
    if (v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = &stru_1016631F0;
    }

    [v9 setClientIdentifier:v10];

    v14 = SKStoreProductParameterITunesItemIdentifier;
    v15 = v8;
    v11 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];

    [v9 loadProductWithParameters:v11 completionBlock:&stru_10162EA80];
    v12 = [(ActionCoordinator *)self containerViewController];
    v13 = [v12 chromeViewController];
    [v13 _maps_topMostPresentViewController:v9 animated:1 completion:0];
  }
}

- (void)viewController:(id)a3 editLocationOfMarkedLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[MarkedLocationRefinementViewController alloc] initWithMarkedLocation:v7];

  [(LocationRefinementViewController *)v8 setDelegate:self];
  [(MarkedLocationRefinementViewController *)v8 setOriginalPresenterViewController:v6];
  v9 = [[UINavigationController alloc] initWithRootViewController:v8];
  [v9 setModalPresentationStyle:2];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100915380;
  v17 = &unk_101661A90;
  v18 = self;
  v10 = v9;
  v19 = v10;
  v11 = objc_retainBlock(&v14);
  if (sub_10000FA08(v6) == 5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = v6;
    v13 = [v12 placeCardDelegate];
    [v13 placeCardViewController:v12 dismissAnimated:1 completion:v11];
  }

  else
  {
    (v11[2])(v11);
  }
}

- (void)viewController:(id)a3 createMarkedLocationAtCoordinate:(CLLocationCoordinate2D)a4 floorOrdinal:(int)a5
{
  v5 = *&a5;
  longitude = a4.longitude;
  latitude = a4.latitude;
  v17 = a3;
  v9 = [SearchResult customSearchResultWithCoordinate:v5 floorOrdinal:latitude, longitude];
  v10 = [(ActionCoordinator *)self containerViewController];
  v11 = [v10 chromeViewController];
  v12 = [v11 customSearchManager];
  v13 = [(ActionCoordinator *)self containerViewController];
  v14 = [v13 chromeViewController];
  v15 = [v14 mapView];
  [v12 setCustomSearchResult:v9 animated:1 shouldSelectOnMap:v15];

  if (v9)
  {
    v16 = [(ActionCoordinator *)self searchPinsManager];
    [v16 setDroppedPin:v9 animated:1 shouldSelect:1];

    [(ActionCoordinator *)self viewController:v17 selectSearchResult:v9 addToHistory:0 source:3 saveSelectionState:1];
  }
}

- (void)viewController:(id)a3 createDroppedPin:(id)a4
{
  v8 = a4;
  v6 = a3;
  if ([v8 hasFloorOrdinal])
  {
    v7 = [v8 floorOrdinal];
  }

  else
  {
    v7 = 0x7FFFFFFFLL;
  }

  [v8 coordinate];
  [(ActionCoordinator *)self viewController:v6 createMarkedLocationAtCoordinate:v7 floorOrdinal:?];
}

- (void)viewController:(id)a3 removeDroppedPin:(id)a4
{
  v12 = a3;
  v6 = a4;
  if (!v12)
  {
    v7 = [(ActionCoordinator *)self currentViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v9 = [(ActionCoordinator *)self currentViewController];
      v10 = [v9 placeCardItem];
      v11 = [v10 isDroppedPin];

      if (v11)
      {
        v12 = [(ActionCoordinator *)self currentViewController];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  [(ActionCoordinator *)self deleteMarkedLocation:v6];
  [(ActionCoordinator *)self viewControllerClosed:v12 animated:1];
}

- (void)viewControllerClosed:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v19 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(ActionCoordinator *)self searchPinsManager];
    [v6 clearLinkedPlacesAndPolygon];

    v7 = +[MUPlaceEnrichmentAPIController sharedPlaceEnrichmentAPIController];
    [v7 resetConfiguration];

    v8 = +[MUPlaceEnrichmentAPIController sharedPlaceEnrichmentAPIController];
    [v8 cancelFetchingPlaceEnrichment];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(ActionCoordinator *)self mapSelectionManager];
    [v9 clearSelection];

    [(ActionCoordinator *)self clearSearch];
    parkedCarViewController = self->_parkedCarViewController;
    self->_parkedCarViewController = 0;
  }

  [(ActionCoordinator *)self closeSettingsIfNeeded];
  if ([(SearchSessionManager *)self->_searchSessionManager singleResultMode])
  {
    v11 = +[UIDevice currentDevice];
    v12 = [v11 userInterfaceIdiom];

    if (v12 != 5)
    {
      [(ActionCoordinator *)self clearSearch];
    }
  }

  if (v19)
  {
    if (self->_placeCardForRoutePlanningViewController == v19)
    {
      [(ActionCoordinator *)self _setRouteSelectionMapState];
    }

    v13 = [(ActionCoordinator *)self venueCardCoordinator];
    v14 = [v13 topViewController];

    if (v14 == v19)
    {
      v15 = [(ActionCoordinator *)self venueCardCoordinator];
      [v15 popVenueCardItem:0];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ActionCoordinator *)self _cleanupRoutePlanningIfNeededAnimated:0];
  }

  v16 = [(ActionCoordinator *)self containerViewController];
  [v16 popLastViewControllerFromViewController:v19 animated:v4 useDefaultContaineeLayout:0];

  v17 = [(ActionCoordinator *)self containerViewController];
  v18 = [v17 viewIfLoaded];
  [v18 endEditing:1];
}

- (void)viewControllerOpenSettings:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v5 = [WeakRetained chromeViewController];
  v6 = objc_loadWeakRetained(&self->_containerViewController);
  v7 = [v6 chromeContext];
  v8 = [v5 isTopContext:v7];

  if (v8)
  {
    [(ActionCoordinator *)self _cancelUserInteractions];
    v9 = [(ActionCoordinator *)self mapView];
    [v9 setCompassEnabled:0];

    v10 = objc_loadWeakRetained(&self->_containerViewController);
    v11 = [(ActionCoordinator *)self settingsViewController];
    [v10 _maps_topMostPresentViewController:v11 animated:1 completion:0];

    v12 = objc_loadWeakRetained(&self->_containerViewController);
    [v12 setUseBackdropFullScreen:1];

    v13 = +[MKMapService sharedService];
    [v13 captureUserAction:5001 onTarget:-[ActionCoordinator currentMapViewTargetForAnalytics](self eventValue:{"currentMapViewTargetForAnalytics"), 0}];
  }
}

- (void)viewControllerOpenNearby:(id)a3 animated:(BOOL)a4
{
  [(ActionCoordinator *)self presentSearchAnimated:a4];
  v5 = [(ActionCoordinator *)self searchModeViewController];
  [v5 searchBarBecomeFirstResponder];
}

- (void)viewController:(id)a3 selectLastDirectionsDestinationComposedWaypoint:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_routePlanningDataCoordinator)
  {
    v8 = +[CarDisplayController sharedInstance];
    v9 = [v8 isCurrentlyConnectedToAnyCarScene];

    if (v9)
    {
      v10 = sub_100035E6C();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Asked to select destination for last direction item, but CarPlay is connected so we're skipping.", buf, 2u);
      }

LABEL_19:

      goto LABEL_38;
    }

    currentDirectionItem = self->_currentDirectionItem;
    if (!currentDirectionItem)
    {
      v10 = sub_100035E6C();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Asked to select destination for last direction item, but no direction item found", buf, 2u);
      }

      goto LABEL_19;
    }

    v14 = [currentDirectionItem items];
    v15 = [v14 count];

    if (v15 < 3)
    {
      if (v7)
      {
        v17 = [[SearchResult alloc] initWithComposedWaypoint:v7];
      }

      else
      {
        v18 = [self->_currentDirectionItem items];
        v19 = [v18 lastObject];

        v20 = [v19 waypoint];
        v17 = [v20 pin];
      }

      v21 = sub_100035E6C();
      v22 = v21;
      if (v17)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = v17;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Asked to select destination for last direction item: %@", buf, 0xCu);
        }

        v23 = [(ActionCoordinator *)self searchPinsManager];
        [v23 clearDirectionsPins];

        v24 = [(ActionCoordinator *)self containerViewController];
        v25 = sub_10000FA08(v24) == 5;

        if (v25)
        {
          v22 = [SearchFieldItem searchFieldItemWithObject:v17];
          [(ActionCoordinator *)self viewController:0 doSearchItem:v22 withUserInfo:0];
        }

        else
        {
          v28 = [(ActionCoordinator *)self searchPinsManager];
          v29 = [v28 canSelectPin:v17];

          v30 = [(ActionCoordinator *)self searchPinsManager];
          v31 = v30;
          if (v29)
          {
            [v30 selectAndShowSearchResult:v17 animated:1];
          }

          else
          {
            v48 = v17;
            v32 = [NSArray arrayWithObjects:&v48 count:1];
            [v31 setSearchPins:v32 selectedPin:v17 animated:1];
          }

          v33 = +[MKLocationManager sharedLocationManager];
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          LOBYTE(v47) = 0;
          v41[0] = _NSConcreteStackBlock;
          v41[1] = 3221225472;
          v41[2] = sub_100916108;
          v41[3] = &unk_10165CFA8;
          v45 = buf;
          v22 = v33;
          v42 = v22;
          v43 = v17;
          v44 = self;
          v34 = objc_retainBlock(v41);
          v35 = [v22 lastLocation];

          if (v35)
          {
            (v34[2])(v34);
          }

          else
          {
            v39[0] = _NSConcreteStackBlock;
            v39[1] = 3221225472;
            v39[2] = sub_100916268;
            v39[3] = &unk_10165D568;
            v36 = v34;
            v40 = v36;
            v37 = [v22 singleLocationUpdateWithHandler:v39];
            [v37 start];
            v38 = dispatch_time(0, 3000000000);
            dispatch_after(v38, &_dispatch_main_q, v36);
          }

          _Block_object_dispose(buf, 8);
        }
      }

      else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v26 = [self->_currentDirectionItem items];
        v27 = [v26 lastObject];
        *buf = 138412290;
        *&buf[4] = v27;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Asked to select destination for last direction item, but could not create SearchResult from item: %@", buf, 0xCu);
      }
    }

    else
    {
      v16 = sub_100035E6C();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Asked to select destination for last direction item, but it was MPR so popping to Home instead", buf, 2u);
      }

      [(ActionCoordinator *)self viewControllerPresentSearchEndEditing];
    }
  }

  else
  {
    v11 = sub_10006D178();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "[ActionCoordinator viewController:selectLastDirectionsDestinationComposedWaypoint:]";
      *&buf[12] = 2080;
      *&buf[14] = "ActionCoordinator.m";
      *&buf[22] = 1024;
      v47 = 4036;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v10 = sub_10006D178();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = +[NSThread callStackSymbols];
        *buf = 138412290;
        *&buf[4] = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      goto LABEL_19;
    }
  }

LABEL_38:
}

- (void)viewControllerDoLastDirectionItem:(id)a3
{
  if (self->_routePlanningDataCoordinator)
  {

    [(ActionCoordinator *)self _enterRoutePlanningOverviewAnimated:0 completion:0];
  }

  else
  {
    v3 = sub_10006D178();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315650;
      v7 = "[ActionCoordinator viewControllerDoLastDirectionItem:]";
      v8 = 2080;
      v9 = "ActionCoordinator.m";
      v10 = 1024;
      v11 = 4029;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v6, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v4 = sub_10006D178();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = +[NSThread callStackSymbols];
        v6 = 138412290;
        v7 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%@", &v6, 0xCu);
      }
    }
  }
}

- (void)viewController:(id)a3 enterRouteCreationWithRoute:(id)a4 withUserInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v11 = [(ActionCoordinator *)self newTraits];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100916588;
  v18[3] = &unk_10162EA38;
  v12 = v9;
  v19 = v12;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10091666C;
  v15[3] = &unk_10162EA60;
  objc_copyWeak(&v17, &location);
  v13 = v10;
  v16 = v13;
  v14 = [v12 _maps_convertToNavigableRouteWithTraits:v11 errorHandler:v18 completionHandler:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)viewController:(id)a3 enterRouteCreationWith:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [[GEORouteBuilder_PersistentData alloc] initWithPersistentData:v6];

  v8 = [v9 buildRoute];
  [(ActionCoordinator *)self viewController:v7 enterRouteCreationWithRoute:v8 withUserInfo:0];
}

- (void)_promptForEditRequired:(unint64_t)a3 forWaypointAtIndex:(unint64_t)a4 inDirectionItem:(id)a5 userInfo:(id)a6
{
  v10 = a5;
  v11 = a6;
  if (!a3)
  {
    goto LABEL_21;
  }

  v12 = [(ActionCoordinator *)self containerViewController];
  v13 = sub_10000FA08(v12);

  if (v13 == 5)
  {
    [(ActionCoordinator *)self _presentMacRouteEditingWithEditRequired:a3 index:a4];
    goto LABEL_21;
  }

  if (a3 - 2 < 2)
  {
    v17 = [v10 hasCurrentLocationOnlyAsOriginWaypoint];
    v14 = +[NSBundle mainBundle];
    v15 = v14;
    if (v17)
    {
      v16 = @"Choose Start";
    }

    else
    {
      v16 = @"Set Current Location";
    }
  }

  else if (a3 == 4)
  {
    v14 = +[NSBundle mainBundle];
    v15 = v14;
    v16 = @"Choose Destination";
  }

  else
  {
    if (a3 != 1)
    {
      v18 = 0;
      goto LABEL_13;
    }

    v14 = +[NSBundle mainBundle];
    v15 = v14;
    v16 = @"Choose Start";
  }

  v18 = [v14 localizedStringForKey:v16 value:@"localized string not found" table:0];

LABEL_13:
  if (qword_10195DD20 != -1)
  {
    dispatch_once(&qword_10195DD20, &stru_10162E9C0);
  }

  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_100907968;
  v39 = sub_100907978;
  v40 = 0;
  v19 = [RouteSearchViewController alloc];
  v20 = [v10 items];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100916B70;
  v29[3] = &unk_10162EA10;
  v29[4] = self;
  v32 = &v35;
  v30 = v10;
  v33 = a3;
  v34 = a4;
  v31 = v11;
  v21 = [(RouteSearchViewController *)v19 initWithDelegate:self items:v20 waypointIndex:a4 selectionHandler:v29];
  v22 = v36[5];
  v36[5] = v21;

  [v36[5] setTitle:v18];
  objc_storeStrong(&self->_routeSearchVC, v36[5]);
  if ([v36[5] modalPresentationStyle] == 7)
  {
    v23 = [v36[5] popoverPresentationController];
    v24 = [v23 delegate];

    if (!v24)
    {
      v25 = [v36[5] popoverPresentationController];
      [v25 setDelegate:self];
    }

    v26 = [(ActionCoordinator *)self containerViewController];
    [v26 _maps_topMostPresentViewController:v36[5] animated:1 completion:0];
  }

  else
  {
    v26 = [(ActionCoordinator *)self containerViewController];
    v27 = v36[5];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100916D34;
    v28[3] = &unk_101659998;
    v28[4] = &v35;
    v28[5] = a4;
    [v26 presentController:v27 animated:1 completion:v28];
  }

  _Block_object_dispose(&v35, 8);
LABEL_21:
}

- (void)_promptForCurrentLocationConfirmationWithDirectionItem:(id)a3 userInfo:(id)a4
{
  v28 = a3;
  v6 = a4;
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"Get Directions from Approximate Location" value:@"localized string not found" table:0];
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"Your current location can’t be used by Maps because of your privacy settings." value:@"localized string not found" table:0];
  v11 = [UIAlertController alertControllerWithTitle:v8 message:v10 preferredStyle:1];

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"Use Approximate Location" value:@"localized string not found" table:0];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100917174;
  v34[3] = &unk_10162E9A0;
  v14 = v6;
  v35 = v14;
  v36 = self;
  v15 = v11;
  v37 = v15;
  v16 = v28;
  v38 = v16;
  v17 = [UIAlertAction actionWithTitle:v13 style:0 handler:v34];

  [v15 addAction:v17];
  v18 = +[NSBundle mainBundle];
  v19 = [v18 localizedStringForKey:@"Choose Location" value:@"localized string not found" table:0];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100917208;
  v29[3] = &unk_10162E9A0;
  v30 = v14;
  v31 = self;
  v32 = v15;
  v33 = v16;
  v20 = v16;
  v21 = v15;
  v22 = v14;
  v23 = [UIAlertAction actionWithTitle:v19 style:0 handler:v29];

  [v21 addAction:v23];
  v24 = +[NSBundle mainBundle];
  v25 = [v24 localizedStringForKey:@"Cancel" value:@"localized string not found" table:0];
  v26 = [UIAlertAction actionWithTitle:v25 style:1 handler:0];

  [v21 addAction:v26];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained _maps_topMostPresentViewController:v21 animated:1 completion:0];
}

- (void)viewController:(id)a3 doDirectionItem:(id)a4 allowToPromptEditing:(BOOL)a5 withUserInfo:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (!GEOConfigGetBOOL())
  {
    v66 = [v12 objectForKeyedSubscript:@"SearchSessionTraits"];
    if (!v66)
    {
      v66 = [(ActionCoordinator *)self newTraits];
    }

    v14 = [v12 objectForKeyedSubscript:{@"SearchSessionTraitsSource", v66}];

    if (v14)
    {
      v15 = [v12 objectForKeyedSubscript:@"SearchSessionTraitsSource"];
      [v67 setSource:{objc_msgSend(v15, "integerValue")}];
    }

    v16 = [v11 items];
    v17 = [v16 copy];

    if ([(ActionCoordinator *)self isRoutePlanningPresented])
    {
      v18 = [(ActionCoordinator *)self routePlanningDataCoordinator];
      v19 = [v18 directionItemForCurrentSession];

      if (!v19)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v19 = self->_currentDirectionItem;
      if (!v19)
      {
        goto LABEL_13;
      }
    }

    v20 = [v12 objectForKeyedSubscript:@"DirectionsAppendContentsOfItem"];
    v21 = [v20 BOOLValue];

    if (v21)
    {
      v22 = [v11 items];
      v23 = [v22 firstObject];

      [(ActionCoordinator *)self viewController:v10 addStopForSearchFieldItem:v23 withUserInfo:v12];
LABEL_64:

      goto LABEL_65;
    }

LABEL_13:
    if (([v11 isEquivalentAsWaypointToDirectionItem:v19] & 1) == 0)
    {
      [(MKLocationManagerOperation *)self->_locationUpdateOperationForRouting cancel];
      v24 = [v11 copy];
      currentDirectionItem = self->_currentDirectionItem;
      self->_currentDirectionItem = v24;

      if ([self->_currentDirectionItem isVenueItem])
      {
        if (![(ActionCoordinator *)self isRoutePlanningPresented])
        {
          v26 = [(ActionCoordinator *)self venueCardCoordinator];
          [v26 pushVenueCardItem:self->_currentDirectionItem source:4];

          v27 = [(ActionCoordinator *)self searchPinsManager];
          [v27 clearLinkedPlacesAndPolygon];
        }
      }
    }

    if ([v17 count] == 1)
    {
      v28 = [v12 objectForKeyedSubscript:@"DirectionsAppendContentsOfItem"];
      v29 = [v28 BOOLValue];

      if ((v29 & 1) == 0)
      {
        v30 = sub_100798A3C();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = [v17 firstObject];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v31;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "DirectionItem unexpectedly had only 1 waypoint: %@", &buf, 0xCu);
        }
      }
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v75 = 0x2020000000;
    v76 = [v17 count] > 1;
    v69[0] = _NSConcreteStackBlock;
    v69[1] = 3221225472;
    v69[2] = sub_100917B20;
    v69[3] = &unk_10162E978;
    v70 = v17;
    p_buf = &buf;
    [v70 enumerateObjectsUsingBlock:v69];
    v32 = [v11 persistentData];
    if (v32)
    {
      v33 = [v11 persistentData];
      v34 = ([v33 source] & 0xFFFFFFFFFFFFFFFELL) == 2;
    }

    else
    {
      v34 = 0;
    }

    if (!v34 && (*(*(&buf + 1) + 24) & 1) != 0)
    {
      v39 = +[NSBundle mainBundle];
      v40 = [v39 localizedStringForKey:@"Cannot Provide Directions" value:@"localized string not found" table:0];
      v41 = +[NSBundle mainBundle];
      v42 = [v41 localizedStringForKey:@"Cannot get directions to and from the same location." value:@"localized string not found" table:0];
      [(ActionCoordinator *)self displayAlertWithTitle:v40 message:v42 postAlertSearchType:2];

LABEL_63:
      _Block_object_dispose(&buf, 8);
      goto LABEL_64;
    }

    v35 = [v12 objectForKeyedSubscript:@"DirectionsAllowApproximateCurrentLocation"];
    [v11 setAllowApproximateUserLocation:v35];

    v68 = 0x7FFFFFFFFFFFFFFFLL;
    v36 = [v11 editRequired:&v68];
    v37 = v36;
    if (v7 && v36)
    {
      if (v36 == 3)
      {
        v38 = [v12 objectForKeyedSubscript:@"SearchSessionTraitsSource"];
        if ([v38 integerValue] == 1)
        {

          goto LABEL_40;
        }

        v51 = [v12 objectForKeyedSubscript:@"DirectionsSourceKey"];
        v52 = [v51 integerValue] == 2;

        if (v52)
        {
LABEL_40:
          v53 = [v12 objectForKeyedSubscript:@"DirectionsAllowApproximateCurrentLocation"];
          v54 = v53 == 0;

          if (v54)
          {
            [(ActionCoordinator *)self _promptForCurrentLocationConfirmationWithDirectionItem:v11 userInfo:v12];
            goto LABEL_63;
          }
        }
      }

      [(ActionCoordinator *)self _promptForEditRequired:v37 forWaypointAtIndex:v68 inDirectionItem:v11 userInfo:v12];
      goto LABEL_63;
    }

    if (_UISolariumEnabled())
    {
      v43 = +[UIDevice currentDevice];
      v44 = v37 != 0;
      v45 = [v43 userInterfaceIdiom] != 5;

      if (!v45 || !v44)
      {
LABEL_34:
        v46 = [self->_currentDirectionItem transportType];
        v47 = sub_100798A3C();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          if ((v46 - 1) > 4)
          {
            v48 = @"Undefined";
          }

          else
          {
            v48 = *(&off_10162EEB0 + v46 - 1);
          }

          *v72 = 138412290;
          v73 = v48;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Initial transport type from direction item: %@", v72, 0xCu);
        }

        if (v46)
        {
          if (v46 == 4)
          {
            if (sub_100016C50())
            {
              v46 = 4;
            }

            else
            {
              v55 = sub_100798A3C();
              if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
              {
                *v72 = 0;
                _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "Detected rideshare transport type when ride booking is not enabled; changing to driving", v72, 2u);
              }

              v46 = 1;
            }
          }

          v56 = +[MapsSuggestionsPredictor sharedPredictor];
          v57 = v56;
          if ((v46 - 1) > 4)
          {
            v58 = 4;
          }

          else
          {
            v58 = dword_101216100[v46 - 1];
          }

          [v56 capturePredictedTransportationMode:v58];
        }

        [self->_currentDirectionItem setTransportType:v46];
        self->_visibleViewModeBeforeDoingDirectionItem = [(ActionCoordinator *)self displayedViewMode];
        v50 = [v12 mutableCopy];
        v59 = [v12 objectForKeyedSubscript:@"DirectionsSourceKey"];
        v60 = [v59 integerValue] == 5;

        if (v60)
        {
          v61 = 1;
        }

        else if (v10)
        {
          v61 = self->_routeSearchVC == v10;
        }

        else
        {
          v61 = 0;
        }

        v62 = [NSNumber numberWithBool:v61];
        [v50 setObject:v62 forKeyedSubscript:@"DisableNotReachableErrorInRoutePlanning"];

        v63 = [(ActionCoordinator *)self routePlanningDataCoordinator];
        v64 = self->_currentDirectionItem;
        v65 = [v50 copy];
        [v63 startWithDirectionItem:v64 traits:v67 userInfo:v65];

        goto LABEL_62;
      }
    }

    else if (!v37)
    {
      goto LABEL_34;
    }

    v49 = +[NSBundle mainBundle];
    v50 = [v49 localizedStringForKey:@"Cannot Provide Directions" value:@"localized string not found" table:0];

    [(ActionCoordinator *)self displayAlertWithTitle:v50 message:0 postAlertSearchType:2];
LABEL_62:

    goto LABEL_63;
  }

  v13 = [(ActionCoordinator *)self appCoordinator];
  [v13 enterRoutePlanningWithDirectionItem:v11 allowToPromptEditing:v7 withUserInfo:v12];

LABEL_65:
}

- (void)viewController:(id)a3 addStopForSearchFieldItem:(id)a4 withUserInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_routePlanningDataCoordinator)
  {
    if ([(ActionCoordinator *)self isRoutePlanningPresented]|| ([(RouteSearchViewController *)self->_routeSearchVC presentingViewController], (v11 = objc_claimAutoreleasedReturnValue()) == 0) || (v12 = v11, [(RouteSearchViewController *)self->_routeSearchVC dataCoordinator], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v13))
    {
      v14 = [(ActionCoordinator *)self routePlanningDataCoordinator];
      v15 = [v14 directionItemForCurrentSession];

      v16 = [v15 items];
      v17 = [NSMutableArray arrayWithArray:v16];

      v18 = [(RouteSearchViewController *)self->_routeSearchVC presentingViewController];
      if (!v18 || (v19 = v18, v20 = [(RouteSearchViewController *)self->_routeSearchVC _currentlySelectedIndexForAddStop], v19, v20 == 0x7FFFFFFFFFFFFFFFLL))
      {
        v21 = [v15 transportType];
        v20 = 0x7FFFFFFFFFFFFFFFLL;
        if (v21 > 1)
        {
          if (v21 == 2)
          {
            if (MapsFeature_IsEnabled_Maps182())
            {
LABEL_35:
              v29 = sub_100798A3C();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
              {
                LOWORD(v36) = 0;
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Performing fresh directions with added stop", &v36, 2u);
              }

              [v17 addObject:v9];
LABEL_38:
              v30 = [(ActionCoordinator *)self routePlanningDataCoordinator];
              v31 = [v30 transportType];

              v32 = [DirectionItem alloc];
              v33 = [v17 copy];
              v25 = [(DirectionItem *)v32 initWithItems:v33 transportType:v31];

              v34 = [v10 mutableCopy];
              [v34 setObject:0 forKeyedSubscript:@"DirectionsAppendContentsOfItem"];
              v35 = [v34 copy];
              [(ActionCoordinator *)self viewController:v8 doDirectionItem:v25 withUserInfo:v35];

              [(ActionCoordinator *)self clearSearch];
              goto LABEL_51;
            }
          }

          else if (v21 == 5 && (MapsFeature_IsEnabled_Maps420() & 1) != 0)
          {
            goto LABEL_35;
          }
        }

        else if (v21)
        {
          if (v21 == 1 && (MapsFeature_IsEnabled_DrivingMultiWaypointRoutes() & 1) != 0)
          {
            goto LABEL_35;
          }
        }

        else if ((MapsFeature_IsEnabled_DrivingMultiWaypointRoutes() & 1) != 0 || (MapsFeature_IsEnabled_Maps420() & 1) != 0 || MapsFeature_IsEnabled_Maps182())
        {
          goto LABEL_35;
        }
      }

      v23 = [v17 count];
      v24 = sub_100798A3C();
      v25 = v24;
      if (v20 < v23)
      {
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v36 = 134217984;
          v37 = v20;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Performing fresh directions with replaced stop at index %lu", &v36, 0xCu);
        }

        [v17 replaceObjectAtIndex:v20 withObject:v9];
        goto LABEL_38;
      }

      if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
LABEL_51:

        goto LABEL_52;
      }

      v26 = [v17 count];
      v27 = [v15 transportType];
      v28 = @"NO";
      if (v27 > 1)
      {
        if (v27 == 2)
        {
          if (MapsFeature_IsEnabled_Maps182())
          {
LABEL_49:
            v28 = @"YES";
            goto LABEL_50;
          }

          goto LABEL_47;
        }

        if (v27 != 5)
        {
          goto LABEL_50;
        }

        if (MapsFeature_IsEnabled_Maps420())
        {
          goto LABEL_49;
        }
      }

      else
      {
        if (v27)
        {
          if (v27 == 1)
          {
            if (MapsFeature_IsEnabled_DrivingMultiWaypointRoutes())
            {
              goto LABEL_49;
            }

            goto LABEL_47;
          }

LABEL_50:
          v36 = 134218498;
          v37 = v20;
          v38 = 2048;
          v39 = v26;
          v40 = 2112;
          v41 = v28;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Will not add or replace stop, index out of bounds (%lu/%lu) or not permitted (mpr permitted: %@)", &v36, 0x20u);
          goto LABEL_51;
        }

        if ((MapsFeature_IsEnabled_DrivingMultiWaypointRoutes() & 1) != 0 || (MapsFeature_IsEnabled_Maps420() & 1) != 0 || MapsFeature_IsEnabled_Maps182())
        {
          goto LABEL_49;
        }
      }

LABEL_47:
      v28 = @"NO";
      goto LABEL_50;
    }

    [(RouteSearchViewController *)self->_routeSearchVC replaceSelectedFieldWithItem:v9];
  }

  else
  {
    v22 = sub_10006D178();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v36 = 136315650;
      v37 = "[ActionCoordinator viewController:addStopForSearchFieldItem:withUserInfo:]";
      v38 = 2080;
      v39 = "ActionCoordinator.m";
      v40 = 1024;
      LODWORD(v41) = 3725;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v36, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v15 = sub_10006D178();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
LABEL_53:

        goto LABEL_54;
      }

      v17 = +[NSThread callStackSymbols];
      v36 = 138412290;
      v37 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@", &v36, 0xCu);
LABEL_52:

      goto LABEL_53;
    }
  }

LABEL_54:
}

- (void)viewController:(id)a3 addStopForSearchResult:(id)a4 withUserInfo:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (self->_routePlanningDataCoordinator)
  {
    v10 = [SearchFieldItem searchFieldItemWithObject:a4];
    [(ActionCoordinator *)self viewController:v8 addStopForSearchFieldItem:v10 withUserInfo:v9];
  }

  else
  {
    v11 = sub_10006D178();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315650;
      v15 = "[ActionCoordinator viewController:addStopForSearchResult:withUserInfo:]";
      v16 = 2080;
      v17 = "ActionCoordinator.m";
      v18 = 1024;
      v19 = 3719;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v14, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v12 = sub_10006D178();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = +[NSThread callStackSymbols];
        v14 = 138412290;
        v15 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@", &v14, 0xCu);
      }
    }
  }
}

- (void)viewController:(id)a3 doDirectionIntentWithLocalSearchCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(DirectionIntentItemProvider);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100918360;
  v10[3] = &unk_10162E950;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [(DirectionIntentItemProvider *)v8 directionItemWithLocalSearchCompletion:v7 completion:v10];
}

- (void)viewController:(id)a3 doDirectionIntent:(id)a4 withSearchResults:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = objc_alloc_init(DirectionIntentItemProvider);
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_1009185E8;
  v22 = &unk_10162E950;
  v23 = self;
  v12 = v8;
  v24 = v12;
  [(DirectionIntentItemProvider *)v11 directionItemWithDirectionIntent:v10 searchResults:v9 completion:&v19];

  if (qword_10195DF00 != -1)
  {
    dispatch_once(&qword_10195DF00, &stru_1016303F0);
  }

  v13 = byte_10195DF08;
  v14 = [(ActionCoordinator *)self containerViewController:v19];
  v15 = v14;
  if (v13 != 1)
  {
    p_resultsViewController = &self->_resultsViewController;
    goto LABEL_7;
  }

  v16 = [v14 currentViewController];
  p_resultsViewController = &self->_resultsViewController;
  resultsViewController = self->_resultsViewController;

  if (v16 != resultsViewController)
  {
    v15 = [(ActionCoordinator *)self containerViewController];
LABEL_7:
    [v15 removeControllerFromStack:*p_resultsViewController];
  }
}

- (void)dismissRoutePlanningPlaceCardIfNeeded
{
  if (self->_routePlanningDataCoordinator)
  {
    if (![(ActionCoordinator *)self isRoutePlanningPresented])
    {
      return;
    }

    v14 = self->_placeCardForRoutePlanningViewController;
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    v4 = [WeakRetained currentViewController];
    if (v4)
    {
      v5 = v4;
      v6 = objc_loadWeakRetained(&self->_containerViewController);
      v7 = [v6 currentViewController];

      v8 = v14;
      if (v7 != v14)
      {
        goto LABEL_17;
      }

      v9 = [(ActionCoordinator *)self mapSelectionManager];
      [v9 clearSelectionAnimated:1];

      WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
      if (sub_10000FA08(WeakRetained) == 5)
      {
        v10 = [(ActionCoordinator *)self currentSearchSession];

        v8 = v14;
        if (v10)
        {
          [(ActionCoordinator *)self clearSearch];
LABEL_16:
          v8 = v14;
        }

LABEL_17:

        return;
      }
    }

    goto LABEL_16;
  }

  v11 = sub_10006D178();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v16 = "[ActionCoordinator dismissRoutePlanningPlaceCardIfNeeded]";
    v17 = 2080;
    v18 = "ActionCoordinator.m";
    v19 = 1024;
    v20 = 3646;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
  }

  if (sub_100E03634())
  {
    v12 = sub_10006D178();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = +[NSThread callStackSymbols];
      *buf = 138412290;
      v16 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }
}

- (void)toggleRoutePlanning
{
  if (self->_routePlanningDataCoordinator)
  {
    v3 = [(ActionCoordinator *)self routePlanningDataCoordinator];
    v4 = [v3 isSuspended];

    v5 = [(ActionCoordinator *)self routePlanningDataCoordinator];
    v14 = v5;
    if (v4)
    {
      [v5 resume];
LABEL_12:

      return;
    }

    v9 = [v5 isEnabled];

    if (v9)
    {
      v14 = [(ActionCoordinator *)self routePlanningDataCoordinator];
      [v14 suspend];
      goto LABEL_12;
    }

    if ([(ActionCoordinator *)self isRoutePlanningPresented])
    {
      currentDirectionItem = self->_currentDirectionItem;
      self->_currentDirectionItem = 0;

      v11 = !UIAccessibilityIsReduceMotionEnabled();

      [(ActionCoordinator *)self _exitRoutePlanningIfNeededAnimated:v11 restoreStashedMapSelection:1];
    }

    else
    {
      [(ActionCoordinator *)self routeSearchVC];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100918BE4;
      v16 = v15[3] = &unk_101661738;
      v12 = v16;
      v13 = objc_retainBlock(v15);
      [(ActionCoordinator *)self _enterRoutePlanningOverviewAnimated:1 completion:v13];
    }
  }

  else
  {
    v6 = sub_10006D178();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v18 = "[ActionCoordinator toggleRoutePlanning]";
      v19 = 2080;
      v20 = "ActionCoordinator.m";
      v21 = 1024;
      v22 = 3627;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v7 = sub_10006D178();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v18 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }
}

- (BOOL)shouldAddStopInRoutePlanning
{
  if (!self->_routePlanningDataCoordinator)
  {
    v5 = sub_10006D178();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315650;
      v10 = "[ActionCoordinator shouldAddStopInRoutePlanning]";
      v11 = 2080;
      v12 = "ActionCoordinator.m";
      v13 = 1024;
      v14 = 3620;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v9, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v6 = sub_10006D178();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = +[NSThread callStackSymbols];
        v9 = 138412290;
        v10 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%@", &v9, 0xCu);
      }
    }

    return 0;
  }

  if ([(ActionCoordinator *)self isRoutePlanningPresented])
  {
    v3 = [(ActionCoordinator *)self routePlanningDataCoordinator];
    v4 = [v3 canAddStop];
  }

  else
  {
    v4 = [self->_currentDirectionItem canAddStop];
  }

  if (![(ActionCoordinator *)self _isBuildingMultipointRoute]&& ![(ActionCoordinator *)self isPresentingAddStopSearchResults])
  {
    return 0;
  }

  return v4;
}

- (BOOL)_isBuildingMultipointRoute
{
  if (self->_routePlanningDataCoordinator)
  {
    if ([(ActionCoordinator *)self isRoutePlanningPresented]|| ([(RouteSearchViewController *)self->_routeSearchVC presentingViewController], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
    {
      if ([(ActionCoordinator *)self isRoutePlanningPresented])
      {
        v4 = [(ActionCoordinator *)self routePlanningDataCoordinator];
        v5 = [v4 transportType];
      }

      else
      {
        v5 = [self->_currentDirectionItem transportType];
      }

      if ([(ActionCoordinator *)self isRoutePlanningPresented])
      {
        v10 = [(ActionCoordinator *)self routePlanningDataCoordinator];
        v11 = [v10 waypointRequests];
        v12 = [v11 count];
      }

      else
      {
        v10 = [self->_currentDirectionItem items];
        v12 = [v10 count];
      }

      LOBYTE(v7) = 0;
      if (v5 > 1)
      {
        if (v5 != 2)
        {
          if (v5 == 5)
          {
            LOBYTE(v7) = MapsFeature_IsEnabled_Maps420();
          }

          goto LABEL_28;
        }
      }

      else
      {
        if (v5)
        {
          if (v5 == 1)
          {
            LOBYTE(v7) = MapsFeature_IsEnabled_DrivingMultiWaypointRoutes();
          }

          goto LABEL_28;
        }

        if (MapsFeature_IsEnabled_DrivingMultiWaypointRoutes() & 1) != 0 || (MapsFeature_IsEnabled_Maps420())
        {
          LOBYTE(v7) = 1;
          goto LABEL_28;
        }
      }

      LOBYTE(v7) = MapsFeature_IsEnabled_Maps182();
LABEL_28:
      if (!v12)
      {
        LOBYTE(v7) = 0;
      }

      return v7;
    }

LABEL_12:
    LOBYTE(v7) = 0;
    return v7;
  }

  v6 = sub_10006D178();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v14 = 136315650;
    v15 = "[ActionCoordinator _isBuildingMultipointRoute]";
    v16 = 2080;
    v17 = "ActionCoordinator.m";
    v18 = 1024;
    v19 = 3608;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v14, 0x1Cu);
  }

  v7 = sub_100E03634();
  if (v7)
  {
    v8 = sub_10006D178();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = +[NSThread callStackSymbols];
      v14 = 138412290;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@", &v14, 0xCu);
    }

    goto LABEL_12;
  }

  return v7;
}

- (void)viewController:(id)a3 selectClientResolvedItem:(id)a4 fromSearchInfo:(id)a5 withUserInfo:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a6)
  {
    v13 = [a6 mutableCopy];
  }

  else
  {
    v13 = +[NSMutableDictionary dictionary];
  }

  v14 = v13;
  [v13 setObject:&__kCFBooleanTrue forKeyedSubscript:@"SearchSessionShouldReuseSearchSession"];
  v15 = [v14 copy];
  v16 = objc_alloc_init(ClientTypeResolver);
  v17 = [v11 itemType];
  if (v17 > 3)
  {
    switch(v17)
    {
      case 4:
        v22 = [(ActionCoordinator *)self userLocationSearchResult];

        if (!v22)
        {
          goto LABEL_19;
        }

        v23 = [(ActionCoordinator *)self userLocationSearchResult];
        v24 = [SearchFieldItem searchFieldItemWithObject:v23];

        [(ActionCoordinator *)self viewController:0 doSearchItem:v24 withUserInfo:v15];
        break;
      case 5:
        v25 = [v11 resultIndex];
        v24 = [v12 results];
        if (v25 < [v24 count])
        {
          v26 = [v12 results];
          v27 = [v26 objectAtIndexedSubscript:{objc_msgSend(v11, "resultIndex")}];

          if (!v27)
          {
            goto LABEL_19;
          }

          v28 = [SearchFieldItem searchFieldItemWithObject:v27];
          [(ActionCoordinator *)self viewController:0 doSearchItem:v28 withUserInfo:v15];

          v24 = v27;
        }

        break;
      case 6:
LABEL_11:
        v20 = [(ClientTypeResolver *)v16 personalizedItemSource];
        v21 = [v11 itemType];
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_100919308;
        v31[3] = &unk_10162E928;
        v31[4] = self;
        v32 = v15;
        [v20 addressOrLOIWithType:v21 completion:v31];

        v19 = v32;
        goto LABEL_12;
      default:
        goto LABEL_19;
    }

    goto LABEL_19;
  }

  if ((v17 - 1) < 2)
  {
    goto LABEL_11;
  }

  if (v17 == 3)
  {
    v18 = [(ClientTypeResolver *)v16 parkedCarSource];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1009193FC;
    v29[3] = &unk_101658E78;
    v29[4] = self;
    v30 = v10;
    [v18 objectWithCompletion:v29];

    v19 = v30;
LABEL_12:
  }

LABEL_19:
}

- (void)viewController:(id)a3 doSearchItem:(id)a4 withUserInfo:(id)a5 refinementsQuery:(id)a6 autocompleteSessionData:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = sub_100798B6C();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [v13 title];
    v35 = 138412802;
    v36 = v12;
    v37 = 2112;
    v38 = v18;
    v39 = 2112;
    v40 = v14;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "doSearchItemWithRefinement viewController: %@ title: %@ userInfo: %@", &v35, 0x20u);
  }

  v19 = [v14 objectForKeyedSubscript:@"SearchSessionFromRefinementBar"];
  if (v19)
  {
    v20 = v19;
    v21 = [v14 objectForKeyedSubscript:@"SearchSessionIsAutoRedoSearch"];

    if (!v21)
    {
      v22 = [(ActionCoordinator *)self searchPinsManager];
      [v22 clearSearchPins];
    }
  }

  if (MapsFeature_IsEnabled_PlaceCardShowcase())
  {
    v23 = [v13 completion];
    v24 = [v23 mapItem];
    v25 = [v24 _enrichmentInfo];

    if (v25)
    {
      placeEnrichmentAPIController = self->_placeEnrichmentAPIController;
      if (placeEnrichmentAPIController)
      {
        [(MUPlaceEnrichmentAPIController *)placeEnrichmentAPIController resetConfiguration];
        [(MUPlaceEnrichmentAPIController *)self->_placeEnrichmentAPIController cancelFetchingPlaceEnrichment];
      }

      v27 = +[MUPlaceEnrichmentAPIController sharedPlaceEnrichmentAPIController];
      v28 = self->_placeEnrichmentAPIController;
      self->_placeEnrichmentAPIController = v27;

      v29 = self->_placeEnrichmentAPIController;
      v30 = [v13 completion];
      v31 = [v30 mapItem];
      v32 = [(ActionCoordinator *)self newTraits];
      [(MUPlaceEnrichmentAPIController *)v29 configureWithMapItem:v31 traits:v32];

      [(MUPlaceEnrichmentAPIController *)self->_placeEnrichmentAPIController fetchPlaceEnrichment:0];
    }
  }

  searchSessionManager = self->_searchSessionManager;
  if (v16)
  {
    [(SearchSessionManager *)self->_searchSessionManager performSearchForSearchItem:v13 withUserInfo:v14 refinementsQuery:v15 recentAutocompleteSessionData:v16];
  }

  else
  {
    v34 = [(SearchViewController *)self->_searchModeViewController recentAutocompleteSessionData];
    [(SearchSessionManager *)searchSessionManager performSearchForSearchItem:v13 withUserInfo:v14 refinementsQuery:v15 recentAutocompleteSessionData:v34];
  }
}

- (void)viewController:(id)a3 doSearchItem:(id)a4 withUserInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[NSMutableDictionary alloc] initWithDictionary:v10];

  if ([(ActionCoordinator *)self isRoutePlanningPresented])
  {
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    v13 = sub_10000FA08(WeakRetained);

    if (v13 != 5)
    {
      v14 = [NSNumber numberWithBool:[(ActionCoordinator *)self isRoutePlanningPresented]];
      [v11 setObject:v14 forKeyedSubscript:@"IsRoutePlanningPresented"];
    }
  }

  v15 = sub_100798B6C();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = [v9 title];
    v19 = 138412802;
    v20 = v8;
    v21 = 2112;
    v22 = v16;
    v23 = 2112;
    v24 = v11;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "doSearchItem viewController: %@ title: %@ userInfo: %@", &v19, 0x20u);
  }

  searchSessionManager = self->_searchSessionManager;
  v18 = [(SearchViewController *)self->_searchModeViewController recentAutocompleteSessionData];
  [(SearchSessionManager *)searchSessionManager performSearchForSearchItem:v9 withUserInfo:v11 recentAutocompleteSessionData:v18];
}

- (void)viewControllerGoPreviousState:(id)a3 withSender:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_incidentsVC == v6 || self->_routeStepsVC == v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = self;
    routePlanningOverviewViewController = v6;
LABEL_5:
    [(ActionCoordinator *)v8 closeRoutePlanningViewController:routePlanningOverviewViewController withSender:v7];
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_10:
    v13 = [(ActionCoordinator *)self trafficIncidentVC];

    if (v13 == v6)
    {
      v14 = [(ActionCoordinator *)self mapSelectionManager];
      v15 = [v14 mapView];
      [v15 _deselectLabelMarkerAnimated:1];
    }

    if (self->_placeCardViewController == v6 || self->_placeCardForRoutePlanningViewController == v6)
    {
      if (self->_isDismissingPlaceCardFromCarPlay)
      {
        self->_isDismissingPlaceCardFromCarPlay = 0;
      }

      else
      {
        v17 = v6;
        v18 = [PlaceCardSynchronizationNotificationInfo alloc];
        v19 = [(RouteIncidentsViewController *)v17 placeCardItem];

        v20 = +[CarDisplayController sharedInstance];
        v21 = [v20 platformController];
        v22 = [(PlaceCardSynchronizationNotificationInfo *)v18 initWithPlaceCardItem:v19 platformController:v21];

        v23 = +[NSNotificationCenter defaultCenter];
        [v23 postNotificationName:@"IOSBasedPlaceCardDidDismiss" object:v22];
      }

      v24 = [(ActionCoordinator *)self searchPinsManager];
      [v24 clearLinkedPlacesAndPolygon];

      v25 = +[MUPlaceEnrichmentAPIController sharedPlaceEnrichmentAPIController];
      [v25 resetConfiguration];

      v26 = +[MUPlaceEnrichmentAPIController sharedPlaceEnrichmentAPIController];
      [v26 cancelFetchingPlaceEnrichment];
    }

    if (self->_lineCardViewController != v6)
    {
      v27 = [(TransitLineSelectionActionController *)self->_lineSelectionAction disambiguationVC];

      if (v27)
      {
        v28 = [(ActionCoordinator *)self containerViewController];
        v29 = [(TransitLineSelectionActionController *)self->_lineSelectionAction disambiguationVC];
        [v28 removeControllerFromStack:v29];
      }
    }

    v30 = [(ActionCoordinator *)self venueCardCoordinator];
    v31 = [v30 topViewController];

    if (v31 == v6)
    {
      [(ActionCoordinator *)self closeVenueViewController:v6];
      goto LABEL_6;
    }

    if (self->_placeCardViewController == v6)
    {
      v32 = +[UIDevice currentDevice];
      if ([v32 userInterfaceIdiom] == 5)
      {
      }

      else
      {
        v35 = [(SearchSessionManager *)self->_searchSessionManager singleResultMode];

        if (v35)
        {
          [(ActionCoordinator *)self clearSearch];
        }
      }

      v36 = +[UIDevice currentDevice];
      if ([v36 userInterfaceIdiom] == 5)
      {
      }

      else
      {
        v37 = [(ActionCoordinator *)self currentSearchSession];
        v38 = [v37 isSingleResultToShowAsPlacecard];

        if (v38)
        {
          [(ActionCoordinator *)self clearSearch];
        }
      }

      v39 = [(ActionCoordinator *)self containerViewController];
      v40 = [v39 chromeViewController];
      [v40 setNeedsUpdateComponent:@"lookAroundButton" animated:1];
    }

    else
    {
      if (self->_placeCardForRoutePlanningViewController == v6)
      {
        [(ActionCoordinator *)self _setRouteSelectionMapState];
        v33 = [(ActionCoordinator *)self containerViewController];
        [v33 popLastViewControllerFromViewController:v6 animated:1 useDefaultContaineeLayout:0];

        v34 = dispatch_time(0, 250000000);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100919F8C;
        block[3] = &unk_101661B18;
        block[4] = self;
        dispatch_after(v34, &_dispatch_main_q, block);
        goto LABEL_6;
      }

      routePlanningOverviewViewController = self->_routePlanningOverviewViewController;
      if (routePlanningOverviewViewController == v6)
      {
        v8 = self;
        goto LABEL_5;
      }

      if (self->_autosharingVC == v6)
      {
        v43 = [(PlatformController *)self->_platformController currentSession];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v44 = v43;
        }

        else
        {
          v44 = 0;
        }

        v45 = v44;

        v41 = [(SharedTripAutosharingContaineeViewController *)self->_autosharingVC contacts];
        [v45 setAutomaticSharingContacts:v41];
LABEL_55:

        goto LABEL_46;
      }

      if (self->_lineCardViewController == v6 || self->_lineCardForRoutePlanningViewController == v6)
      {
        [(TransitLineSelectionActionController *)self->_lineSelectionAction deactivateWithContext:0];
        goto LABEL_6;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(ActionCoordinator *)self closeVenueFloorCardViewController:v6];
        goto LABEL_6;
      }

      if (self->_simpleListResultsVC != v6)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v46 = [(ActionCoordinator *)self containerViewController];
          [v46 popLastViewControllerFromViewController:v6 animated:1 useDefaultContaineeLayout:0];

          [(ActionCoordinator *)self updateRouteAnnotations];
          goto LABEL_6;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v47 = [(ActionCoordinator *)self containerViewController];
          [v47 popLastViewControllerFromViewController:v6 animated:1 useDefaultContaineeLayout:0];

          v42 = [(ActionCoordinator *)self searchPinsManager];
          [v42 clearSearchPins];
          goto LABEL_48;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (![(ResultsViewController *)self->_resultsViewController hasResults])
          {
            goto LABEL_66;
          }

          goto LABEL_47;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([(SearchViewController *)self->_searchModeViewController currentDataSourceType]!= 1)
          {
LABEL_66:
            [(ActionCoordinator *)self clearSearch];
          }

LABEL_47:
          v42 = [(ActionCoordinator *)self containerViewController];
          [v42 popLastViewControllerFromViewController:v6 animated:1 useDefaultContaineeLayout:0];
LABEL_48:

          goto LABEL_6;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_47;
        }

        v41 = [(ActionCoordinator *)self mapSelectionManager];
        v45 = [v41 mapView];
        [v45 _deselectLabelMarkerAnimated:1];
        goto LABEL_55;
      }
    }

    v41 = [(ActionCoordinator *)self mapSelectionManager];
    [v41 clearSelection];
LABEL_46:

    goto LABEL_47;
  }

  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v11 = [WeakRetained _maps_mapsSceneDelegate];
  v12 = [v11 topMostPresentedViewController];

  if (([(RouteIncidentsViewController *)v12 conformsToProtocol:&OBJC_PROTOCOL___ContaineeProtocol]& 1) != 0)
  {

    goto LABEL_10;
  }

  if (v12 != v6)
  {
    v16 = [(RouteIncidentsViewController *)v6 presentedViewController];

    if (v16 == v12)
    {
      [(RouteIncidentsViewController *)v12 dismissViewControllerAnimated:1 completion:0];
    }
  }

LABEL_6:
}

- (void)viewController:(id)a3 removeMapsSuggestionsEntry:(id)a4 sourceView:(id)a5 sourceRect:(CGRect)a6 startBlock:(id)a7 completionBlock:(id)a8
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a7;
  v21 = a8;
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_10091A420;
  v57[3] = &unk_10162E8B0;
  v22 = v20;
  v59 = v22;
  v23 = v18;
  v58 = v23;
  v24 = v21;
  v60 = v24;
  v25 = objc_retainBlock(v57);
  v26 = [v23 availableRemovalBehaviors];
  v27 = v26;
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x3032000000;
  v55[3] = sub_100907968;
  v55[4] = sub_100907978;
  v56 = 0;
  if (v26 > 3)
  {
    if (v26 == 4 || v26 == 8)
    {
      v28 = 1;
      goto LABEL_7;
    }
  }

  else
  {
    if ((v26 - 1) < 2)
    {
      v28 = 0;
LABEL_7:
      (v25[2])(v25, v26, v28);
      goto LABEL_14;
    }

    if (!v26)
    {
      goto LABEL_14;
    }
  }

  v29 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "More than 1 removalBehavior present. Showing Action Sheet", buf, 2u);
  }

  v42 = self;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v31 = [WeakRetained traitCollection];
  v32 = [v31 userInterfaceIdiom] == 5;

  v33 = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:v32];
  v45 = _NSConcreteStackBlock;
  v46 = 3221225472;
  v47 = sub_10091A55C;
  v48 = &unk_10162E900;
  v52 = v55;
  v53 = v27;
  v49 = v23;
  v34 = v33;
  v50 = v34;
  v51 = v25;
  MapsSuggestionsRemovalBehaviorEnumerate();
  v35 = +[NSBundle mainBundle];
  v36 = [v35 localizedStringForKey:@"Cancel" value:@"localized string not found" table:0];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_10091A8B0;
  v43[3] = &unk_101660728;
  v44 = v24;
  v37 = [UIAlertAction actionWithTitle:v36 style:1 handler:v43];
  [v34 addAction:v37];

  if (v19)
  {
    v38 = [v34 popoverPresentationController];
    [v38 setSourceView:v19];

    v39 = [v34 popoverPresentationController];
    [v39 setSourceRect:{x, y, width, height}];

    v40 = [v34 popoverPresentationController];
    [v40 setPermittedArrowDirections:12];
  }

  v41 = [(ActionCoordinator *)v42 containerViewController];
  [v41 _maps_topMostPresentViewController:v34 animated:1 completion:0];

LABEL_14:
  _Block_object_dispose(v55, 8);
}

- (void)viewController:(id)a3 selectDroppedPin:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = v6;
  if (v6 && [v6 type] == 3)
  {
    v8 = [(ActionCoordinator *)self mapSelectionManager];
    [v8 selectSearchResult:v7 animated:1];
  }
}

- (void)viewController:(id)a3 selectParkedCar:(id)a4 andPerformAction:(int64_t)a5 selectPOIOnMap:(BOOL)a6
{
  v6 = a6;
  v9 = a4;
  v10 = +[ParkedCarManager sharedManager];
  [v10 informCoreRoutineOfEngagementWithParkedCar:v9];

  parkedCarViewController = self->_parkedCarViewController;
  if (!parkedCarViewController)
  {
    v12 = objc_alloc_init(ParkedCarInfoCardViewController);
    v13 = self->_parkedCarViewController;
    self->_parkedCarViewController = v12;

    [(InfoCardViewController *)self->_parkedCarViewController setContaineeDelegate:self];
    [(ParkedCarInfoCardViewController *)self->_parkedCarViewController setActionDelegate:self];
    v14 = [(ActionCoordinator *)self appCoordinator];
    [(ParkedCarInfoCardViewController *)self->_parkedCarViewController setShareDelegate:v14];

    parkedCarViewController = self->_parkedCarViewController;
  }

  [(ParkedCarInfoCardViewController *)parkedCarViewController setParkedCar:v9];
  v15 = [(ActionCoordinator *)self containerViewController];
  v16 = [v15 currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v19 = WeakRetained;
  v20 = self->_parkedCarViewController;
  if (isKindOfClass)
  {
    [WeakRetained replaceCurrentWithController:v20 moveToContaineeLayout:2];
  }

  else
  {
    [WeakRetained presentController:v20];
  }

  v21 = [(ActionCoordinator *)self mapView];
  [v9 coordinate];
  v23 = v22;
  v25 = v24;
  [v21 convertCoordinate:v21 toPointToView:?];
  v27 = v26;
  v29 = v28;
  [v21 bounds];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  [v21 _edgeInsets];
  v39 = v38 + v33;
  v42 = v35 - (v40 + v41);
  v69.size.height = v37 - (v38 + v43);
  v69.origin.x = v40 + v31;
  v69.origin.y = v39;
  v69.size.width = v42;
  v68.x = v27;
  v68.y = v29;
  v44 = CGRectContainsPoint(v69, v68);
  [v9 horizontalAccuracy];
  v45 = 1000.0;
  v46 = 1000.0;
  if (v47 > 1000.0)
  {
    [v9 horizontalAccuracy];
    v46 = v48;
  }

  [v9 horizontalAccuracy];
  if (v49 > 1000.0)
  {
    [v9 horizontalAccuracy];
    v45 = v50;
  }

  v67.latitude = v23;
  v67.longitude = v25;
  MKCoordinateRegionMakeWithDistance(v67, v46, v45);
  MKMapRectForCoordinateRegion();
  [v21 mapRectThatFits:?];
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  [v21 visibleMapRect];
  v61 = fmax(v59, v56) / fmin(v60, v58);
  if (v61 <= 4.0 && v44)
  {
LABEL_17:
    if (!v6)
    {
      goto LABEL_19;
    }

LABEL_18:
    v63 = [(ActionCoordinator *)self searchPinsManager];
    v64 = [v63 customPOIsController];
    v65 = +[ParkedCar personalizedItemKey];
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_10091AEE0;
    v66[3] = &unk_10162E860;
    v66[4] = self;
    [v64 customFeatureForKey:v65 completion:v66];

    goto LABEL_19;
  }

  if (v61 <= 4.0)
  {
    [v21 setCenterCoordinate:1 animated:{v23, v25}];
    goto LABEL_17;
  }

  [v21 setVisibleMapRect:1 animated:{v52, v54, v56, v58}];
  if (v6)
  {
    goto LABEL_18;
  }

LABEL_19:
  [(ParkedCarInfoCardViewController *)self->_parkedCarViewController performAction:a5];
}

- (void)viewController:(id)a3 displayTableBookingFor:(id)a4
{
  v11 = a4;
  v5 = [(ActionCoordinator *)self currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [(ActionCoordinator *)self currentViewController];
    v8 = [v7 placeCardItem];
    v9 = [v11 isEqual:v8];

    if (v9)
    {
      [v7 setShouldPresentSecondaryActionWhenReady:1];
      goto LABEL_6;
    }
  }

  v7 = [(ActionCoordinator *)self placeCardViewController];
  [v7 resetState];
  [v7 setPlaceCardItem:v11 withHistory:1];
  [v7 setShouldPresentSecondaryActionWhenReady:1];
  [(ActionCoordinator *)self presentPlaceCard:v7];
  v10 = [(ActionCoordinator *)self appCoordinator];
  [v10 setNeedsUserActivityUpdate];

LABEL_6:
}

- (void)viewController:(id)a3 showCollectionWithID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[CollectionManager sharedManager];
  v9 = [v8 collectionWithIdentifier:v6];

  if (v9)
  {
    [(ActionCoordinator *)self viewController:v7 showCollection:v9];
  }

  else
  {
    [(ActionCoordinator *)self viewControllerShowCollections:v7];
  }
}

- (void)viewController:(id)a3 showFavoritesType:(int64_t)a4
{
  v6 = a3;
  v7 = +[CollectionManager sharedManager];
  v8 = [v7 collectionForFavoritesType:a4];

  if (v8)
  {
    [(ActionCoordinator *)self viewController:v6 showCollection:v8];
  }

  else
  {
    [(ActionCoordinator *)self viewControllerShowCollections:v6];
  }
}

- (void)viewController:(id)a3 presentRelatedMapItems:(id)a4 withTitle:(id)a5 originalMapItem:(id)a6 analyticsDelegate:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (sub_10000FA08(v12) == 5 && ([v15 _venueInfo], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "venueFeatureType"), v17, v18 == 1))
  {
    v19 = [v15 _browseCategories];
    v20 = [v19 firstObject];

    v21 = [[VenueSearchCardItem alloc] initWithMapItem:v15 searchCategory:v20];
    [(ActionCoordinator *)self viewController:v12 presentVenueWithVenueCardItem:v21 source:4];
  }

  else
  {
    v35 = v14;
    v36 = v12;
    v22 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v13 count]);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v23 = v13;
    v24 = [v23 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v38;
      do
      {
        for (i = 0; i != v25; i = i + 1)
        {
          if (*v38 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = [[SearchResult alloc] initWithMapItem:*(*(&v37 + 1) + 8 * i)];
          if (v28)
          {
            [v22 addObject:v28];
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v25);
    }

    v29 = [SimilarResultsViewController alloc];
    v30 = [(ActionCoordinator *)self appCoordinator];
    v31 = [(SimpleResultsViewController *)v29 initWithShareDelegate:v30];

    [(SimpleResultsViewController *)v31 setResultsDelegate:self];
    [(ContaineeViewController *)v31 setContaineeDelegate:self];
    [(SimpleResultsViewController *)v31 setEnableQuickActionMenu:1];
    v14 = v35;
    [(SimilarResultsViewController *)v31 setHeaderTitle:v35];
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    [WeakRetained presentController:v31];

    [(SimpleResultsViewController *)v31 setSearchResults:v22];
    [(SimilarResultsViewController *)v31 setOriginalMapItem:v15];
    [(SimilarResultsViewController *)v31 setAnalyticsDelegate:v16];
    v33 = [SearchInfo searchInfoWithResults:v22];
    v34 = [(ActionCoordinator *)self searchPinsManager];
    [v34 setSearchPinsFromSearchInfo:v33 scrollToResults:1 displayPlaceCardForResult:0 animated:1 completion:0];

    v12 = v36;
  }
}

- (void)viewController:(id)a3 presentPlacesForMapItem:(id)a4 searchCategory:(id)a5 source:(unint64_t)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[PlacesSearchCardItem alloc] initWithMapItem:v11 searchCategory:v10];

  [(ActionCoordinator *)self viewController:v12 presentPlacesWithPlacesCardItem:v13 source:a6];
}

- (void)viewController:(id)a3 presentParentMapItem:(id)a4
{
  v5 = a4;
  v6 = [v5 _venueInfo];

  if (v6)
  {
    [(ActionCoordinator *)self viewController:0 selectMapItem:v5 address:0 addToHistory:1 source:4];
LABEL_5:
    v8 = [[SearchResult alloc] initWithMapItem:v5];
    v12 = v8;
    v9 = [NSArray arrayWithObjects:&v12 count:1];
    v10 = [SearchInfo searchInfoWithResults:v9];

    v11 = [(ActionCoordinator *)self searchPinsManager];
    [v11 setSearchPinsFromSearchInfo:v10 scrollToResults:1 displayPlaceCardForResult:v8 animated:1 completion:0];

    goto LABEL_6;
  }

  if (![v5 _hasHikeInfo])
  {
    goto LABEL_5;
  }

  v7 = [(ActionCoordinator *)self appCoordinator];
  [v7 enterRouteCreationWithMapItem:v5 completion:0];

LABEL_6:
}

- (void)viewController:(id)a3 showOfflineMapRegionSelectorForRegion:(id)a4 name:(id)a5 route:(id)a6 muid:(unint64_t)a7 shouldUseSessionlessAnalytics:(BOOL)a8 dismissalBlock:(id)a9 postDismissalBlock:(id)a10
{
  v10 = a8;
  v33 = a3;
  v32 = a4;
  v31 = a5;
  v30 = a6;
  v16 = a9;
  v17 = a10;
  if (GEOSupportsOfflineMaps())
  {
    v18 = v10;
    v19 = +[MapsOfflineUIHelper sharedHelper];
    v20 = [v19 alertControllerForAttemptedRegionDownload];

    v21 = [(ActionCoordinator *)self containerViewController];
    v22 = [v21 chromeViewController];
    v23 = v22;
    if (v20)
    {
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_10091B9BC;
      v34[3] = &unk_10165BA38;
      v35 = v16;
      v36 = v17;
      [v23 _maps_topMostPresentViewController:v20 animated:1 completion:v34];
    }

    else
    {
      v29 = a7;
      v24 = [v22 topContext];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        v26 = [[OfflineRegionSelectorContext alloc] initWithRegion:v32 name:v31];
        [(OfflineRegionSelectorContext *)v26 setShouldUseSessionlessAnalytics:v18];
        [(OfflineRegionSelectorContext *)v26 setRoute:v30];
        [(OfflineRegionSelectorContext *)v26 setMuid:v29];
        [(OfflineRegionSelectorContext *)v26 setDismissalBlock:v16];
        [(OfflineRegionSelectorContext *)v26 setPostDismissalBlock:v17];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(OfflineRegionSelectorContext *)v26 setDownloadDelegate:v33];
        }

        v27 = [(ActionCoordinator *)self containerViewController];
        v28 = [v27 chromeViewController];
        [v28 pushContext:v26 animated:1 completion:0];
      }
    }
  }
}

- (void)viewController:(id)a3 showOfflineMapRegionSelectorForRegion:(id)a4 name:(id)a5 route:(id)a6 muid:(unint64_t)a7 shouldUseSessionlessAnalytics:(BOOL)a8 shouldShowDataManagementAfterDownload:(BOOL)a9 shouldShowDataManagementAfterDownloadIfRegionDiffers:(BOOL)a10 dismissalBlock:(id)a11
{
  v24 = a8;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a11;
  objc_initWeak(&location, self);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10091BBE8;
  v25[3] = &unk_10162E838;
  objc_copyWeak(&v29, &location);
  v21 = v20;
  v28 = v21;
  v30 = a9;
  v31 = a10;
  v22 = v17;
  v26 = v22;
  v23 = v16;
  v27 = v23;
  [(ActionCoordinator *)self viewController:v23 showOfflineMapRegionSelectorForRegion:v22 name:v18 route:v19 muid:a7 shouldUseSessionlessAnalytics:v24 dismissalBlock:v25 postDismissalBlock:0];

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

- (void)_viewControllerShowOfflineMaps:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = +[MapsOfflineUIHelper sharedHelper];
  v7 = [v6 alertControllerForAttemptedDataManagementDisplay];

  v8 = [(ActionCoordinator *)self containerViewController];
  v9 = [v8 chromeViewController];
  v10 = v9;
  if (v7)
  {
    [v9 _maps_topMostPresentViewController:v7 animated:1 completion:0];

    if (v5)
    {
      v5[2](v5, 0);
    }
  }

  else
  {
    v11 = [v9 topContext];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      if (v5)
      {
        v13 = [(ActionCoordinator *)self containerViewController];
        v14 = [v13 chromeViewController];
        v15 = [v14 topContext];
        (v5)[2](v5, v15);
      }
    }

    else
    {
      v16 = objc_alloc_init(OfflineMapsManagementContext);
      v17 = [(ActionCoordinator *)self containerViewController];
      v18 = [v17 chromeViewController];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10091BF44;
      v20[3] = &unk_101661090;
      v21 = v16;
      v22 = v5;
      v19 = v16;
      [v18 pushContext:v19 animated:1 completion:v20];
    }
  }
}

- (void)viewControllerShowPhotoThumbnailGalleryWithMapItem:(id)a3 albumIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 _geoMapItem];
  v8 = [v7 _captionedPhotoAlbums];
  v9 = [v8 count];

  if (v9 < 2)
  {
    [UGCPOIEnrichmentCoordinator photoThumbnailGalleryCoordinatorWithMapItem:v6 withStartingIndex:0];
  }

  else
  {
    [UGCPOIEnrichmentCoordinator photoThumbnailGalleryCoordinatorWithMapItem:v6 albumIndex:a4];
  }
  v11 = ;

  [v11 setDelegate:self];
  v10 = [(ActionCoordinator *)self containerViewController];
  [v11 setPresentingViewController:v10];

  [v11 setPresentationContext:1];
  [(ActionCoordinator *)self viewControllerPresentPOIEnrichmentWithCoordinator:v11];
}

- (void)viewControllerShowCitySelectorFromGuideLocation:(id)a3
{
  v4 = a3;
  v5 = [[CitySelectorViewController alloc] initWithSourceGuideLocation:v4];

  v6 = [(ActionCoordinator *)self newTraits];
  [(CitySelectorViewController *)v5 setTraits:v6];

  [(ContaineeViewController *)v5 setContaineeDelegate:self];
  [(CitySelectorViewController *)v5 setActionDelegate:self];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained presentController:v5 animated:1];

  if (self->_citySelectorVC)
  {
    v8 = [(ActionCoordinator *)self containerViewController];
    [v8 removeControllerFromStack:self->_citySelectorVC];

    citySelectorVC = self->_citySelectorVC;
  }

  else
  {
    citySelectorVC = 0;
  }

  self->_citySelectorVC = v5;
}

- (void)viewControllerShowAllCollections
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v4 = [WeakRetained currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v6 = objc_alloc_init(AllCollectionsViewController);
    v7 = [(ActionCoordinator *)self newTraits];
    [(AllCollectionsViewController *)v6 setTraits:v7];

    [(ContaineeViewController *)v6 setContaineeDelegate:self];
    [(AllCollectionsViewController *)v6 setActionDelegate:self];
    v8 = objc_loadWeakRetained(&self->_containerViewController);
    [v8 presentController:v6 animated:1];

    if (self->_allCollectionsVC)
    {
      v9 = [(ActionCoordinator *)self containerViewController];
      [v9 removeControllerFromStack:self->_allCollectionsVC];

      allCollectionsVC = self->_allCollectionsVC;
    }

    else
    {
      allCollectionsVC = 0;
    }

    self->_allCollectionsVC = v6;
  }
}

- (void)viewControllerShowPublisherWithID:(id)a3 numberOfCollections:(unint64_t)a4 replaceViewController:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [PublisherViewController alloc];
  v10 = [(ActionCoordinator *)self newTraits];
  v11 = [(PublisherViewController *)v9 initWithPublisherId:v8 numberOfCollections:a4 withTraits:v10];

  [(ContaineeViewController *)v11 setContaineeDelegate:self];
  [(PublisherViewController *)v11 setActionDelegate:self];
  v12 = [(ActionCoordinator *)self appCoordinator];
  [(PublisherViewController *)v11 setShareDelegate:v12];

  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v14 = WeakRetained;
  if (v5)
  {
    [WeakRetained replaceCurrentWithController:v11];
  }

  else
  {
    [WeakRetained presentController:v11 animated:1];
  }

  if (self->_publisherVC)
  {
    v15 = [(ActionCoordinator *)self containerViewController];
    [v15 removeControllerFromStack:self->_publisherVC];

    publisherVC = self->_publisherVC;
  }

  else
  {
    publisherVC = 0;
  }

  self->_publisherVC = v11;
}

- (void)viewController:(id)a3 showGuidesHome:(id)a4
{
  v11 = a3;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && self->_citySelectorVC)
  {
    v7 = [(ActionCoordinator *)self containerViewController];
    [v7 popLastViewControllerFromViewController:self->_citySelectorVC animated:1 useDefaultContaineeLayout:1];

    v8 = [(ActionCoordinator *)self containerViewController];
    v9 = [v8 controllerIsInStack:self->_guideHomeVC];

    if (v9)
    {
      guideHomeVC = self->_guideHomeVC;
LABEL_7:
      [(GuidesHomeViewController *)guideHomeVC setGuideLocation:v6];
      goto LABEL_9;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      guideHomeVC = self->_guideHomeVC;
      if (guideHomeVC)
      {
        goto LABEL_7;
      }
    }
  }

  [(ActionCoordinator *)self presentGuidesHomeWithGuideLocation:v6];
LABEL_9:
}

- (void)viewControllerShowPublisher:(id)a3 replaceViewController:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [MKMapItemIdentifier alloc];
  v8 = [v6 identifier];
  v10 = [v7 initWithGEOMapItemIdentifier:v8];

  v9 = [v6 totalCollectionCount];
  [(ActionCoordinator *)self viewControllerShowPublisherWithID:v10 numberOfCollections:v9 replaceViewController:v4];
}

- (void)viewController:(id)a3 showCuratedCollectionsList:(id)a4 usingTitle:(id)a5 usingCollectionIds:(id)a6 completion:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = [CuratedCollectionsListViewController alloc];
  v16 = [(ActionCoordinator *)self newTraits];
  v17 = [(CuratedCollectionsListViewController *)v15 initWithCuratedCollections:v14 usingTitle:v13 usingCollectionIds:v12 withTraits:v16];

  [(ContaineeViewController *)v17 setContaineeDelegate:self];
  [(ControlContaineeViewController *)v17 setDelegate:self];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_10091C720;
  v27 = &unk_101655D58;
  v19 = v17;
  v28 = v19;
  v20 = v11;
  v29 = v20;
  [WeakRetained presentController:v19 animated:1 completion:&v24];

  if (v19)
  {
    v21 = [(ActionCoordinator *)self containerViewController:v24];
    [v21 removeControllerFromStack:self->_collectionsListVC];
  }

  collectionsListVC = self->_collectionsListVC;
  self->_collectionsListVC = v19;
  v23 = v19;
}

- (void)showCuratedCollectionViewController:(id)a3 replaceViewController:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  [v8 setContaineeDelegate:self];
  [v8 setActionDelegate:self];
  v10 = [(ActionCoordinator *)self appCoordinator];
  [v8 setShareDelegate:v10];

  [v8 setMapModificationDelegate:self];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v12 = WeakRetained;
  if (v6)
  {
    [WeakRetained replaceCurrentWithController:v8];

    if (v9)
    {
      v9[2](v9);
    }
  }

  else
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10091C8B8;
    v13[3] = &unk_10165F438;
    v14 = v9;
    [v12 presentController:v8 animated:1 completion:v13];
  }
}

- (void)viewController:(id)a3 showFullyClientizedCuratedCollection:(id)a4 replaceViewController:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = [[CuratedCollectionViewController alloc] initWithFullyClientizedPlaceCollection:v7];

  [(ActionCoordinator *)self showCuratedCollectionViewController:v8 replaceViewController:v5 completion:0];
  if (self->_curatedCollectionsVC)
  {
    v9 = [(ActionCoordinator *)self containerViewController];
    [v9 removeControllerFromStack:self->_curatedCollectionsVC];

    curatedCollectionsVC = self->_curatedCollectionsVC;
  }

  else
  {
    curatedCollectionsVC = 0;
  }

  self->_curatedCollectionsVC = v8;
}

- (void)viewController:(id)a3 showCuratedCollectionIdentifier:(id)a4 replaceViewController:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  v9 = a6;
  v10 = a4;
  v11 = [[CuratedCollectionViewController alloc] initWithCuratedCollectionIdentifier:v10];

  [(ActionCoordinator *)self showCuratedCollectionViewController:v11 replaceViewController:v6 completion:v9];
  if (self->_curatedCollectionsVC)
  {
    v12 = [(ActionCoordinator *)self containerViewController];
    [v12 removeControllerFromStack:self->_curatedCollectionsVC];

    curatedCollectionsVC = self->_curatedCollectionsVC;
  }

  else
  {
    curatedCollectionsVC = 0;
  }

  self->_curatedCollectionsVC = v11;
}

- (void)viewController:(id)a3 showCuratedCollection:(id)a4 replaceViewController:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [MKMapItemIdentifier alloc];
  v14 = [v11 collectionIdentifier];

  v15 = [v13 initWithGEOMapItemIdentifier:v14];
  [(ActionCoordinator *)self viewController:v12 showCuratedCollectionIdentifier:v15 replaceViewController:v6 completion:v10];
}

- (void)collectionPickerNewCollection:(id)a3
{
  collectionPicker = self->_collectionPicker;
  self->_collectionPicker = 0;
  v5 = a3;

  v6 = [v5 editSession];

  [(ActionCoordinator *)self viewController:0 createNewCollectionWithSession:v6];
}

- (void)collectionPickerClosed:(id)a3
{
  collectionPicker = self->_collectionPicker;
  self->_collectionPicker = 0;
}

- (void)viewController:(id)a3 presentCollectionPickerContaineeViewController:(id)a4
{
  v5 = a4;
  [v5 setContaineeDelegate:self];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained presentController:v5 animated:1 completion:0];
}

- (void)viewController:(id)a3 editCollection:(id)a4 sourceView:(id)a5 sourceRect:(CGRect)a6 completion:(id)a7
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  collectionEditCoordinator = self->_collectionEditCoordinator;
  if (collectionEditCoordinator)
  {
    [(MacCollectionEditCoordinator *)collectionEditCoordinator dismiss];
  }

  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v21 = [WeakRetained view];
  [v21 convertRect:v17 fromView:{x, y, width, height}];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  objc_initWeak(&location, self);
  v30 = [MacCollectionEditCoordinator alloc];
  v31 = objc_loadWeakRetained(&self->_containerViewController);
  v32 = [v31 view];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10091CE3C;
  v36[3] = &unk_101660648;
  objc_copyWeak(&v38, &location);
  v33 = v18;
  v37 = v33;
  v34 = [(MacCollectionEditCoordinator *)v30 initWithCollection:v16 presentingViewController:v31 sourceView:v32 sourceRect:v36 completion:v23, v25, v27, v29];
  v35 = self->_collectionEditCoordinator;
  self->_collectionEditCoordinator = v34;

  [(MacCollectionEditCoordinator *)self->_collectionEditCoordinator present];
  objc_destroyWeak(&v38);
  objc_destroyWeak(&location);
}

- (void)viewController:(id)a3 editNameOfMapItem:(id)a4 saveHandler:(id)a5 cancelHandler:(id)a6
{
  v8 = [UIViewController _maps_viewControllerForRenamingMapItem:a4 saveHandler:a5 cancelHandler:a6];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained _maps_topMostPresentViewController:v8 animated:1 completion:0];
}

- (void)viewController:(id)a3 createNewCollectionWithSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[MapsOfflineUIHelper sharedHelper];
  v9 = [v8 alertControllerForAttemptedAddCollection];

  if (!v9)
  {
    if (!+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
    {
      WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
      v13 = sub_10000FA08(WeakRetained);

      if (v13 == 5)
      {
        [(ActionCoordinator *)self viewController:v6 addItemsFromACToCollection:v7];
        goto LABEL_22;
      }
    }

    v14 = [v7 collection];
    if ([v14 handlerType] == 3)
    {
      v15 = 256;
    }

    else if (self->_searchModeViewController == v6)
    {
      v15 = 8;
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (v6)
      {
        v17 = 0;
      }

      else
      {
        v17 = 201;
      }

      if (isKindOfClass)
      {
        v15 = 251;
      }

      else
      {
        v15 = v17;
      }
    }

    v18 = [[CollectionCreateViewController alloc] initWithEditSession:v7];
    [(ContaineeViewController *)v18 setContaineeDelegate:self];
    [(CollectionCreateViewController *)v18 setTarget:v15];
    collectionCreateVCDidDismissHandler = self->_collectionCreateVCDidDismissHandler;
    self->_collectionCreateVCDidDismissHandler = 0;

    v20 = objc_loadWeakRetained(&self->_containerViewController);
    if (sub_10000FA08(v20) == 5)
    {
      objc_opt_class();
      v21 = objc_opt_isKindOfClass();

      if ((v21 & 1) == 0)
      {
LABEL_21:
        v25 = objc_loadWeakRetained(&self->_containerViewController);
        [v25 presentController:v18 animated:1];

        goto LABEL_22;
      }

      v22 = [(SearchViewController *)v6 placeCardItem];
      v20 = [v22 mapItem];

      if (v20)
      {
        objc_initWeak(&location, self);
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_10091D1F8;
        v26[3] = &unk_101661340;
        objc_copyWeak(&v28, &location);
        v27 = v20;
        v23 = objc_retainBlock(v26);
        v24 = self->_collectionCreateVCDidDismissHandler;
        self->_collectionCreateVCDidDismissHandler = v23;

        objc_destroyWeak(&v28);
        objc_destroyWeak(&location);
      }
    }

    goto LABEL_21;
  }

  v10 = [(ActionCoordinator *)self containerViewController];
  v11 = [v10 chromeViewController];
  [v11 _maps_topMostPresentViewController:v9 animated:1 completion:0];

LABEL_22:
}

- (void)viewController:(id)a3 pickCollectionWithSession:(id)a4 sourceView:(id)a5 sourceRect:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = [[CollectionPicker alloc] initWithCollectionEditSession:v14 sourceView:v15 sourceRect:x, y, width, height];
  collectionPicker = self->_collectionPicker;
  self->_collectionPicker = v16;

  [(CollectionPicker *)self->_collectionPicker setDelegate:self];
  objc_initWeak(&location, self);
  v18 = self->_collectionPicker;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10091D42C;
  v22[3] = &unk_10164F880;
  objc_copyWeak(&v24, &location);
  v19 = v13;
  v23 = v19;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10091D494;
  v20[3] = &unk_10162E7D0;
  objc_copyWeak(&v21, &location);
  [(CollectionPicker *)v18 viewControllerToPresentIfContainee:v22 ifAlertController:v20];
  objc_destroyWeak(&v21);

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

- (void)viewControllerShowAddItemsFromACToLibraryView:(id)a3
{
  v4 = +[MapsOfflineUIHelper sharedHelper];
  v7 = [v4 alertControllerForAttemptedAddCollection];

  if (v7)
  {
    v5 = [(ActionCoordinator *)self containerViewController];
    WeakRetained = [(LibraryAddCollectionItemViewController *)v5 chromeViewController];
    [WeakRetained _maps_topMostPresentViewController:v7 animated:1 completion:0];
  }

  else
  {
    v5 = [[_TtC4Maps38LibraryAddCollectionItemViewController alloc] initWithNibName:0 bundle:0];
    [(ContaineeViewController *)v5 setContaineeDelegate:self];
    [(AddFromACViewController *)v5 setAddFromACDelegate:self];
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    [WeakRetained presentController:v5 animated:1];
  }
}

- (void)viewController:(id)a3 addItemsFromACToCollection:(id)a4
{
  v5 = a4;
  if (v5)
  {
    v10 = v5;
    v6 = +[MapsOfflineUIHelper sharedHelper];
    v7 = [v6 alertControllerForAttemptedAddCollection];

    if (v7)
    {
      v8 = [(ActionCoordinator *)self containerViewController];
      WeakRetained = [(CollectionAddViewController *)v8 chromeViewController];
      [WeakRetained _maps_topMostPresentViewController:v7 animated:1 completion:0];
    }

    else
    {
      v8 = [[CollectionAddViewController alloc] initWithNibName:0 bundle:0];
      [(ContaineeViewController *)v8 setContaineeDelegate:self];
      [(AddFromACViewController *)v8 setAddFromACDelegate:self];
      [(CollectionAddViewController *)v8 setEditSession:v10];
      WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
      [WeakRetained presentController:v8 animated:1];
    }

    v5 = v10;
  }
}

- (void)viewController:(id)a3 editCollection:(id)a4
{
  v8 = a4;
  v5 = [(ActionCoordinator *)self containerViewController];
  v6 = [v5 currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(ActionCoordinator *)self dismissPlaceCardViewController:self->_placeCardViewController];
  }

  [(SearchViewController *)self->_searchModeViewController editCollection:v8];
}

- (void)viewController:(id)a3 showCollection:(id)a4 completion:(id)a5
{
  v18 = a3;
  v7 = a4;
  [CATransaction setFrameStallSkipRequest:1];
  if ([v7 handlerType] == 1)
  {
    [(ActionCoordinator *)self viewController:v18 createNewCollectionWithSession:0];
    goto LABEL_20;
  }

  if ([v7 handlerType] != 4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v8 = [[_TtC4Maps23UserGuideViewController alloc] initWithCollectionHandler:v7];
    [(UserGuideViewController *)v8 setActionDelegate:self];
    [(UserGuideViewController *)v8 setMapModificationDelegate:self];
    v11 = [(ActionCoordinator *)self appCoordinator];
    [(UserGuideViewController *)v8 setShareDelegate:v11];

    [(UserGuideViewController *)v8 setSortOptionPickerDelegate:self];
    [(ContaineeViewController *)v8 setContaineeDelegate:self];
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    [WeakRetained presentController:v8 animated:1];

    v10 = self->_userGuideVC;
    if (v10)
    {
      v13 = objc_loadWeakRetained(&self->_containerViewController);
      [v13 removeControllerFromStack:v10];
    }

    objc_storeStrong(&self->_userGuideVC, v8);
    v14 = [v7 showAction];
    if (self->_searchModeViewController == v18)
    {
      LODWORD(v15) = 8;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        LODWORD(v15) = 251;
      }

      else
      {
        LODWORD(v15) = 201;
      }
    }

    if ([v7 handlerType] == 3)
    {
      v15 = 256;
    }

    else
    {
      v15 = v15;
    }

    v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7 bucketedNumberOfItems]);
    v17 = [NSString stringWithFormat:@"%@", v16];

    [GEOAPPortal captureUserAction:v14 target:v15 value:v17];
    goto LABEL_18;
  }

  v8 = v7;
  v9 = [(UserGuideViewController *)v8 curatedCollectionIdentifier];

  if (v9)
  {
    v10 = [(UserGuideViewController *)v8 curatedCollectionIdentifier];
    [(ActionCoordinator *)self viewController:v18 showCuratedCollectionIdentifier:v10];
LABEL_18:
  }

LABEL_20:
}

- (void)viewControllerShowCollections:(id)a3
{
  [CATransaction setFrameStallSkipRequest:1];
  v6 = [[_TtC4Maps37UserGuidesListContaineeViewController alloc] initWithNibName:0 bundle:0];
  [(ContaineeViewController *)v6 setContaineeDelegate:self];
  [(UserGuidesListContaineeViewController *)v6 setActionDelegate:self];
  v4 = [(ActionCoordinator *)self appCoordinator];
  [(UserGuidesListContaineeViewController *)v6 setShareDelegate:v4];

  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained presentController:v6 animated:1];
}

- (void)showWarmingSheetViewController:(int64_t)a3
{
  v5 = [[_TtC4Maps36LocationAuthenticationViewController alloc] initWithSheetType:1 actionFlow:a3 actionHandler:&stru_10162E7A8];
  v3 = +[UIApplication sharedMapsDelegate];
  v4 = [v3 chromeViewController];
  [v4 _maps_topMostPresentViewController:v5 animated:1 completion:0];
}

- (void)viewControllerShowLibraryPlacesView:(id)a3
{
  v6 = [[_TtC4Maps24PlaceItemsViewController alloc] initWithNibName:0 bundle:0];
  [(ContaineeViewController *)v6 setContaineeDelegate:self];
  [(PlaceItemsViewController *)v6 setActionDelegate:self];
  v4 = [(ActionCoordinator *)self appCoordinator];
  [(PlaceItemsViewController *)v6 setShareDelegate:v4];

  [(PlaceItemsViewController *)v6 setSortOptionPickerDelegate:self];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained presentController:v6 animated:1];
}

- (void)viewControllerShowLibraryRootView:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v5 = [WeakRetained currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v8 = objc_alloc_init(_TtC4Maps21LibraryViewController);
    [(ContaineeViewController *)v8 setContaineeDelegate:self];
    [(LibraryViewController *)v8 setActionDelegate:self];
    v7 = objc_loadWeakRetained(&self->_containerViewController);
    [v7 presentController:v8 animated:1];
  }
}

- (void)shortcutEditSessionControllerFinished:(id)a3 shortcutWasReplacedBy:(id)a4
{
  v12 = a3;
  v6 = a4;
  shortcutEditSessionController = self->_shortcutEditSessionController;
  self->_shortcutEditSessionController = 0;

  if (v6)
  {
    if (self->_placeCardViewController)
    {
      v8 = [v12 requestInitiator];
      placeCardViewController = self->_placeCardViewController;

      if (v8 == placeCardViewController)
      {
        v10 = [SearchResult searchResultFromFavoriteItem:v6];
        v11 = [(ActionCoordinator *)self mapSelectionManager];
        [v11 injectAndSelectSearchResult:v10];
      }
    }
  }
}

- (id)shortcutEditSessionController
{
  p_shortcutEditSessionController = &self->_shortcutEditSessionController;
  shortcutEditSessionController = self->_shortcutEditSessionController;
  if (shortcutEditSessionController)
  {
    v4 = shortcutEditSessionController;
  }

  else
  {
    v4 = objc_alloc_init(ShortcutEditSessionControllerImpl);
    [(ShortcutEditSessionControllerImpl *)v4 setDelegate:self];
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    [(ShortcutEditSessionControllerImpl *)v4 setContainerViewController:WeakRetained];

    objc_storeStrong(p_shortcutEditSessionController, v4);
  }

  return v4;
}

- (void)viewController:(id)a3 editShortcut:(id)a4 sourceView:(id)a5 sourceRect:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v12 = a5;
  v13 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v15 = [WeakRetained view];
  [v15 convertRect:v12 fromView:{x, y, width, height}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  shortcutEditSessionController = self->_shortcutEditSessionController;
  self->_shortcutEditSessionController = 0;

  v27 = [(ActionCoordinator *)self shortcutEditSessionController];
  v25 = objc_loadWeakRetained(&self->_containerViewController);
  v26 = [v25 view];
  [v27 editShortcut:v13 sourceView:v26 sourceRect:{v17, v19, v21, v23}];
}

- (void)viewController:(id)a3 openTransitLineCard:(id)a4 sourceView:(id)a5 sourceRect:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v12 = a5;
  v13 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v15 = [WeakRetained view];
  [v15 convertRect:v12 fromView:{x, y, width, height}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = sub_1005B1B14(v13);
  v26 = objc_loadWeakRetained(&self->_containerViewController);
  v25 = [v26 view];
  [(ActionCoordinator *)self presentLineCardForItem:v13 loading:v24 sourceView:v25 sourceRect:v17, v19, v21, v23];
}

- (void)viewController:(id)a3 removeShortcut:(id)a4
{
  v5 = a4;
  v6 = [(ActionCoordinator *)self shortcutEditSessionController];
  [v6 removeShortcut:v5];
}

- (void)viewController:(id)a3 editShortcut:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = +[MapsOfflineUIHelper sharedHelper];
  v8 = [v7 alertControllerForAttemptedShowMyShortcut];

  if (v8)
  {
    v9 = [(ActionCoordinator *)self containerViewController];
    v10 = [v9 chromeViewController];
    [v10 _maps_topMostPresentViewController:v8 animated:1 completion:0];
  }

  else
  {
    shortcutEditSessionController = self->_shortcutEditSessionController;
    self->_shortcutEditSessionController = 0;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v14;
    }

    else
    {
      v12 = 0;
    }

    v13 = [(ActionCoordinator *)self shortcutEditSessionController];
    [v13 setRequestInitiator:v12];

    v9 = [(ActionCoordinator *)self shortcutEditSessionController];
    [v9 editShortcut:v6];
  }
}

- (void)viewController:(id)a3 showAddShortcut:(id)a4
{
  v11 = a4;
  v5 = +[MapsOfflineUIHelper sharedHelper];
  v6 = [v5 alertControllerForAttemptedAddShortcut];

  if (v6)
  {
    v7 = [(ActionCoordinator *)self containerViewController];
    WeakRetained = [(AddShortcutViewController *)v7 chromeViewController];
    [WeakRetained _maps_topMostPresentViewController:v6 animated:1 completion:0];
LABEL_5:

    goto LABEL_6;
  }

  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    v7 = [[AddShortcutViewController alloc] initWithShortcutEditSession:v11];
    [(AddShortcutViewController *)v7 setDelegate:self];
    [(ContaineeViewController *)v7 setContaineeDelegate:self];
    shortcutEditSessionController = self->_shortcutEditSessionController;
    self->_shortcutEditSessionController = 0;

    v10 = [(ActionCoordinator *)self shortcutEditSessionController];
    [(AddShortcutViewController *)v7 setSessionController:v10];

    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    [WeakRetained presentController:v7 animated:1];
    goto LABEL_5;
  }

  v7 = [(ActionCoordinator *)self shortcutEditSessionController];
  [(AddShortcutViewController *)v7 showAddShortcut:v11];
LABEL_6:
}

- (void)viewControllerShowMyShortcuts:(id)a3
{
  v6 = [[_TtC4Maps25PinnedItemsViewController alloc] initWithNibName:0 bundle:0];
  [(ContaineeViewController *)v6 setContaineeDelegate:self];
  [(PinnedItemsViewController *)v6 setActionDelegate:self];
  v4 = [(ActionCoordinator *)self appCoordinator];
  [(PinnedItemsViewController *)v6 setShareDelegate:v4];

  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained presentController:v6 animated:1];
}

- (void)viewControllerShowMyRecents:(id)a3 includeRecentSearches:(BOOL)a4
{
  v4 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v7 = [WeakRetained currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v11 = [[_TtC4Maps32MyRecentsContaineeViewController alloc] initIncludingRecentSearches:v4];
    [v11 setContaineeDelegate:self];
    v9 = [(ActionCoordinator *)self appCoordinator];
    [v11 setShareDelegate:v9];

    [v11 setActionDelegate:self];
    v10 = objc_loadWeakRetained(&self->_containerViewController);
    [v10 presentController:v11 animated:1];
  }
}

- (void)viewController:(id)a3 enterFlyoverForMapItem:(id)a4
{
  v6 = a4;
  v7 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 postNotificationName:@"SearchViewPreventAutoPresentingKeyboard_rdar_126940251" object:0];
  }

  v10 = [(ActionCoordinator *)self appCoordinator];
  [v10 enterFlyoverForMapItem:v6];
}

- (void)viewController:(id)a3 selectTransitLineItem:(id)a4 zoomToMapRegion:(BOOL)a5 preferredLayout:(unint64_t)a6
{
  v7 = a5;
  v9 = a4;
  v10 = [(ActionCoordinator *)self lineCardVC];
  v11 = [v10 labelMarker];
  [(ActionCoordinator *)self presentLineCardForItem:v9 labelMarker:v11 loading:sub_1005B1B14(v9) overDisambiguation:0 preferredLayout:a6];
  lineSelectionAction = self->_lineSelectionAction;
  if (!lineSelectionAction)
  {
    v13 = [TransitLineSelectionActionController alloc];
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    v15 = [(TransitLineSelectionActionController *)v13 initWithContainerViewController:WeakRetained actionCoordinator:self];
    v16 = self->_lineSelectionAction;
    self->_lineSelectionAction = v15;

    lineSelectionAction = self->_lineSelectionAction;
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10091E798;
  v20[3] = &unk_10162E788;
  v20[4] = self;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  v24 = a6;
  v17 = v11;
  v18 = v10;
  v19 = v9;
  [(TransitLineSelectionActionController *)lineSelectionAction selectLine:v19 zoomToMapRegion:v7 onActivation:v20];
}

- (void)_presentVenuesPlaceCardItem:(id)a3 shouldSaveSelectionState:(BOOL)a4 source:(unint64_t)a5 resetPlaceCardViewControllerBlock:(id)a6
{
  v8 = a4;
  v26 = a3;
  v10 = a6;
  if ([(ActionCoordinator *)self isRoutePlanningPresented])
  {
    v11 = [(ActionCoordinator *)self currentViewController];
    v12 = [(ActionCoordinator *)self venueCardCoordinator];
    v13 = [v12 topViewController];

    if (v11 == v13)
    {
      v14 = [(ActionCoordinator *)self venueCardCoordinator];
      [v14 popVenueCardItem:0];
    }
  }

  v15 = [(ActionCoordinator *)self venueCardCoordinator];
  v16 = [v15 pushVenueCardItem:v26 source:a5 savePlaceCardSelectionState:v8];

  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  if (sub_10000FA08(WeakRetained) == 5 || v16 != 3)
  {
    v19 = [(ActionCoordinator *)self currentViewController];
    v20 = [(ActionCoordinator *)self resultsViewController];
    v18 = v19 == v20;
  }

  else
  {
    v18 = 1;
  }

  if (![(ActionCoordinator *)self _isBuildingMultipointRoute])
  {
    [(ActionCoordinator *)self _exitRoutePlanningIfNeededAnimated:0 restoreStashedMapSelection:0];
  }

  if (a5 == 4 && v8)
  {
    v21 = [(ActionCoordinator *)self mapSelectionManager];
    [v21 clearSelection];
  }

  v22 = [(ActionCoordinator *)self venueCardCoordinator];
  v23 = [v22 isCardStackEmpty];

  if (v23)
  {
    v24 = [(ActionCoordinator *)self searchPinsManager];
    [v24 clearLinkedPlacesAndPolygon];
  }

  v25 = [(ActionCoordinator *)self placeCardForVenuesViewController:v26];
  v10[2](v10, v25);

  [(ActionCoordinator *)self presentPlaceCard:v25 canReplaceCurrentIfNecessary:v18];
}

- (void)_cleanUpVenuesStackForNonVenuePlaceCardItem:(id)a3
{
  if (([a3 isVenueItem] & 1) == 0)
  {
    v4 = [(ActionCoordinator *)self _isBuildingMultipointRoute];
    v5 = [(ActionCoordinator *)self venueCardCoordinator];
    v6 = [v5 venueIdForCurrentCardStack];

    if (v6)
    {
      if ((v4 & 1) == 0)
      {
        [(ActionCoordinator *)self _cleanupRoutePlanningIfNeededAnimated:0];
        v7 = [(ActionCoordinator *)self venueCardCoordinator];
        [v7 removeAllCards];

        [(ActionCoordinator *)self presentSearch];
      }
    }
  }
}

- (int64_t)_excludedContentForPlaceCardItem:(id)a3
{
  v4 = a3;
  if ([(ActionCoordinator *)self isRoutePlanningPresented])
  {
    v5 = 18;
  }

  else
  {
    v5 = 16;
  }

  v6 = [(ActionCoordinator *)self venuesManager];
  if (([v6 isUserAtVenueWithID:{objc_msgSend(v4, "venueID")}] & 1) == 0)
  {
    v7 = [(ActionCoordinator *)self venuesManager];
    v8 = [v4 personalizedItem];
    [v8 coordinate];
    if (([v7 isUserAtSameVenueAsCoordinate:?] & 1) == 0)
    {
      v9 = [v4 chargeStationWaypointInfo];
      if (!v9)
      {
        v13 = [v4 isCurrentLocation];

        if ((v13 & 1) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }
    }
  }

LABEL_10:
  v5 |= 1uLL;
LABEL_11:
  if (self->_placeCardViewController)
  {
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    v11 = sub_10000FA08(WeakRetained);

    if (v11 == 5)
    {
      v5 |= 0x400uLL;
    }
  }

  return v5;
}

- (void)presentPlaceCardForItem:(id)a3 addToHistory:(BOOL)a4 source:(unint64_t)a5 saveSelectionState:(BOOL)a6 replaceCurrentCard:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v12 = a3;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10091EFCC;
  v34[3] = &unk_10162E738;
  v34[4] = self;
  v13 = objc_retainBlock(v34);
  v14 = [(ActionCoordinator *)self currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_7:
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10091F17C;
    v29[3] = &unk_10162E760;
    v20 = v13;
    v32 = v20;
    v21 = v12;
    v30 = v21;
    v31 = self;
    v33 = a4;
    v22 = objc_retainBlock(v29);
    if ([v21 isVenueItem] && (objc_msgSend(v21, "isDroppedPin") & 1) == 0)
    {
      [(ActionCoordinator *)self _presentVenuesPlaceCardItem:v21 shouldSaveSelectionState:v8 source:a5 resetPlaceCardViewControllerBlock:v22];
LABEL_21:

      v16 = v32;
      goto LABEL_22;
    }

    [(ActionCoordinator *)self _cleanUpVenuesStackForNonVenuePlaceCardItem:v21];
    if ([(ActionCoordinator *)self isRoutePlanningPresented])
    {
      v23 = [(ActionCoordinator *)self placeCardForRoutePlanningViewController];
    }

    else
    {
      placeCardViewController = self->_placeCardViewController;
      if (placeCardViewController)
      {
        v25 = [(PlaceCardViewController *)placeCardViewController placeCardItem];
        if (v20[2](v20, v25, v21))
        {
        }

        else
        {
          v26 = [(ActionCoordinator *)self shouldReusePlaceCardViewController:self->_placeCardViewController];

          if ((v26 & 1) == 0)
          {
            v27 = [(ActionCoordinator *)self _newPlaceCardViewControllerForReuse];
            v28 = 1;
            goto LABEL_18;
          }
        }
      }

      v23 = [(ActionCoordinator *)self placeCardViewController];
    }

    v27 = v23;
    v28 = 0;
LABEL_18:
    (v22[2])(v22, v27);
    [(ActionCoordinator *)self presentPlaceCard:v27 canReplaceCurrentIfNecessary:v7];
    if (v28)
    {
      objc_storeStrong(&self->_placeCardViewController, v27);
    }

    goto LABEL_21;
  }

  v16 = [(ActionCoordinator *)self currentViewController];
  v17 = [v16 placeCardItem];
  if (!(v13[2])(v13, v12, v17))
  {

    goto LABEL_7;
  }

  v18 = [v17 searchResult];
  v19 = [v18 autocompletePerson];

  if (!v19)
  {
    [(ActionCoordinator *)self ensureMapSelectionVisible];
  }

  [PPTNotificationCenter postNotificationIfNeededWithName:MKPlaceViewControllerDidShowNotification object:v16 userInfo:0];

LABEL_22:
}

- (void)viewController:(id)a3 selectSearchResult:(id)a4 addToHistory:(BOOL)a5 source:(unint64_t)a6 saveSelectionState:(BOOL)a7 replaceCurrentCard:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v11 = a5;
  v14 = a3;
  v15 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [v15 parkedCar];
    [(ActionCoordinator *)self viewController:0 selectParkedCar:v16 andPerformAction:0];
  }

  else
  {
    v17 = [v15 mapItem];
    v18 = [v17 _hasHikeInfo];

    if (v18)
    {
      objc_initWeak(&location, self);
      v19 = [(ActionCoordinator *)self appCoordinator];
      v20 = [v15 mapItem];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_10091F5D8;
      v33[3] = &unk_10165FBC0;
      objc_copyWeak(v34, &location);
      v34[1] = a6;
      [v19 enterRouteCreationWithMapItem:v20 completion:v33];

      objc_destroyWeak(v34);
      objc_destroyWeak(&location);
    }

    else
    {
      v21 = [[PlaceCardItem alloc] initWithSearchResult:v15];
      v22 = +[CustomLocationManager sharedManager];
      v23 = [(ActionCoordinator *)self newTraits];
      [v22 processSearchResult:v15 traits:v23];

      if (a6 == 8)
      {
        v24 = [(ActionCoordinator *)self currentSearchSession];
        v25 = [v24 singleResultMode];

        if (v25)
        {
          v30 = [(ActionCoordinator *)self searchSessionManager];
          v26 = [v30 currentSearchSession];
          v32 = [v26 searchFieldItem];

          v27 = [v32 punchInDetails];
          v31 = [v27 completedSearchQuery];

          v29 = [(ActionCoordinator *)self searchModeViewController];
          v28 = [v15 retainedSearchMetadata];
          [v29 retainSpotlightQuery:v31 metadata:v28];
        }
      }

      [(ActionCoordinator *)self presentPlaceCardForItem:v21 addToHistory:v11 source:a6 saveSelectionState:v9 replaceCurrentCard:v8];
    }
  }
}

- (void)viewController:(id)a3 selectMapItem:(id)a4 address:(id)a5 addToHistory:(BOOL)a6 source:(unint64_t)a7
{
  v8 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [[PlaceCardItem alloc] initWithMapItem:v12 address:v11];

  [(ActionCoordinator *)self presentPlaceCardForItem:v13 addToHistory:v8 source:a7 saveSelectionState:1];
}

- (void)viewController:(id)a3 selectPersonalizedItem:(id)a4 source:(unint64_t)a5 saveSelectionState:(BOOL)a6
{
  v6 = a6;
  v22 = a4;
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v22 parkedCar], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    [(ActionCoordinator *)self viewController:0 selectParkedCar:v9 andPerformAction:0];
  }

  else if ((objc_opt_respondsToSelector() & 1) != 0 && ([v22 incidentReport], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v11;
    v12 = +[MKMapService sharedService];
    v13 = [(PlaceCardItem *)v10 incidentType];
    if (v13 >= 0x14)
    {
      v14 = [NSString stringWithFormat:@"(unknown: %i)", v13];
    }

    else
    {
      v14 = *(&off_10162ED48 + v13);
    }

    [v12 captureUserAction:1031 onTarget:511 eventValue:v14];

    v16 = [(ActionCoordinator *)self trafficIncidentVC];
    [v16 updateWithReport:v10];

    v17 = [(ActionCoordinator *)self containerViewController];
    v18 = [v17 currentViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v20 = [(ActionCoordinator *)self containerViewController];
    v21 = [(ActionCoordinator *)self trafficIncidentVC];
    if (isKindOfClass)
    {
      [v20 replaceCurrentWithController:v21 moveToContaineeDefaultLayout:1];
    }

    else
    {
      [v20 presentController:v21 animated:1 useDefaultContaineeLayout:1];
    }
  }

  else
  {
    v10 = [[PlaceCardItem alloc] initWithPersonalizedItem:v22];
    v15 = [v22 address];
    [(ActionCoordinator *)self presentPlaceCardForItem:v10 addToHistory:v15 == 0 source:a5 saveSelectionState:v6 replaceCurrentCard:1];
  }
}

- (void)viewController:(id)a3 openSearchResult:(id)a4
{
  v9 = a4;
  v5 = a4;
  v6 = [NSArray arrayWithObjects:&v9 count:1];
  v7 = [SearchInfo searchInfoWithResults:v6, v9];

  v8 = [(ActionCoordinator *)self searchPinsManager];
  [v8 setSearchPinsFromSearchInfo:v7 scrollToResults:1 displayPlaceCardForResult:v5 animated:1 completion:0];
}

- (void)viewController:(id)a3 focusSearchResult:(id)a4
{
  v5 = a4;
  v6 = [(ActionCoordinator *)self mapSelectionManager];
  v7 = [(ActionCoordinator *)self mapView];
  v8 = [(ActionCoordinator *)self searchPinsManager];
  v9 = [v8 customPOIsController];
  v10 = [v5 personalizedItemKey];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10091FB18;
  v13[3] = &unk_10162E710;
  v14 = v7;
  v15 = v6;
  v16 = self;
  v11 = v6;
  v12 = v7;
  [v9 customFeatureForKey:v10 completion:v13];
}

- (void)viewControllerRemoveSearchResultFocus:(id)a3
{
  v6 = [(ActionCoordinator *)self mapView];
  v4 = [(ActionCoordinator *)self mapSelectionManager];
  [v4 setIgnoreSelectionChanges:1];

  [v6 _deselectLabelMarkerAnimated:1];
  v5 = [(ActionCoordinator *)self mapSelectionManager];
  [v5 setIgnoreSelectionChanges:0];
}

- (void)viewController:(id)a3 openTransitIncidents:(id)a4 fromView:(id)a5 withUserInfo:(id)a6
{
  v19 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 count])
  {
    v11 = [(ActionCoordinator *)self containerViewController];
    v12 = [v11 traitCollection];
    v13 = [v12 userInterfaceIdiom];

    if (v13 == 5)
    {
      if (v10)
      {
        v14 = [[MapsIncidentsViewController alloc] initWithTransitIncidents:v9];
        [(MapsIncidentsViewController *)v14 setModalPresentationStyle:7];
        v15 = [(MapsIncidentsViewController *)v14 popoverPresentationController];
        [v15 setPermittedArrowDirections:12];
        [v15 setSourceView:v10];
        WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
        [WeakRetained _maps_topMostPresentViewController:v14 animated:1 completion:0];

LABEL_10:
        goto LABEL_11;
      }

      v14 = [[MapsTransitIncidentsContaineeViewController alloc] initWithTransitIncidents:v9];
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        [v19 _maps_topMostPresentViewController:v14 animated:1 completion:0];
        goto LABEL_10;
      }

      v17 = v14;
    }

    else
    {
      v17 = [[MapsTransitIncidentsContaineeViewController alloc] initWithTransitIncidents:v9];
      v14 = v17;
    }

    [(ContaineeViewController *)v17 setContaineeDelegate:self];
    [(MapsIncidentsViewController *)v14 setPreferredPresentationStyle:5];
    v18 = objc_loadWeakRetained(&self->_containerViewController);
    [v18 presentController:v14 animated:1 completion:0];

    goto LABEL_10;
  }

LABEL_11:
}

- (void)viewController:(id)a3 openPlainTextFileURL:(id)a4
{
  v5 = a4;
  v6 = [UINavigationController alloc];
  v7 = [[PlainTextAttributionViewController alloc] initWithFileURL:v5];

  v9 = [v6 initWithRootViewController:v7];
  if (!sub_10000FA08(v9))
  {
    [v9 setModalPresentationStyle:2];
  }

  v8 = [(ActionCoordinator *)self containerViewController];
  [v8 _maps_topMostPresentViewController:v9 animated:1 completion:0];
}

- (void)viewController:(id)a3 openURL:(id)a4
{
  v10 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v10 cardPresentationController];
    v8 = [v7 containerViewController];
  }

  else
  {
    v8 = [(ActionCoordinator *)self containerViewController];
  }

  v9 = [[MapsWebLinkPresenter alloc] initWithPresentingViewController:v8];
  [(MapsWebLinkPresenter *)v9 presentWebURL:v6];
}

- (id)_searchResultFromMapsSuggestionsEntry:(id)a3
{
  v3 = a3;
  if ([v3 type] == 24)
  {
    v4 = [v3 findMyWaypoint];
    if (!v4)
    {
      v9 = sub_10006D178();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v12 = 136315906;
        v13 = "[ActionCoordinator _searchResultFromMapsSuggestionsEntry:]";
        v14 = 2080;
        v15 = "ActionCoordinator.m";
        v16 = 1024;
        v17 = 2028;
        v18 = 2080;
        v19 = "findMyWaypoint != nil";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v12, 0x26u);
      }

      if (sub_100E03634())
      {
        v10 = sub_10006D178();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = +[NSThread callStackSymbols];
          v12 = 138412290;
          v13 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@", &v12, 0xCu);
        }
      }
    }

    v5 = [[SearchResult alloc] initWithComposedWaypoint:v4];
  }

  else
  {
    v4 = [[MapsLocationOfInterest alloc] initWithMapsSuggestionEntry:v3];
    if (v4)
    {
      v6 = [SearchResult alloc];
      v7 = [(MapsLocationOfInterest *)v4 mapItem];
      v5 = [(SearchResult *)v6 initWithMapItem:v7];

      [(SearchResult *)v5 setLocationOfInterest:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)viewController:(id)a3 openCommuteEntry:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(SearchFieldItem);
  v9 = +[SearchResult currentLocationSearchResult];
  [(SearchFieldItem *)v8 setSearchResult:v9];

  v10 = objc_alloc_init(SearchFieldItem);
  v11 = [(ActionCoordinator *)self _searchResultFromMapsSuggestionsEntry:v6];

  [(SearchFieldItem *)v10 setSearchResult:v11];
  v12 = [DirectionItem alloc];
  v18[0] = v8;
  v18[1] = v10;
  v13 = [NSArray arrayWithObjects:v18 count:2];
  v14 = [(DirectionItem *)v12 initWithItems:v13 transportType:1];

  v16 = @"DirectionsSessionInitiatorKey";
  v17 = &off_1016E77F0;
  v15 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  [(ActionCoordinator *)self viewController:v7 doDirectionItem:v14 allowToPromptEditing:0 withUserInfo:v15];
}

- (void)viewController:(id)a3 openMapsSuggestionEntry:(id)a4 withUserInfo:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v8 containsKey:@"MapsSuggestionsRoutingNotAvailableKey"])
  {
    v115 = [v8 BOOLeanForKey:@"MapsSuggestionsRoutingNotAvailableKey"];
  }

  else
  {
    v115 = 0;
  }

  v10 = [v8 BOOLeanForKey:@"MapsSuggestionsAlreadyThereKey"];
  v11 = +[MKLocationManager sharedLocationManager];
  v12 = [v11 isAuthorizedForPreciseLocation];

  v13 = [(ActionCoordinator *)self containerViewController];
  v14 = [v13 traitCollection];
  v15 = [v14 userInterfaceIdiom] == 1;

  v16 = [v9 objectForKeyedSubscript:@"MSGEntryForceShowPlacecardOnTap"];
  v17 = [v16 BOOLValue];

  v18 = [v8 MKMapItem];
  v19 = [v9 mutableCopy];

  [v19 setObject:&off_1016E77F0 forKeyedSubscript:@"DirectionsSessionInitiatorKey"];
  v114 = v19;
  v20 = [v19 copy];
  v144[0] = _NSConcreteStackBlock;
  v144[1] = 3221225472;
  v144[2] = sub_100921514;
  v144[3] = &unk_10162E698;
  v144[4] = self;
  v21 = v7;
  v145 = v21;
  v22 = v20;
  v146 = v22;
  v23 = objc_retainBlock(v144);
  v140[0] = _NSConcreteStackBlock;
  v140[1] = 3221225472;
  v140[2] = sub_100921714;
  v140[3] = &unk_10162E6C0;
  v140[4] = self;
  v24 = v8;
  v141 = v24;
  v120 = v21;
  v142 = v120;
  v119 = v22;
  v143 = v119;
  v25 = objc_retainBlock(v140);
  v129[0] = _NSConcreteStackBlock;
  v129[1] = 3221225472;
  v129[2] = sub_10092199C;
  v129[3] = &unk_10162E6E8;
  v26 = v18;
  v130 = v26;
  v131 = self;
  v135 = v115;
  v136 = v10;
  v137 = v12;
  v138 = v15;
  v139 = v17;
  v27 = v23;
  v133 = v27;
  v28 = v24;
  v132 = v28;
  v29 = v25;
  v134 = v29;
  v30 = objc_retainBlock(v129);
  switch([v28 type])
  {
    case 1uLL:
    case 2uLL:
    case 0x13uLL:
      if (![v28 isShortcutForSetup])
      {
        goto LABEL_5;
      }

      v31 = [ShortcutEditSession editSessionWithSuggestion:v28];
      [(ActionCoordinator *)self viewController:v120 showAddShortcut:v31];

      goto LABEL_6;
    case 3uLL:
    case 4uLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x17uLL:
      goto LABEL_5;
    case 5uLL:
    case 0x15uLL:
    case 0x19uLL:
      (v27[2])(v27, v28);
      goto LABEL_6;
    case 7uLL:
      v38 = +[ParkedCarManager sharedManager];
      v127[0] = _NSConcreteStackBlock;
      v127[1] = 3221225472;
      v127[2] = sub_100921C74;
      v127[3] = &unk_101658E78;
      v127[4] = self;
      v128 = v120;
      [v38 fetchParkedCar:v127];

      goto LABEL_6;
    case 8uLL:
      if (v26)
      {
        v40 = +[RestaurantReservationAnalyticsBookedSession currentAnalyticsBookedSessionForMuid:createIfNotPresent:](RestaurantReservationAnalyticsBookedSession, "currentAnalyticsBookedSessionForMuid:createIfNotPresent:", [v26 _muid], 1);
        [v40 setTappedProactiveTrayItem:1];
        [v40 setMuid:{objc_msgSend(v26, "_muid")}];
        v41 = [v26 _restaurantLink_firstProviderIdentifier];
        [v40 setAppID:v41];

        (v27[2])(v27, v28);
      }

      goto LABEL_6;
    case 9uLL:
      if (sub_100016C50())
      {
        v42 = [v28 stringForKey:@"MapsSuggestionsOriginBundleIDKey"];
        v116 = [v28 stringForKey:@"MapsSuggestionsRideBookingRideIDKey"];
        v112 = [RideBookingAccessProxy rideBookingCurrentBookedSessionForAppIdentifier:v42 rideIdentifier:v116];
        [v112 setTappedProactiveTrayItem:1];
        v43 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          v44 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/UI/ActionCoordinator.m");
          v45 = [[NSString alloc] initWithFormat:@"Continuing the RideBookingSession with identifier: %@", v42];
          *location = 136315394;
          *&location[4] = v44;
          v150 = 2112;
          v151 = v45;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", location, 0x16u);
        }

        if (v42)
        {
          v46 = [(ActionCoordinator *)self appCoordinator];
          [v46 continueRideBookingSessionWithApplicationIdentifier:v42];
        }
      }

      goto LABEL_6;
    case 0xAuLL:
      v53 = [v28 stringForKey:@"MapsSuggestionsCarPlayEnergyQueryString"];
      v54 = objc_alloc_init(SearchFieldItem);
      [(SearchFieldItem *)v54 setSearchString:v53];
      v147 = @"SearchSessionIsLowFuelSearch";
      v148 = &__kCFBooleanTrue;
      v55 = [NSDictionary dictionaryWithObjects:&v148 forKeys:&v147 count:1];
      [(ActionCoordinator *)self viewController:v120 doSearchItem:v54 withUserInfo:v55];

      goto LABEL_6;
    case 0xBuLL:
      v113 = objc_alloc_init(NSMutableArray);
      v110 = [SearchFieldItem searchFieldItemsForRouteInSuggestionsEntry:v28 excludeCurrentLocationOrigin:0];
      [v113 addObjectsFromArray:v110];
      v47 = sub_100798A3C();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        v48 = [v110 count];
        *location = 134217984;
        *&location[4] = v48;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "Extracted %lu items from MSG entry.", location, 0xCu);
      }

      v49 = [v110 firstObject];
      v50 = [v49 searchResult];
      v51 = [v50 isDynamicCurrentLocation];

      if (v51)
      {
        v52 = sub_100798A3C();
        if (os_log_type_enabled(&v52->super, OS_LOG_TYPE_INFO))
        {
          *location = 0;
        }
      }

      else
      {
        v52 = objc_alloc_init(SearchFieldItem);
        v56 = +[SearchResult currentLocationSearchResult];
        [(SearchFieldItem *)v52 setSearchResult:v56];

        [v113 insertObject:v52 atIndex:0];
      }

      v57 = sub_100798A3C();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        *location = 138412290;
        *&location[4] = v113;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Attempting to resume route to %@", location, 0xCu);
      }

      v58 = [DirectionItem alloc];
      v59 = [v28 transportType] - 1;
      if (v59 > 5)
      {
        v60 = 1;
      }

      else
      {
        v60 = qword_101216278[v59];
      }

      v111 = [(DirectionItem *)v58 initWithItems:v113 transportType:v60];
      if (!v115)
      {
        goto LABEL_53;
      }

      v61 = [v113 count];
      v62 = sub_100798A3C();
      v63 = os_log_type_enabled(v62, OS_LOG_TYPE_ERROR);
      if (v61 > 2)
      {
        if (v63)
        {
          *location = 0;
          _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "MPR resume route marked as unroutable, but assuming it actually is.", location, 2u);
        }

LABEL_53:
        if ([v28 containsKey:@"MapsSuggestionsResumeRouteRouteRequestStorage"])
        {
          v73 = [v28 routeRequestStorageForKey:@"MapsSuggestionsResumeRouteRouteRequestStorage"];
          v74 = [DrivePreferences alloc];
          v75 = [v73 automobileOptions];
          v76 = +[NSUserDefaults standardUserDefaults];
          v77 = [(DrivePreferences *)v74 initWithAutomobileOptions:v75 defaults:v76];
          [(DirectionItem *)v111 setDrivePreferences:v77];

          v78 = [TransitPreferences alloc];
          v79 = [v73 transitOptions];
          v80 = +[NSUserDefaults standardUserDefaults];
          v81 = [(TransitPreferences *)v78 initWithTransitOptions:v79 defaults:v80];
          [(DirectionItem *)v111 setTransitPreferences:v81];

          v82 = [WalkPreferences alloc];
          v83 = [v73 walkingOptions];
          v84 = +[NSUserDefaults standardUserDefaults];
          v85 = [(WalkPreferences *)v82 initWithWalkingOptions:v83 defaults:v84];
          [(DirectionItem *)v111 setWalkPreferences:v85];

          v86 = [CyclePreferences alloc];
          v87 = [v73 cyclingOptions];
          v88 = +[NSUserDefaults standardUserDefaults];
          v89 = [(CyclePreferences *)v86 initWithCyclingOptions:v87 defaults:v88];
          [(DirectionItem *)v111 setCyclePreferences:v89];
        }

        v64 = [NSMutableDictionary dictionaryWithDictionary:v119];
        [(SearchFieldItem *)v64 setObject:&__kCFBooleanTrue forKeyedSubscript:@"DirectionsBeginNavigationSessionImmediately"];
        [(SearchFieldItem *)v64 setObject:&__kCFBooleanTrue forKeyedSubscript:@"DirectionsIsResumedNavigationSession"];
        [(SearchFieldItem *)v64 setObject:&off_1016E77F0 forKeyedSubscript:@"DirectionsSessionInitiatorKey"];
        if ([v28 containsKey:@"MapsSuggestionsResumeRouteRouteRequestStorage"])
        {
          v118 = [v28 routeRequestStorageForKey:@"MapsSuggestionsResumeRouteRouteRequestStorage"];
          v90 = [DrivePreferences alloc];
          v91 = [v118 automobileOptions];
          v92 = +[NSUserDefaults standardUserDefaults];
          v93 = [(DrivePreferences *)v90 initWithAutomobileOptions:v91 defaults:v92];
          [(DirectionItem *)v111 setDrivePreferences:v93];

          v94 = [TransitPreferences alloc];
          v95 = [v118 transitOptions];
          v96 = +[NSUserDefaults standardUserDefaults];
          v97 = [(TransitPreferences *)v94 initWithTransitOptions:v95 defaults:v96];
          [(DirectionItem *)v111 setTransitPreferences:v97];

          v98 = [WalkPreferences alloc];
          v99 = [v118 walkingOptions];
          v100 = +[NSUserDefaults standardUserDefaults];
          v101 = [(WalkPreferences *)v98 initWithWalkingOptions:v99 defaults:v100];
          [(DirectionItem *)v111 setWalkPreferences:v101];

          v102 = [CyclePreferences alloc];
          v103 = [v118 cyclingOptions];
          v104 = +[NSUserDefaults standardUserDefaults];
          v105 = [(CyclePreferences *)v102 initWithCyclingOptions:v103 defaults:v104];
          [(DirectionItem *)v111 setCyclePreferences:v105];

          v106 = [v118 resumeRouteHandleStorage];
          [(SearchFieldItem *)v64 setObject:v106 forKeyedSubscript:@"DirectionsResumeRouteHandleStorage"];
        }

        v107 = [v28 sharingContacts];
        [(SearchFieldItem *)v64 setObject:v107 forKeyedSubscript:@"DirectionsPreviousContactsForTripSharing"];
        [(ActionCoordinator *)self viewController:v120 doDirectionItem:v111 withUserInfo:v64];
        v108 = +[MKMapService sharedService];
        if ([v113 count] <= 2)
        {
          v109 = 74;
        }

        else
        {
          v109 = 305;
        }

        [v108 captureUserAction:v109 onTarget:8 eventValue:0];
      }

      else
      {
        if (v63)
        {
          *location = 0;
          _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "NOT Resuming route as it's marked as unroutable", location, 2u);
        }

        v64 = objc_alloc_init(SearchFieldItem);
        v65 = [SearchResult alloc];
        v66 = [v28 MKMapItem];
        v67 = [(SearchResult *)v65 initWithMapItem:v66];
        [(SearchFieldItem *)v64 setSearchResult:v67];

        [(ActionCoordinator *)self viewController:v120 doSearchItem:v64 withUserInfo:0];
      }

LABEL_6:
      return;
    case 0xCuLL:
      v32 = objc_alloc_init(SearchFieldItem);
      v33 = [v28 stringForKey:@"MapsSuggestionsAppConnectionValueKey"];
      [(SearchFieldItem *)v32 setAddressString:v33];

      if (v26)
      {
        v34 = [[SearchResult alloc] initWithMapItem:v26];
        [(SearchFieldItem *)v32 setSearchResult:v34];
        v35 = [(SearchFieldItem *)v32 searchResult];
        [v35 setHasIncompleteMetadata:1];

        [(ActionCoordinator *)self viewController:v120 doSearchItem:v32 withUserInfo:v119];
      }

      else
      {
        v34 = [v28 URLForKey:@"MapsSuggestionsAppConnectionMapItemURL"];
        v68 = [(SearchResult *)v34 absoluteString];
        v69 = [v68 length] == 0;

        if (!v69)
        {
          v117 = [MKMapItem mapItemsFromURL:v34 options:0];
          v70 = [v117 firstObject];
          v71 = [[SearchResult alloc] initWithMapItem:v70];
          [(SearchFieldItem *)v32 setSearchResult:v71];
          v72 = [(SearchFieldItem *)v32 searchResult];
          [v72 setHasIncompleteMetadata:1];
        }

        [(ActionCoordinator *)self viewController:0 doSearchItem:v32 withUserInfo:0];
      }

      goto LABEL_6;
    case 0x14uLL:
      objc_initWeak(location, self);
      v39 = +[VGVirtualGarageService sharedService];
      v122[0] = _NSConcreteStackBlock;
      v122[1] = 3221225472;
      v122[2] = sub_100921D7C;
      v122[3] = &unk_10165F290;
      objc_copyWeak(&v123, location);
      [v39 virtualGarageGetListOfUnpairedVehiclesWithReply:v122];

      objc_destroyWeak(&v123);
      objc_destroyWeak(location);
      goto LABEL_6;
    case 0x16uLL:
      v36 = [v28 uniqueIdentifier];
      v37 = [v36 isEqualToString:@"NearbyTransit"];

      if (v37)
      {
        [(ActionCoordinator *)self viewControllerPresentNearbyTransitDepartures:v120];
        [GEOAPPortal captureUserAction:214 target:8 value:0];
      }

      goto LABEL_6;
    case 0x18uLL:
      if (isLikelyMeetup())
      {
LABEL_5:
        (v30[2])(v30, v28);
      }

      else if (isRecentlyShared())
      {
        objc_initWeak(location, self);
        v124[0] = _NSConcreteStackBlock;
        v124[1] = 3221225472;
        v124[2] = sub_100921C94;
        v124[3] = &unk_10165EDA8;
        objc_copyWeak(&v126, location);
        v125 = v120;
        [_TtC4Maps22MapsAutocompletePerson autoCompletePersonFrom:v28 completionHandler:v124];

        objc_destroyWeak(&v126);
        objc_destroyWeak(location);
      }

      goto LABEL_6;
    default:
      goto LABEL_6;
  }
}

- (void)viewController:(id)a3 openFavoriteItem:(id)a4 withUserInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 mkMapItem];
  v33 = [v9 isAlreadyThere];
  v12 = [v10 objectForKeyedSubscript:@"MSGEntryForceShowPlacecardOnTap"];
  v32 = [v12 BOOLValue];

  v13 = +[MKLocationManager sharedLocationManager];
  v31 = [v13 isAuthorizedForPreciseLocation];

  v14 = [(ActionCoordinator *)self containerViewController];
  v15 = [v14 traitCollection];
  v16 = [v15 userInterfaceIdiom] == 1;

  v17 = [v11 _canGetDirections];
  v18 = [v10 mutableCopy];

  [v18 setObject:&off_1016E77F0 forKeyedSubscript:@"DirectionsSessionInitiatorKey"];
  v19 = [v18 copy];
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_100922600;
  v48[3] = &unk_10162E620;
  v48[4] = self;
  v20 = objc_retainBlock(v48);
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_1009227D8;
  v45[3] = &unk_10162E648;
  v45[4] = self;
  v21 = v8;
  v46 = v21;
  v22 = v19;
  v47 = v22;
  v23 = objc_retainBlock(v45);
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100922A3C;
  v34[3] = &unk_10162E670;
  v24 = v11;
  v35 = v24;
  v36 = self;
  v40 = v17;
  v41 = v33;
  v42 = v31;
  v43 = v16;
  v44 = v32;
  v25 = v20;
  v38 = v25;
  v26 = v9;
  v37 = v26;
  v27 = v23;
  v39 = v27;
  v28 = objc_retainBlock(v34);
  v29 = [v26 type];
  if (v29 >= 4)
  {
    if (v29 == 6)
    {
      [(ActionCoordinator *)self viewControllerPresentNearbyTransitDepartures:v21];
      [GEOAPPortal captureUserAction:214 target:8 value:0];
      goto LABEL_9;
    }

    if (v29 != 5)
    {
      goto LABEL_9;
    }
  }

  if ([v26 isShortcutForSetup])
  {
    v30 = [ShortcutEditSession addSessionWithShortcut:v26];
    [(ActionCoordinator *)self viewController:v21 showAddShortcut:v30];
  }

  else
  {
    (v28[2])(v28, v26);
  }

LABEL_9:
}

- (void)containerViewControllerDidResignContainee:(id)a3 toContainee:(id)a4
{
  v10 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(ActionCoordinator *)self mapSelectionManager];
    [v7 setIgnoreSelectionChanges:0];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(RoutePlanningMapController *)self->_routePlanningMapController setSelectCurrentRoute:1];
    }
  }

  [(ActionCoordinator *)self updateRouteAnnotations];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    collectionCreateVCDidDismissHandler = self->_collectionCreateVCDidDismissHandler;
    if (collectionCreateVCDidDismissHandler)
    {
      collectionCreateVCDidDismissHandler[2]();
      v9 = self->_collectionCreateVCDidDismissHandler;
      self->_collectionCreateVCDidDismissHandler = 0;
    }
  }
}

- (void)containerViewControllerWillPresentContainee:(id)a3 overContainee:(id)a4
{
  v8 = a3;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      [(SearchViewController *)self->_searchModeViewController clearRetainedSearchQuery];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(ActionCoordinator *)self mapSelectionManager];
    [v7 setIgnoreSelectionChanges:1];
  }

  [(ActionCoordinator *)self updateRouteAnnotations];
}

- (void)presentGuidesHomeWithGuideLocation:(id)a3
{
  v4 = a3;
  v5 = [GuidesHomeViewController alloc];
  v6 = [(ActionCoordinator *)self newTraits];
  v7 = [(GuidesHomeViewController *)v5 initWithGuideLocation:v4 withTraits:v6];

  [(ContaineeViewController *)v7 setContaineeDelegate:self];
  [(GuidesHomeViewController *)v7 setActionDelegate:self];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained presentController:v7 animated:1];

  guideHomeVC = self->_guideHomeVC;
  self->_guideHomeVC = v7;
}

- (void)presentVenueCategoryWithVenueCategoryItem:(id)a3
{
  v11 = a3;
  v4 = [(ActionCoordinator *)self venueCardCoordinator];
  v5 = [v4 topViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 contentDownloader];

  [v8 searchWillStart];
  if ([v11 isAutoCompleteCategory])
  {
    v9 = [v11 venueIdentifier];
    v10 = [v11 searchCategory];
    [(ActionCoordinator *)self viewController:0 presentVenueFromAutoCompleteWithVenueIdentifier:v9 searchCategory:v10 source:2];
  }
}

- (void)presentLoadingResults
{
  v3 = [(ActionCoordinator *)self resultsViewController];
  v4 = [v3 cardPresentationController];
  [v4 setHidden:0];

  if (!MapsFeature_IsEnabled_SearchAndDiscovery())
  {
    goto LABEL_14;
  }

  v5 = [(ActionCoordinator *)self currentViewController];
  if (!v5)
  {
    if ([(ActionCoordinator *)self isPresentingAddStopSearchResults]|| [(ActionCoordinator *)self isRoutePlanningPresented])
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v6 = v5;
  v7 = [(ActionCoordinator *)self currentViewController];
  if (v7 != self->_routeSearchVC && ![(ActionCoordinator *)self isPresentingAddStopSearchResults])
  {
    v8 = [(ActionCoordinator *)self isRoutePlanningPresented];

    if (v8)
    {
      goto LABEL_14;
    }

LABEL_10:
    v9 = +[UIDevice currentDevice];
    v10 = [v9 userInterfaceIdiom];

    if (v10 == 5)
    {
      if (!_UISolariumEnabled() || !self->_searchCardViewController)
      {
        goto LABEL_14;
      }

      WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
      searchCardViewController = self->_searchCardViewController;
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1009234C0;
      v19[3] = &unk_101661570;
      v19[4] = self;
      v20 = v3;
      [WeakRetained presentController:searchCardViewController animated:1 completion:v19];

      v13 = v20;
    }

    else
    {
      v15 = objc_loadWeakRetained(&self->_containerViewController);
      v16 = [(ActionCoordinator *)self searchModeViewController];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1009234CC;
      v17[3] = &unk_101661570;
      v17[4] = self;
      v18 = v3;
      [v15 presentController:v16 animated:1 completion:v17];

      v13 = v18;
    }

    goto LABEL_15;
  }

LABEL_14:
  v14 = objc_loadWeakRetained(&self->_containerViewController);
  [v14 presentController:v3];

LABEL_15:
}

- (void)clearSharedTrips
{
  v2 = [(ActionCoordinator *)self appCoordinator];
  [v2 closeSharedTrips];
}

- (void)presentUnsupportedTransportTypeOrProtocolAlertForSharedTrip:(id)a3
{
  v4 = a3;
  v5 = [(ActionCoordinator *)self appCoordinator];
  [v5 presentUnsupportedTransportTypeOrProtocolAlertForSharedTrip:v4];
}

- (void)presentChinaAlertForSharedTrip:(id)a3
{
  v4 = a3;
  v5 = [(ActionCoordinator *)self appCoordinator];
  [v5 presentChinaAlertForSharedTrip:v4];
}

- (void)presentSharedTrip:(id)a3 inPopoverFromView:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [[SharedTripContaineeViewController alloc] initWithSharedTrip:v7];

  [(ControlContaineeViewController *)v10 setDelegate:self];
  [(SharedTripContaineeViewController *)v10 setActionDelegate:self];
  [(SharedTripContaineeViewController *)v10 setModalPresentationStyle:7];
  v8 = [(SharedTripContaineeViewController *)v10 popoverPresentationController];
  [v8 setSourceView:v6];

  [v8 setPermittedArrowDirections:12];
  v9 = [(ActionCoordinator *)self containerViewController];
  [v9 _maps_topMostPresentViewController:v10 animated:1 completion:0];
}

- (void)presentSharedTrip:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v6 = sub_10000FA08(WeakRetained);

  if (v6 == 5)
  {
    [(ActionCoordinator *)self _exitRoutePlanningIfNeededAnimated:1 restoreStashedMapSelection:0];
  }

  v7 = [(ActionCoordinator *)self appCoordinator];
  [v7 openSharedTrip:v4];
}

- (void)presentSharedTrips
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v4 = sub_10000FA08(WeakRetained);

  if (v4 != 5)
  {
    v5 = [(ActionCoordinator *)self appCoordinator];
    [v5 openSharedTrips];
  }
}

- (void)_resetStack
{
  v3 = [(ActionCoordinator *)self mapSelectionManager];
  [v3 clearSelection];

  v4 = [(ActionCoordinator *)self searchPinsManager];
  [v4 clearLinkedPlacesAndPolygon];

  v5 = [(ActionCoordinator *)self searchPinsManager];
  [v5 clearSearchPins];

  [(ActionCoordinator *)self exitRoutePlanningIfNeededAnimated:1];
  v6 = [(ActionCoordinator *)self containerViewController];
  [v6 setControllerStack:&__NSArray0__struct animated:1 completion:0];

  v8 = [(ActionCoordinator *)self containerViewController];
  v7 = [v8 chromeViewController];
  [v7 popToRootContextAnimated:1 completion:0];
}

- (BOOL)_conditionallyPopForContextClass:(Class)a3
{
  v3 = [(ActionCoordinator *)self appCoordinator];
  v4 = [v3 chromeViewController];

  v5 = [v4 contexts];
  v6 = [v5 _maps_firstContextOfClass:objc_opt_class()];

  if (v6)
  {
    v7 = [v4 topContext];

    if (v6 == v7)
    {
      [v4 popToRootContextAnimated:1 completion:0];
    }

    else
    {
      [v4 popToContext:v6 animated:1 completion:0];
    }
  }

  return v6 != 0;
}

- (BOOL)_conditionallyPopForContaineeClass:(Class)a3
{
  v4 = [(ActionCoordinator *)self containerViewController];
  v5 = [v4 currentControllerStack];

  v6 = [v5 lastObject];
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = 1;
  }

  else
  {
    v9 = [v5 firstObject];
    v10 = objc_opt_isKindOfClass();

    if (v10)
    {
      WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
      v12 = [v5 firstObject];
      v15 = v12;
      v8 = 1;
      v13 = [NSArray arrayWithObjects:&v15 count:1];
      [WeakRetained setControllerStack:v13 animated:1 completion:0];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)toggleTopLevelRecentlyAdded
{
  v3 = [(ActionCoordinator *)self containerViewController];
  v4 = sub_10000FA08(v3);

  if (v4 == 5 && ![(ActionCoordinator *)self _conditionallyPopForContaineeClass:objc_opt_class()])
  {
    [(ActionCoordinator *)self _resetStack];
    v5 = [(ActionCoordinator *)self appCoordinator];
    v6 = [v5 chromeViewController];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100923C0C;
    v7[3] = &unk_101661B18;
    v7[4] = self;
    [v6 popToRootContextAnimated:1 completion:v7];
  }
}

- (void)toggleTopLevelVisitedPlaces
{
  v3 = [(ActionCoordinator *)self containerViewController];
  v4 = sub_10000FA08(v3);

  if (v4 == 5 && ![(ActionCoordinator *)self _conditionallyPopForContextClass:objc_opt_class()])
  {
    [(ActionCoordinator *)self _resetStack];
    v5 = [(ActionCoordinator *)self appCoordinator];
    v6 = [v5 chromeViewController];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100923D60;
    v7[3] = &unk_101661B18;
    v7[4] = self;
    [v6 popToRootContextAnimated:1 completion:v7];
  }
}

- (void)toggleTopLevelSavedRoutes
{
  v3 = [(ActionCoordinator *)self containerViewController];
  v4 = sub_10000FA08(v3);

  if (v4 == 5 && ![(ActionCoordinator *)self _conditionallyPopForContaineeClass:objc_opt_class()])
  {
    [(ActionCoordinator *)self _resetStack];
    v5 = [(ActionCoordinator *)self appCoordinator];
    v6 = [v5 chromeViewController];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100923EB4;
    v7[3] = &unk_101661B18;
    v7[4] = self;
    [v6 popToRootContextAnimated:1 completion:v7];
  }
}

- (void)toggleTopLevelGuides
{
  v3 = [(ActionCoordinator *)self containerViewController];
  v4 = sub_10000FA08(v3);

  if (v4 == 5 && ![(ActionCoordinator *)self _conditionallyPopForContaineeClass:objc_opt_class()])
  {
    [(ActionCoordinator *)self _resetStack];
    v5 = [(ActionCoordinator *)self appCoordinator];
    v6 = [v5 chromeViewController];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100924008;
    v7[3] = &unk_101661B18;
    v7[4] = self;
    [v6 popToRootContextAnimated:1 completion:v7];
  }
}

- (void)toggleTopLevelPlaces
{
  v3 = [(ActionCoordinator *)self containerViewController];
  v4 = sub_10000FA08(v3);

  if (v4 == 5 && ![(ActionCoordinator *)self _conditionallyPopForContaineeClass:objc_opt_class()])
  {
    [(ActionCoordinator *)self _resetStack];
    v5 = [(ActionCoordinator *)self appCoordinator];
    v6 = [v5 chromeViewController];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10092415C;
    v7[3] = &unk_101661B18;
    v7[4] = self;
    [v6 popToRootContextAnimated:1 completion:v7];
  }
}

- (void)toggleTopLevelPinned
{
  v3 = [(ActionCoordinator *)self containerViewController];
  v4 = sub_10000FA08(v3);

  if (v4 == 5 && ![(ActionCoordinator *)self _conditionallyPopForContaineeClass:objc_opt_class()])
  {
    [(ActionCoordinator *)self _resetStack];
    v5 = [(ActionCoordinator *)self appCoordinator];
    v6 = [v5 chromeViewController];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1009242B0;
    v7[3] = &unk_101661B18;
    v7[4] = self;
    [v6 popToRootContextAnimated:1 completion:v7];
  }
}

- (void)toggleTopLevelRecents
{
  v3 = [(ActionCoordinator *)self containerViewController];
  v4 = sub_10000FA08(v3);

  if (v4 == 5 && ![(ActionCoordinator *)self _conditionallyPopForContaineeClass:objc_opt_class()])
  {
    v5 = [(ActionCoordinator *)self appCoordinator];
    v6 = [v5 chromeViewController];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1009243FC;
    v7[3] = &unk_101661B18;
    v7[4] = self;
    [v6 popToRootContextAnimated:1 completion:v7];
  }
}

- (void)presentSearchAnimated:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v5 = [(ActionCoordinator *)self searchModeViewController];
  [WeakRetained presentController:v5 animated:v3 useDefaultContaineeLayout:1];
}

- (void)viewControllerPresentSearchEndEditingAnimated:(BOOL)a3
{
  v3 = a3;
  [(ActionCoordinator *)self exitRoutePlanningIfNeededAnimated:0];
  [(ActionCoordinator *)self presentSearchAnimated:v3];
  [(ActionCoordinator *)self clearSearch];
  v5 = [(ActionCoordinator *)self searchModeViewController];
  [v5 endEditing];
}

- (void)viewControllerPresentSearchEditing
{
  [(ActionCoordinator *)self exitRoutePlanningIfNeededAnimated:0];
  [(ActionCoordinator *)self clearSearch];
  [(ActionCoordinator *)self presentSearchAnimated:1];
  v3 = [(ActionCoordinator *)self searchModeViewController];
  [v3 searchBarBecomeFirstResponder];
}

- (void)ensureMapSelectionVisible
{
  v3 = [(ActionCoordinator *)self mapView];
  [v3 _edgeInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(ActionCoordinator *)self containerViewController];
  v13 = [v12 containerStyle];

  if (v13 == 1)
  {
    v14 = [(ActionCoordinator *)self containerViewController];
    v15 = [v14 currentViewController];
    [v15 heightForLayout:2];
    v9 = v16;
  }

  +[LookAroundButtonContainerViewController expandedHeight];
  v18 = v17 + v9;
  v19 = [(ActionCoordinator *)self mapSelectionManager];
  v20 = [v19 labelMarker];

  v21 = [(ActionCoordinator *)self venuesManager];
  v25 = 0;
  v26 = 0;
  [v21 getMinZoom:&v26 maxZoom:&v25 forDisplayingLabelMarker:v20];
  v22 = v26;
  v23 = v25;

  v24 = [(ActionCoordinator *)self mapCameraController];
  [v24 frameLabelMarker:v20 edgeInsets:v22 minZoom:v23 maxZoom:0 completion:{v5, v7, v18, v11}];

  [(VenuesManager *)self->_venuesManager displayFloorForSelectedLabelMarker:v20];
}

- (void)presentLineCardForItem:(id)a3 labelMarker:(id)a4 loading:(BOOL)a5 overDisambiguation:(BOOL)a6 preferredLayout:(unint64_t)a7
{
  v9 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(ActionCoordinator *)self lineCardVC];
  [v14 setLineItem:v13 labelMarker:v12 loading:v9 preferredLayout:a7];

  v15 = [(ActionCoordinator *)self containerViewController];
  v19 = [v15 currentViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_6;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0 && !a6)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  if (isKindOfClass)
  {
LABEL_6:
    v17 = [(ActionCoordinator *)self containerViewController];
    v18 = [(ActionCoordinator *)self lineCardVC];
    [v17 replaceCurrentWithController:v18 moveToContaineeLayout:a7];
  }

  else
  {
    v17 = [(ActionCoordinator *)self containerViewController];
    v18 = [(ActionCoordinator *)self lineCardVC];
    [v17 presentController:v18];
  }
}

- (void)presentLineCardForItem:(id)a3 loading:(BOOL)a4 sourceView:(id)a5 sourceRect:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v11 = a4;
  v13 = a3;
  v14 = a5;
  v15 = [(ActionCoordinator *)self lineCardVC];
  [v15 setLineItem:v13 labelMarker:0 loading:v11 preferredLayout:0];
  lineSelectionAction = self->_lineSelectionAction;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100924A10;
  v21[3] = &unk_10162E5F8;
  v21[4] = self;
  v22 = v13;
  v23 = v15;
  v17 = v15;
  v18 = v13;
  [(TransitLineSelectionActionController *)lineSelectionAction selectLine:v18 zoomToMapRegion:0 onActivation:v21];
  [v17 setModalPresentationStyle:7];
  v19 = [v17 popoverPresentationController];
  [v19 setDelegate:self];
  [v19 setSourceView:v14];

  [v19 setSourceRect:{x, y, width, height}];
  [v19 setPermittedArrowDirections:12];
  v20 = [(ActionCoordinator *)self containerViewController];
  [v20 _maps_topMostPresentViewController:v17 animated:1 completion:0];
}

- (void)presentPlaceCard:(id)a3 canReplaceCurrentIfNecessary:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(ActionCoordinator *)self containerViewController];
  v8 = [v7 currentViewController];

  v9 = [(ContaineeViewController *)v6 cardPresentationController];
  [v9 setHidden:0];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && self->_placeCardViewController)
  {
    v10 = [(ActionCoordinator *)self containerViewController];
    [v10 removeControllerFromStack:self->_placeCardViewController];
  }

  [(ActionCoordinator *)self ensureMapSelectionVisible];
  v11 = [(ActionCoordinator *)self containerViewController];
  v12 = [v11 chromeViewController];
  [v12 setNeedsUpdateComponent:@"lookAroundButton" animated:1];

  placeCardViewController = self->_placeCardViewController;
  if (!placeCardViewController || v8 != placeCardViewController)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
        [(PlaceCardViewController *)WeakRetained replaceCurrentWithController:v6];
        goto LABEL_21;
      }

      if (!v4 || ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (-[ActionCoordinator currentSearchSession](self, "currentSearchSession"), v35 = objc_claimAutoreleasedReturnValue(), v36 = [v35 singleResultMode], v35, !v36)) && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (-[ActionCoordinator currentSearchSession](self, "currentSearchSession"), v37 = objc_claimAutoreleasedReturnValue(), v38 = objc_msgSend(v37, "isSingleResultToShowAsPlacecard"), v37, !v38)))
      {
        v39 = [(PlaceCardViewController *)v6 placeCardItem];
        if ([v39 isVenueItem])
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            [(ActionCoordinator *)self presentSearchAnimated:0];
          }
        }

        else
        {
        }

        if (!v4 || !v8 || sub_10000FA08(v8) == 5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
          [(PlaceCardViewController *)WeakRetained presentController:v6];
          goto LABEL_21;
        }
      }

      v14 = objc_loadWeakRetained(&self->_containerViewController);
      WeakRetained = v14;
LABEL_7:
      [(PlaceCardViewController *)v14 replaceCurrentWithController:v6 moveToContaineeLayout:2];
LABEL_21:
      v19 = 1;
      goto LABEL_22;
    }

    WeakRetained = v8;
    v16 = [(PlaceCardViewController *)v6 placeCardItem];
    if ([v16 isVenueItem])
    {
    }

    else
    {
      v20 = [(PlaceCardViewController *)v6 placeCardItem];
      v21 = [v20 mapItem];
      v22 = [(PlaceCardViewController *)WeakRetained containsMapItem:v21];

      if (v22)
      {
        v23 = objc_loadWeakRetained(&self->_containerViewController);
        [v23 presentController:v6];
LABEL_20:

        goto LABEL_21;
      }
    }

    v23 = objc_loadWeakRetained(&self->_containerViewController);
    [v23 replaceCurrentWithController:v6 moveToContaineeLayout:2];
    goto LABEL_20;
  }

  v14 = objc_loadWeakRetained(&self->_containerViewController);
  WeakRetained = v14;
  if (v8 != v6)
  {
    goto LABEL_7;
  }

  [(PlaceCardViewController *)v14 removeControllerFromStack:self->_simpleListResultsVC];

  v17 = objc_loadWeakRetained(&self->_containerViewController);
  v18 = [v17 containerStyle];

  if (v18 == 1)
  {
    WeakRetained = [(ContaineeViewController *)v6 cardPresentationController];
    [(PlaceCardViewController *)WeakRetained wantsLayout:2];
    v19 = 0;
LABEL_22:

    goto LABEL_23;
  }

  v19 = 0;
LABEL_23:
  if ([(TransitLineSelectionActionController *)self->_lineSelectionAction isActive])
  {
    v24 = [(PlaceCardViewController *)v6 placeCardItem];
    v25 = v24;
    if (v24)
    {
      v41 = @"ActionControllerDeactivationItemKey";
      v42 = v24;
      v26 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    }

    else
    {
      v26 = 0;
    }

    [(TransitLineSelectionActionController *)self->_lineSelectionAction deactivateWithContext:v26];
  }

  if ((v19 & 1) == 0)
  {
    v27 = [(ActionCoordinator *)self containerViewController];
    v28 = [v27 chromeViewController];
    [v28 updateComponentsIfNeeded];
  }

  v29 = [PlaceCardSynchronizationNotificationInfo alloc];
  v30 = [(PlaceCardViewController *)v6 placeCardItem];
  v31 = +[CarDisplayController sharedInstance];
  v32 = [v31 platformController];
  v33 = [(PlaceCardSynchronizationNotificationInfo *)v29 initWithPlaceCardItem:v30 platformController:v32];

  v34 = +[NSNotificationCenter defaultCenter];
  [v34 postNotificationName:@"IOSBasedPlaceCardDidPresent" object:v33];
}

- (void)presentSimpleList:(id)a3
{
  v17 = a3;
  v4 = [(ActionCoordinator *)self containerViewController];
  v5 = [v4 currentViewController];

  if (v5 == v17)
  {
    v11 = [(ActionCoordinator *)self containerViewController];
    v12 = [v11 containeeLayout];

    if (v12 != 1)
    {
      goto LABEL_10;
    }

    v13 = [v17 cardPresentationController];
    [v13 wantsLayout:2];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    v7 = [WeakRetained currentViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v9 = objc_loadWeakRetained(&self->_containerViewController);
    v10 = v9;
    if (isKindOfClass)
    {
      [v9 replaceCurrentWithController:v17 moveToContaineeLayout:2];

      [(PlaceCardViewController *)self->_placeCardViewController resetState];
      goto LABEL_10;
    }

    v14 = [v9 currentViewController];
    objc_opt_class();
    v15 = objc_opt_isKindOfClass();

    v16 = objc_loadWeakRetained(&self->_containerViewController);
    v13 = v16;
    if (v15)
    {
      [v16 replaceCurrentWithController:v17 moveToContaineeLayout:2];
    }

    else
    {
      [v16 presentController:v17];
    }
  }

LABEL_10:
  [(ActionCoordinator *)self ensureMapSelectionVisible];
}

- (void)setIsRoutePlanningPresented:(BOOL)a3
{
  if (self->_routePlanningDataCoordinator)
  {
    v3 = a3;
    if (self->_isRoutePlanningPresented == a3)
    {
      return;
    }

    v5 = sub_100798A3C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      isRoutePlanningPresented = self->_isRoutePlanningPresented;
      v10 = 67109376;
      *v11 = isRoutePlanningPresented;
      *&v11[4] = 1024;
      *&v11[6] = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Changing isRoutePlanningPresented from %d to %d", &v10, 0xEu);
    }

    self->_isRoutePlanningPresented = v3;
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 postNotificationName:@"RoutePlanningPresentedDidChangeNotification" object:self];
    goto LABEL_11;
  }

  v8 = sub_10006D178();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v10 = 136315650;
    *v11 = "[ActionCoordinator setIsRoutePlanningPresented:]";
    *&v11[8] = 2080;
    v12 = "ActionCoordinator.m";
    v13 = 1024;
    v14 = 1076;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v10, 0x1Cu);
  }

  if (sub_100E03634())
  {
    v7 = sub_10006D178();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = +[NSThread callStackSymbols];
      v10 = 138412290;
      *v11 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@", &v10, 0xCu);
    }

LABEL_11:
  }
}

- (VenueCardCoordinator)venueCardCoordinator
{
  venueCardCoordinator = self->_venueCardCoordinator;
  if (!venueCardCoordinator)
  {
    v4 = [VenueCardCoordinator alloc];
    v5 = [(ActionCoordinator *)self venuesManager];
    v6 = [(VenueCardCoordinator *)v4 initWithActionCoordinator:self venueChangeNotifier:v5];
    v7 = self->_venueCardCoordinator;
    self->_venueCardCoordinator = v6;

    [(VenueCardCoordinator *)self->_venueCardCoordinator setDataSource:self];
    venueCardCoordinator = self->_venueCardCoordinator;
  }

  return venueCardCoordinator;
}

- (id)autosharingVC
{
  if (self->_routePlanningDataCoordinator)
  {
    autosharingVC = self->_autosharingVC;
    if (!autosharingVC)
    {
      v4 = [[SharedTripAutosharingContaineeViewController alloc] initWithContacts:&__NSArray0__struct];
      v5 = self->_autosharingVC;
      self->_autosharingVC = v4;

      [(SharedTripAutosharingContaineeViewController *)self->_autosharingVC setDelegate:self];
      autosharingVC = self->_autosharingVC;
    }

    v6 = autosharingVC;
  }

  else
  {
    v7 = sub_10006D178();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315650;
      v12 = "[ActionCoordinator autosharingVC]";
      v13 = 2080;
      v14 = "ActionCoordinator.m";
      v15 = 1024;
      v16 = 1037;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v11, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v8 = sub_10006D178();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = +[NSThread callStackSymbols];
        v11 = 138412290;
        v12 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@", &v11, 0xCu);
      }
    }

    v6 = 0;
  }

  return v6;
}

- (_TtC4Maps38RouteAnnotationContaineeViewController)routeAnnotationVC
{
  if (self->_routePlanningDataCoordinator)
  {
    routeAnnotationVC = self->_routeAnnotationVC;
    if (!routeAnnotationVC)
    {
      v4 = [[_TtC4Maps38RouteAnnotationContaineeViewController alloc] initWithRouteAnnotation:0];
      v5 = self->_routeAnnotationVC;
      self->_routeAnnotationVC = v4;

      [(ContaineeViewController *)self->_routeAnnotationVC setContaineeDelegate:self];
      routeAnnotationVC = self->_routeAnnotationVC;
    }

    v6 = routeAnnotationVC;
  }

  else
  {
    v7 = sub_10006D178();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315650;
      v12 = "[ActionCoordinator routeAnnotationVC]";
      v13 = 2080;
      v14 = "ActionCoordinator.m";
      v15 = 1024;
      v16 = 1027;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v11, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v8 = sub_10006D178();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = +[NSThread callStackSymbols];
        v11 = 138412290;
        v12 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@", &v11, 0xCu);
      }
    }

    v6 = 0;
  }

  return v6;
}

- (_TtC4Maps38TrafficIncidentContaineeViewController)trafficIncidentVC
{
  trafficIncidentViewController = self->_trafficIncidentViewController;
  if (!trafficIncidentViewController)
  {
    v4 = objc_alloc_init(_TtC4Maps38TrafficIncidentContaineeViewController);
    v5 = self->_trafficIncidentViewController;
    self->_trafficIncidentViewController = v4;

    [(ContaineeViewController *)self->_trafficIncidentViewController setContaineeDelegate:self];
    trafficIncidentViewController = self->_trafficIncidentViewController;
  }

  return trafficIncidentViewController;
}

- (id)routingAppsVC
{
  if (self->_routePlanningDataCoordinator)
  {
    v3 = [RoutePlanningRoutingAppsController alloc];
    v4 = [(ActionCoordinator *)self routePlanningDataCoordinator];
    v5 = [(RoutePlanningRoutingAppsController *)v3 initWithDataCoordination:v4];

    [(ContaineeViewController *)v5 setContaineeDelegate:self];
  }

  else
  {
    v6 = sub_10006D178();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315650;
      v11 = "[ActionCoordinator routingAppsVC]";
      v12 = 2080;
      v13 = "ActionCoordinator.m";
      v14 = 1024;
      v15 = 1008;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v10, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v7 = sub_10006D178();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = +[NSThread callStackSymbols];
        v10 = 138412290;
        v11 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@", &v10, 0xCu);
      }
    }

    v5 = 0;
  }

  return v5;
}

- (id)incidentsVC
{
  if (self->_routePlanningDataCoordinator)
  {
    if (!self->_incidentsVC)
    {
      v3 = [RouteIncidentsViewController alloc];
      v4 = [(ActionCoordinator *)self routePlanningDataCoordinator];
      v5 = [(RouteIncidentsViewController *)v3 initWithDataCoordination:v4];
      incidentsVC = self->_incidentsVC;
      self->_incidentsVC = v5;

      [(ContaineeViewController *)self->_incidentsVC setContaineeDelegate:self];
    }

    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    v8 = [WeakRetained traitCollection];
    v9 = [v8 userInterfaceIdiom];

    if (v9 == 5)
    {
      [(RouteIncidentsViewController *)self->_incidentsVC setModalPresentationStyle:7];
      v10 = objc_loadWeakRetained(&self->_incidentsVCSourceView);
      v11 = [(RouteIncidentsViewController *)self->_incidentsVC popoverPresentationController];
      [v11 setSourceView:v10];

      v12 = objc_loadWeakRetained(&self->_incidentsVCSourceView);
      [v12 bounds];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v21 = [(RouteIncidentsViewController *)self->_incidentsVC popoverPresentationController];
      [v21 setSourceRect:{v14, v16, v18, v20}];

      v22 = [(RouteIncidentsViewController *)self->_incidentsVC popoverPresentationController];
      [v22 setPermittedArrowDirections:12];
    }

    v23 = self->_incidentsVC;
  }

  else
  {
    v24 = sub_10006D178();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v28 = 136315650;
      v29 = "[ActionCoordinator incidentsVC]";
      v30 = 2080;
      v31 = "ActionCoordinator.m";
      v32 = 1024;
      v33 = 989;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v28, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v25 = sub_10006D178();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = +[NSThread callStackSymbols];
        v28 = 138412290;
        v29 = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%@", &v28, 0xCu);
      }
    }

    v23 = 0;
  }

  return v23;
}

- (id)routeOptionsVC
{
  if (self->_routePlanningDataCoordinator)
  {
    v3 = [(ActionCoordinator *)self containerViewController];
    v4 = sub_10000FA08(v3);

    if (v4 == 5 && (_UISolariumEnabled() & 1) == 0)
    {
      BOOL = GEOConfigGetBOOL();
    }

    else
    {
      BOOL = 0;
    }

    v10 = [RoutePlanningOptionsViewController alloc];
    v11 = [(ActionCoordinator *)self routePlanningDataCoordinator];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100925FA8;
    v28[3] = &unk_10162E5D0;
    v28[4] = self;
    v9 = [(RoutePlanningOptionsViewController *)v10 initWithDataCoordinator:v11 automaticallySaveChanges:BOOL completionHandler:v28];

    if ((_UISolariumEnabled() & 1) == 0)
    {
      v12 = [(RoutePlanningOptionsViewController *)v9 traitCollection];
      v13 = [v12 userInterfaceIdiom];

      if (v13 == 5)
      {
        v14 = [(ActionCoordinator *)self routePlanningOverviewViewController];
        v15 = [v14 routeOptionsPopoverSourceView];

        [(RoutePlanningOptionsViewController *)v9 setModalPresentationStyle:7];
        v16 = [(RoutePlanningOptionsViewController *)v9 popoverPresentationController];
        [v16 setSourceView:v15];

        [v15 bounds];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v25 = [(RoutePlanningOptionsViewController *)v9 popoverPresentationController];
        [v25 setSourceRect:{v18, v20, v22, v24}];

        v26 = [(RoutePlanningOptionsViewController *)v9 popoverPresentationController];
        [v26 setPermittedArrowDirections:12];
      }
    }
  }

  else
  {
    v6 = sub_10006D178();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v30 = "[ActionCoordinator routeOptionsVC]";
      v31 = 2080;
      v32 = "ActionCoordinator.m";
      v33 = 1024;
      v34 = 970;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v7 = sub_10006D178();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v30 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    v9 = 0;
  }

  return v9;
}

- (id)timePickingVC
{
  if (self->_routePlanningDataCoordinator)
  {
    v3 = [(ActionCoordinator *)self routePlanningDataCoordinator];
    v4 = [v3 routeCollection];
    v5 = [v4 currentRoute];

    v6 = [RoutePlanningTimingViewController alloc];
    v7 = [(ActionCoordinator *)self routePlanningDataCoordinator];
    v8 = [v7 timing];
    if (v5)
    {
      v9 = [v5 shouldShowSchedule];
    }

    else
    {
      v9 = 0;
    }

    v13 = [(RoutePlanningTimingViewController *)v6 initWithCurrentTiming:v8 shouldShowArriveBy:v9 pickerDelegate:self];
  }

  else
  {
    v10 = sub_10006D178();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315650;
      v16 = "[ActionCoordinator timePickingVC]";
      v17 = 2080;
      v18 = "ActionCoordinator.m";
      v19 = 1024;
      v20 = 960;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v15, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v11 = sub_10006D178();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = +[NSThread callStackSymbols];
        v15 = 138412290;
        v16 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@", &v15, 0xCu);
      }
    }

    v13 = 0;
  }

  return v13;
}

- (id)routeStepsVC
{
  if (self->_routePlanningDataCoordinator)
  {
    routeStepsVC = self->_routeStepsVC;
    if (!routeStepsVC)
    {
      v4 = [[RouteStepsViewController alloc] initWithNibName:0 bundle:0];
      v5 = self->_routeStepsVC;
      self->_routeStepsVC = v4;

      [(ContaineeViewController *)self->_routeStepsVC setContaineeDelegate:self];
      [(RouteStepsViewController *)self->_routeStepsVC setDelegate:self];
      v6 = [(ActionCoordinator *)self routePlanningDataCoordinator];
      [(RouteStepsViewController *)self->_routeStepsVC setDataCoordinator:v6];

      routeStepsVC = self->_routeStepsVC;
    }

    v7 = routeStepsVC;
  }

  else
  {
    v8 = sub_10006D178();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315650;
      v13 = "[ActionCoordinator routeStepsVC]";
      v14 = 2080;
      v15 = "ActionCoordinator.m";
      v16 = 1024;
      v17 = 947;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v12, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v9 = sub_10006D178();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = +[NSThread callStackSymbols];
        v12 = 138412290;
        v13 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@", &v12, 0xCu);
      }
    }

    v7 = 0;
  }

  return v7;
}

- (id)routeSearchVC
{
  if (self->_routePlanningDataCoordinator)
  {
    routeSearchVC = self->_routeSearchVC;
    if (!routeSearchVC || ([(RouteSearchViewController *)routeSearchVC dataCoordinator], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
    {
      v5 = [(ActionCoordinator *)self routePlanningOverviewViewController];
      v6 = [v5 routeSearchViewController];

      if (v6)
      {
        v7 = [(ActionCoordinator *)self routePlanningOverviewViewController];
        v8 = [v7 routeSearchViewController];
      }

      else
      {
        v13 = [RouteSearchViewController alloc];
        v7 = [(ActionCoordinator *)self routePlanningDataCoordinator];
        v8 = [(RouteSearchViewController *)v13 initWithDelegate:self dataCoordinator:v7];
      }

      v14 = self->_routeSearchVC;
      self->_routeSearchVC = v8;
    }

    v12 = self->_routeSearchVC;
  }

  else
  {
    v9 = sub_10006D178();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315650;
      v17 = "[ActionCoordinator routeSearchVC]";
      v18 = 2080;
      v19 = "ActionCoordinator.m";
      v20 = 1024;
      v21 = 933;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v16, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v10 = sub_10006D178();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = +[NSThread callStackSymbols];
        v16 = 138412290;
        v17 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@", &v16, 0xCu);
      }
    }

    v12 = 0;
  }

  return v12;
}

- (id)routePlanningMapController
{
  if (self->_routePlanningDataCoordinator)
  {
    routePlanningMapController = self->_routePlanningMapController;
    if (!routePlanningMapController)
    {
      v4 = [RoutePlanningMapController alloc];
      v5 = [(ActionCoordinator *)self containerViewController];
      v6 = [v5 chromeViewController];
      v7 = [(RoutePlanningMapController *)v4 initWithChromeViewController:v6];
      v8 = self->_routePlanningMapController;
      self->_routePlanningMapController = v7;

      [(RoutePlanningMapController *)self->_routePlanningMapController setActionCoordinator:self];
      v9 = [(ActionCoordinator *)self routePlanningDataCoordinator];
      [(RoutePlanningMapController *)self->_routePlanningMapController setDataCoordinator:v9];

      v10 = [(ActionCoordinator *)self personalizedItemManager];
      [(RoutePlanningMapController *)self->_routePlanningMapController setPersonalizedItemManager:v10];

      v11 = [(ActionCoordinator *)self searchPinsManager];
      [(RoutePlanningMapController *)self->_routePlanningMapController setSearchPinsManager:v11];

      routePlanningMapController = self->_routePlanningMapController;
    }

    v12 = routePlanningMapController;
  }

  else
  {
    v13 = sub_10006D178();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315650;
      v18 = "[ActionCoordinator routePlanningMapController]";
      v19 = 2080;
      v20 = "ActionCoordinator.m";
      v21 = 1024;
      v22 = 919;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v17, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v14 = sub_10006D178();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = +[NSThread callStackSymbols];
        v17 = 138412290;
        v18 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@", &v17, 0xCu);
      }
    }

    v12 = 0;
  }

  return v12;
}

- (RoutePlanningDataCoordinator)routePlanningDataCoordinator
{
  routePlanningDataCoordinator = self->_routePlanningDataCoordinator;
  if (routePlanningDataCoordinator)
  {
    v3 = routePlanningDataCoordinator;
  }

  else
  {
    v4 = sub_10006D178();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315650;
      v9 = "[ActionCoordinator routePlanningDataCoordinator]";
      v10 = 2080;
      v11 = "ActionCoordinator.m";
      v12 = 1024;
      v13 = 913;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v8, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v5 = sub_10006D178();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = +[NSThread callStackSymbols];
        v8 = 138412290;
        v9 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%@", &v8, 0xCu);
      }
    }
  }

  return routePlanningDataCoordinator;
}

- (id)mapView
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v3 = [WeakRetained chromeViewController];
  v4 = [v3 mapView];

  return v4;
}

- (MapCameraFraming)mapCameraController
{
  v2 = [(ActionCoordinator *)self containerViewController];
  v3 = [v2 chromeViewController];
  v4 = [v3 mapCameraController];

  return v4;
}

- (MapSelectionManager)mapSelectionManager
{
  v2 = [(ActionCoordinator *)self containerViewController];
  v3 = [v2 chromeViewController];
  v4 = [v3 mapSelectionManager];

  return v4;
}

- (void)setContainerViewController:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);

  if (WeakRetained != obj)
  {
    [(ActionCoordinator *)self removeContainerViewControllerObserver];
    v5 = objc_storeWeak(&self->_containerViewController, obj);
    v6 = [obj chromeViewController];
    [v6 setViewModeDelegate:self];

    [(ActionCoordinator *)self addContainerViewControllerObservers];
    [(ActionCoordinator *)self presentSearchAnimated:0];
  }
}

- (LineCardViewController)lineCardVC
{
  if (![(ActionCoordinator *)self isRoutePlanningPresented])
  {
    lineCardViewController = self->_lineCardViewController;
    if (!lineCardViewController)
    {
      v6 = objc_alloc_init(LineCardViewController);
      v7 = self->_lineCardViewController;
      self->_lineCardViewController = v6;

      [(InfoCardViewController *)self->_lineCardViewController setContaineeDelegate:self];
      [(LineCardViewController *)self->_lineCardViewController setLineCardDelegate:self];
      lineCardViewController = self->_lineCardViewController;
    }

    goto LABEL_7;
  }

  if (self->_routePlanningDataCoordinator)
  {
    lineCardViewController = self->_lineCardForRoutePlanningViewController;
    if (!lineCardViewController)
    {
      v4 = objc_alloc_init(LineCardViewController);
      lineCardForRoutePlanningViewController = self->_lineCardForRoutePlanningViewController;
      self->_lineCardForRoutePlanningViewController = v4;

      [(InfoCardViewController *)self->_lineCardForRoutePlanningViewController setContaineeDelegate:self];
      [(LineCardViewController *)self->_lineCardForRoutePlanningViewController setLineCardDelegate:self];
      lineCardViewController = self->_lineCardForRoutePlanningViewController;
    }

LABEL_7:
    v8 = lineCardViewController;
    goto LABEL_8;
  }

  v10 = sub_10006D178();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v13 = 136315650;
    v14 = "[ActionCoordinator lineCardVC]";
    v15 = 2080;
    v16 = "ActionCoordinator.m";
    v17 = 1024;
    v18 = 867;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v13, 0x1Cu);
  }

  if (sub_100E03634())
  {
    v11 = sub_10006D178();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = +[NSThread callStackSymbols];
      v13 = 138412290;
      v14 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@", &v13, 0xCu);
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (id)_newPlaceCardViewControllerForReuse
{
  v3 = objc_alloc_init(PlaceCardViewController);
  [(PlaceCardViewController *)v3 setPlaceCardDelegate:self];
  [(InfoCardViewController *)v3 setContaineeDelegate:self];
  return v3;
}

- (PlaceCardViewController)placeCardViewController
{
  placeCardViewController = self->_placeCardViewController;
  if (!placeCardViewController)
  {
    v4 = [(ActionCoordinator *)self _newPlaceCardViewControllerForReuse];
    v5 = self->_placeCardViewController;
    self->_placeCardViewController = v4;

    placeCardViewController = self->_placeCardViewController;
  }

  return placeCardViewController;
}

- (id)placeCardForVenuesViewController:(id)a3
{
  v4 = a3;
  v5 = [(ActionCoordinator *)self venueCardCoordinator];
  v6 = [v5 viewControllerForCardItem:v4];

  v7 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setPlaceCardDelegate:self];
  [v9 setContaineeDelegate:self];

  return v9;
}

- (id)placeCardForRoutePlanningViewController
{
  if (self->_routePlanningDataCoordinator)
  {
    placeCardForRoutePlanningViewController = self->_placeCardForRoutePlanningViewController;
    if (!placeCardForRoutePlanningViewController)
    {
      v4 = objc_alloc_init(PlaceCardViewController);
      v5 = self->_placeCardForRoutePlanningViewController;
      self->_placeCardForRoutePlanningViewController = v4;

      [(PlaceCardViewController *)self->_placeCardForRoutePlanningViewController setExcludedContent:22];
      [(PlaceCardViewController *)self->_placeCardForRoutePlanningViewController setPlaceCardDelegate:self];
      [(InfoCardViewController *)self->_placeCardForRoutePlanningViewController setContaineeDelegate:self];
      placeCardForRoutePlanningViewController = self->_placeCardForRoutePlanningViewController;
    }

    v6 = placeCardForRoutePlanningViewController;
  }

  else
  {
    v7 = sub_10006D178();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315650;
      v12 = "[ActionCoordinator placeCardForRoutePlanningViewController]";
      v13 = 2080;
      v14 = "ActionCoordinator.m";
      v15 = 1024;
      v16 = 819;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v11, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v8 = sub_10006D178();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = +[NSThread callStackSymbols];
        v11 = 138412290;
        v12 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@", &v11, 0xCu);
      }
    }

    v6 = 0;
  }

  return v6;
}

- (id)settingsViewController
{
  v3 = objc_alloc_init(SettingsViewController);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100927114;
  v9[3] = &unk_101661B18;
  v9[4] = self;
  [(SettingsViewController *)v3 setDismissSettingsViewControllerHandler:v9];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v5 = [WeakRetained chromeViewController];
  v6 = [v5 settingsController];
  [(SettingsViewController *)v3 setSettingsController:v6];

  [(SettingsViewController *)v3 setModalPresentationStyle:4];
  v7 = objc_loadWeakRetained(&self->_containerViewController);
  [(SettingsViewController *)v3 setTransitioningDelegate:v7];

  return v3;
}

- (id)resultsViewController
{
  if (![(ActionCoordinator *)self _shouldPresentAddStopSearchResults])
  {
    if (MapsFeature_IsEnabled_SearchAndDiscovery())
    {
      WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
      v7 = sub_10000FA08(WeakRetained) != 5;
    }

    else
    {
      v7 = 0;
    }

    resultsViewController = self->_resultsViewController;
    if (!resultsViewController)
    {
      v8 = [[ResultsViewController alloc] initForOmipresentSearchBar:v7];
      v9 = self->_resultsViewController;
      self->_resultsViewController = v8;

      [(ContaineeViewController *)self->_resultsViewController setContaineeDelegate:self];
      [(ResultsViewController *)self->_resultsViewController setResultsDelegate:self];
      resultsViewController = self->_resultsViewController;
    }

    goto LABEL_10;
  }

  if (self->_routePlanningDataCoordinator)
  {
    resultsViewController = self->_addStopResultsViewController;
    if (!resultsViewController)
    {
      v4 = objc_alloc_init(ResultsViewController);
      addStopResultsViewController = self->_addStopResultsViewController;
      self->_addStopResultsViewController = v4;

      [(ContaineeViewController *)self->_addStopResultsViewController setContaineeDelegate:self];
      [self->_addStopResultsViewController setIsPresentingAddStopResultsFromWaypointEditor:1];
      [self->_addStopResultsViewController setResultsDelegate:self];
      resultsViewController = self->_addStopResultsViewController;
    }

LABEL_10:
    v10 = resultsViewController;
    goto LABEL_11;
  }

  v12 = sub_10006D178();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v15 = 136315650;
    v16 = "[ActionCoordinator resultsViewController]";
    v17 = 2080;
    v18 = "ActionCoordinator.m";
    v19 = 1024;
    v20 = 731;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v15, 0x1Cu);
  }

  if (sub_100E03634())
  {
    v13 = sub_10006D178();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = +[NSThread callStackSymbols];
      v15 = 138412290;
      v16 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@", &v15, 0xCu);
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (BOOL)isPresentingAddStopSearchResults
{
  if (self->_routePlanningDataCoordinator)
  {
    v3 = [(ActionCoordinator *)self mapView];
    if (sub_10000FA08(v3) == 5 && [(ActionCoordinator *)self isRoutePlanningPresented])
    {
      v4 = [(ActionCoordinator *)self currentSearchSession];

      if (v4)
      {
        return 1;
      }
    }

    else
    {
    }

    v6 = [self->_addStopResultsViewController presentingViewController];
    if (v6)
    {
      v7 = [self->_currentDirectionItem items];
      v5 = [v7 count] != 0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v8 = sub_10006D178();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315650;
      v13 = "[ActionCoordinator isPresentingAddStopSearchResults]";
      v14 = 2080;
      v15 = "ActionCoordinator.m";
      v16 = 1024;
      v17 = 721;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v12, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v9 = sub_10006D178();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = +[NSThread callStackSymbols];
        v12 = 138412290;
        v13 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@", &v12, 0xCu);
      }
    }

    return 0;
  }

  return v5;
}

- (BOOL)_shouldPresentAddStopSearchResults
{
  if (self->_routePlanningDataCoordinator)
  {
    v4 = [(ActionCoordinator *)self isRoutePlanningPresented];
    if ((v4 & 1) != 0 || ([(RouteSearchViewController *)self->_routeSearchVC presentingViewController], (v2 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v5 = [self->_currentDirectionItem items];
      v6 = [v5 count] != 0;

      if (v4)
      {
        return v6;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v7 = sub_10006D178();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315650;
      v12 = "[ActionCoordinator _shouldPresentAddStopSearchResults]";
      v13 = 2080;
      v14 = "ActionCoordinator.m";
      v15 = 1024;
      v16 = 715;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v11, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v8 = sub_10006D178();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = +[NSThread callStackSymbols];
        v11 = 138412290;
        v12 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@", &v11, 0xCu);
      }
    }

    return 0;
  }

  return v6;
}

- (SimpleResultsViewController)simpleListResultsVC
{
  simpleListResultsVC = self->_simpleListResultsVC;
  if (!simpleListResultsVC)
  {
    v4 = [SimpleResultsViewController alloc];
    v5 = [(ActionCoordinator *)self appCoordinator];
    v6 = [(SimpleResultsViewController *)v4 initWithShareDelegate:v5];
    v7 = self->_simpleListResultsVC;
    self->_simpleListResultsVC = v6;

    [(SimpleResultsViewController *)self->_simpleListResultsVC setResultsDelegate:self];
    [(ContaineeViewController *)self->_simpleListResultsVC setContaineeDelegate:self];
    [(SimpleResultsViewController *)self->_simpleListResultsVC setEnableQuickActionMenu:1];
    v8 = [(SimpleResultsViewController *)self->_simpleListResultsVC view];
    simpleListResultsVC = self->_simpleListResultsVC;
  }

  return simpleListResultsVC;
}

- (void)presentRouteLibraryWithAvailableRoutes:(id)a3 unavailableRoutes:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [_TtC4Maps24RouteItemsViewController alloc];
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &__NSArray0__struct;
  }

  v11 = [(RouteItemsViewController *)v8 initWithAvailableRoutes:v9 unavailableRoutes:v6 isAllSavedRoutes:1];

  [(ContaineeViewController *)v11 setContaineeDelegate:self];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained presentController:v11 animated:1];
}

- (void)viewControllerPresentVirtualGarage:(id)a3
{
  v4 = objc_alloc_init(VehicleListViewController);
  vehicleListVC = self->_vehicleListVC;
  self->_vehicleListVC = v4;

  [(ContaineeViewController *)self->_vehicleListVC setContaineeDelegate:self];
  [(ControlContaineeViewController *)self->_vehicleListVC setDelegate:self];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained presentController:self->_vehicleListVC animated:1];
}

- (void)viewControllerPresentRatingsHistory:(id)a3
{
  v5 = [[_TtC4Maps33ARPHistoryContaineeViewController alloc] initWithNibName:0 bundle:0];
  [(ContaineeViewController *)v5 setContaineeDelegate:self];
  [(ARPHistoryContaineeViewController *)v5 setActionDelegate:self];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained presentController:v5 animated:1];
}

- (void)viewControllerPresentUserProfilePreferences:(id)a3 withTabType:(int64_t)a4
{
  v6 = [(ActionCoordinator *)self containerViewController];
  v7 = sub_10000FA08(v6);

  if (v7 == 5)
  {
    WeakRetained = +[UIApplication sharedMapsDelegate];
    [WeakRetained presentMacPreferencesTabWithType:a4];
  }

  else
  {
    v8 = [[TravelPreferencesViewController alloc] initWithCompletionHandler:&stru_10162E5A8];
    travelPreferencesVC = self->_travelPreferencesVC;
    self->_travelPreferencesVC = v8;

    [(ContaineeViewController *)self->_travelPreferencesVC setContaineeDelegate:self];
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    [WeakRetained presentController:self->_travelPreferencesVC animated:1];
  }
}

- (void)viewControllerPresentUserProfile:(id)a3
{
  v5 = objc_alloc_init(_TtC4Maps34UserProfileContaineeViewController);
  [(ContaineeViewController *)v5 setContaineeDelegate:self];
  [(UserProfileContaineeViewController *)v5 setActionDelegate:self];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained presentController:v5 animated:1 completion:&stru_10162E548];
}

- (RoutePlanningOverviewViewController)routePlanningOverviewViewControllerIfLoaded
{
  if (self->_routePlanningDataCoordinator)
  {
    v2 = self->_routePlanningOverviewViewController;
  }

  else
  {
    v3 = sub_10006D178();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315650;
      v8 = "[ActionCoordinator routePlanningOverviewViewControllerIfLoaded]";
      v9 = 2080;
      v10 = "ActionCoordinator.m";
      v11 = 1024;
      v12 = 637;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v7, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v4 = sub_10006D178();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = +[NSThread callStackSymbols];
        v7 = 138412290;
        v8 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%@", &v7, 0xCu);
      }
    }

    v2 = 0;
  }

  return v2;
}

- (RoutePlanningOverviewViewController)routePlanningOverviewViewController
{
  if (self->_routePlanningDataCoordinator)
  {
    routePlanningOverviewViewController = self->_routePlanningOverviewViewController;
    if (!routePlanningOverviewViewController)
    {
      v4 = [(ActionCoordinator *)self routePlanningDataCoordinator];
      v5 = [RoutePlanningOverviewViewController routePlanningOverviewViewControllerWithDataCoordinator:v4];
      v6 = self->_routePlanningOverviewViewController;
      self->_routePlanningOverviewViewController = v5;

      [(ControlContaineeViewController *)self->_routePlanningOverviewViewController setDelegate:self];
      [(RoutePlanningOverviewViewController *)self->_routePlanningOverviewViewController loadViewIfNeeded];
      routePlanningOverviewViewController = self->_routePlanningOverviewViewController;
    }

    v7 = routePlanningOverviewViewController;
  }

  else
  {
    v8 = sub_10006D178();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315650;
      v13 = "[ActionCoordinator routePlanningOverviewViewController]";
      v14 = 2080;
      v15 = "ActionCoordinator.m";
      v16 = 1024;
      v17 = 624;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v12, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v9 = sub_10006D178();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = +[NSThread callStackSymbols];
        v12 = 138412290;
        v13 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@", &v12, 0xCu);
      }
    }

    v7 = 0;
  }

  return v7;
}

- (PersonalizedItemSource)suggestionsItemSource
{
  v2 = [(ActionCoordinator *)self searchModeViewController];
  v3 = [v2 suggestionsItemSource];

  return v3;
}

- (SettingsController)settingsController
{
  v2 = [(ActionCoordinator *)self containerViewController];
  v3 = [v2 chromeViewController];
  v4 = [v3 settingsController];

  return v4;
}

- (SearchPinsManager)searchPinsManager
{
  v2 = [(ActionCoordinator *)self containerViewController];
  v3 = [v2 chromeViewController];
  v4 = [v3 searchPinsManager];

  return v4;
}

- (RouteAnnotationsController)routeAnnotationsController
{
  v2 = [(ActionCoordinator *)self containerViewController];
  v3 = [v2 chromeViewController];
  v4 = [v3 routeAnnotationsController];

  return v4;
}

- (UserLocationSearchResult)userLocationSearchResult
{
  v2 = [(ActionCoordinator *)self mapView];
  v3 = [v2 userLocation];

  v4 = [v3 annotation];

  return v4;
}

- (void)getCurrentSceneTitleWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ActionCoordinator *)self containerViewController];
  v6 = [v5 chromeViewController];
  v7 = [v6 errorString];

  v8 = +[UIDevice currentDevice];
  v9 = [v8 userInterfaceIdiom];

  if (v7)
  {
    v4[2](v4, v7);
    goto LABEL_23;
  }

  v10 = [(ActionCoordinator *)self currentMapItem];

  if (v10 && v9 != 5)
  {
    v11 = [(ActionCoordinator *)self currentMapItem];
    v12 = [v11 name];
    goto LABEL_6;
  }

  if ([(ActionCoordinator *)self isRoutePlanningPresented]&& v9 != 5 && self->_routePlanningDataCoordinator)
  {
    v14 = [self->_currentDirectionItem endMapItem];
    v15 = [v14 name];

    if (v15)
    {
      v11 = +[NSBundle mainBundle];
      v16 = [v11 localizedStringForKey:@"[App switcher title] Directions to <destination>" value:@"localized string not found" table:0];
      v17 = [self->_currentDirectionItem endMapItem];
      v18 = [v17 name];
      v13 = [NSString stringWithFormat:v16, v18];

LABEL_7:
      if (v13)
      {
        v4[2](v4, v13);

        goto LABEL_23;
      }

      goto LABEL_14;
    }

    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"[App switcher title] Directions" value:@"localized string not found" table:0];
LABEL_6:
    v13 = v12;
    goto LABEL_7;
  }

LABEL_14:
  v19 = +[UIDevice currentDevice];
  if ([v19 userInterfaceIdiom] == 1)
  {
  }

  else
  {
    v20 = +[UIDevice currentDevice];
    v21 = [v20 userInterfaceIdiom];

    if (v21 != 5)
    {
      goto LABEL_23;
    }
  }

  v22 = [(ActionCoordinator *)self currentSearchSession];

  if (v22)
  {
    v23 = [(ActionCoordinator *)self currentSearchSession];
    v24 = [v23 searchInfo];
    v25 = [v24 headerDisplayName];
    v26 = v25;
    if (v25)
    {
      v22 = v25;
    }

    else
    {
      v27 = [(ActionCoordinator *)self currentSearchSession];
      v28 = [v27 searchFieldItem];
      v22 = [v28 title];
    }
  }

  v29 = [(ActionCoordinator *)self mapView];
  [v29 centerCoordinate];
  v31 = v30;
  v33 = v32;

  v34 = [(ActionCoordinator *)self mapView];
  [v34 visibleMapRect];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;

  v43 = objc_alloc_init(CLGeocoder);
  v44 = [[CLLocation alloc] initWithLatitude:v31 longitude:v33];
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_100928538;
  v46[3] = &unk_10162E528;
  v47 = v22;
  v48 = v4;
  v49 = v36;
  v50 = v38;
  v51 = v40;
  v52 = v42;
  v45 = v22;
  [v43 reverseGeocodeLocation:v44 completionHandler:v46];

LABEL_23:
}

- (void)setCurrentTransitLineItem:(id)a3 zoomToMapRegion:(BOOL)a4 preferredLayout:(unint64_t)a5
{
  v6 = a4;
  v10 = a3;
  v8 = [(ActionCoordinator *)self currentTransitLineItem];

  v9 = v10;
  if (v8 != v10)
  {
    [(ActionCoordinator *)self viewController:0 selectTransitLineItem:v10 zoomToMapRegion:v6 preferredLayout:a5];
    v9 = v10;
  }
}

- (void)setCurrentDirectionItem:(id)a3 withOptions:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (self->_routePlanningDataCoordinator)
  {
    if (self->_currentDirectionItem != v7)
    {
      objc_storeStrong(&self->_currentDirectionItem, a3);
      if ([self->_currentDirectionItem isVenueItem])
      {
        v9 = [(ActionCoordinator *)self venueCardCoordinator];
        [v9 pushVenueCardItem:self->_currentDirectionItem source:4];
      }

      [(ActionCoordinator *)self viewController:0 doDirectionItem:self->_currentDirectionItem withUserInfo:v8];
    }
  }

  else
  {
    v10 = sub_10006D178();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315650;
      v14 = "[ActionCoordinator setCurrentDirectionItem:withOptions:]";
      v15 = 2080;
      v16 = "ActionCoordinator.m";
      v17 = 1024;
      v18 = 454;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v13, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v11 = sub_10006D178();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = +[NSThread callStackSymbols];
        v13 = 138412290;
        v14 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@", &v13, 0xCu);
      }
    }
  }
}

- (void)restoreSearchForItem:(id)a3 withResults:(id)a4 sessionOrigin:(unint64_t)a5
{
  v9 = a3;
  v8 = a4;
  if (([v8 isSearchAlongRoute] & 1) == 0)
  {
    [(SearchSessionManager *)self->_searchSessionManager restoreSearchForItem:v9 withResults:v8 sessionOrigin:a5];
  }
}

- (void)presentSearchAndRestoreSearchItem:(id)a3
{
  v4 = a3;
  [(ActionCoordinator *)self clearSearch];
  [(ActionCoordinator *)self presentSearch];
  v5 = [(ActionCoordinator *)self searchModeViewController];
  [v5 restoreSearchItem:v4];
}

- (void)endSearchForTesting
{
  v2 = [(ActionCoordinator *)self searchModeViewController];
  [v2 endSearchForTesting];
}

- (void)endSearch
{
  v2 = [(ActionCoordinator *)self searchModeViewController];
  [v2 endSearch];
}

- (void)clearSearchPins
{
  v2 = [(ActionCoordinator *)self searchPinsManager];
  [v2 clearSearchPins];
}

- (void)clearSearchIfOriginatedFromWaypointEditor
{
  v3 = [(ActionCoordinator *)self searchSessionManager];
  v4 = [v3 currentSearchSession];
  v5 = [v4 isAddStopFromWaypointEditor];

  if (v5)
  {

    [(ActionCoordinator *)self clearSearch];
  }
}

- (void)clearSearch
{
  v3 = [(ActionCoordinator *)self containerViewController];
  v4 = [v3 floatingControlsPresentationController];
  [v4 setSearchSession:0];

  [(SearchSessionManager *)self->_searchSessionManager clearSearchSession];
  v5 = [(ActionCoordinator *)self searchPinsManager];
  [v5 clearSearchPins];

  v6 = [(ActionCoordinator *)self searchModeViewController];
  [v6 cleanSearch];

  v7 = +[MapsOfflineUIHelper sharedHelper];
  LODWORD(v4) = [v7 isUsingOfflineMaps];

  if (v4)
  {
    v8 = [(ActionCoordinator *)self searchModeViewController];
    [v8 resetOfflineTextSearchSupport];
  }
}

- (void)clearMapSelection
{
  v2 = [(ActionCoordinator *)self mapSelectionManager];
  [v2 clearSelection];
}

- (void)dealloc
{
  v3 = sub_10001CDEC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v7 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  [(SearchSessionManager *)self->_searchSessionManager removeObserver:self];
  [(ActionCoordinator *)self removeContainerViewControllerObserver];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = ActionCoordinator;
  [(ActionCoordinator *)&v5 dealloc];
}

- (ActionCoordinator)initWithPlatformController:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = ActionCoordinator;
  v6 = [(ActionCoordinator *)&v16 init];
  if (v6)
  {
    v7 = sub_10001CDEC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134349314;
      v18 = v6;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Initializing with platform controller: %@", buf, 0x16u);
    }

    objc_storeStrong(&v6->_platformController, a3);
    if ((GEOConfigGetBOOL() & 1) == 0)
    {
      v8 = [[RoutePlanningDataCoordinator alloc] initWithPlatformController:v6->_platformController];
      routePlanningDataCoordinator = v6->_routePlanningDataCoordinator;
      v6->_routePlanningDataCoordinator = v8;

      [(RoutePlanningDataCoordinator *)v6->_routePlanningDataCoordinator setDelegate:v6];
    }

    v10 = objc_alloc_init(SearchSessionManager);
    searchSessionManager = v6->_searchSessionManager;
    v6->_searchSessionManager = v10;

    [(SearchSessionManager *)v6->_searchSessionManager setDelegate:v6];
    [(SearchSessionManager *)v6->_searchSessionManager setCoordinator:v6];
    [(SearchSessionManager *)v6->_searchSessionManager addObserver:v6];
    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v6 selector:"_carPlayWantsToDisplayEVOnboarding:" name:@"EVOnboardingCarPlayHintSelectedNotification" object:0];

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v6 selector:"_carPlayPlaceCardDidPresent:" name:@"CarPlaceCardDidPresent" object:0];

    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:v6 selector:"_carPlayPlaceCardDidDismiss:" name:off_1019377A0 object:0];
  }

  return v6;
}

- (id)traits
{
  v2 = [(ActionCoordinator *)self newTraits];

  return v2;
}

- (void)simpleResultsViewContoller:(id)a3 didTapOnAddStopWithSearchResult:(id)a4
{
  v9 = @"DirectionsSessionInitiatorKey";
  v10 = &off_1016E8048;
  v6 = a4;
  v7 = a3;
  v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [(ActionCoordinator *)self viewController:v7 addStopForSearchResult:v6 withUserInfo:v8];
}

- (void)simpleResultsViewContoller:(id)a3 showUserGeneratedCollection:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100A284F0;
  v6[3] = &unk_101661A90;
  v7 = self;
  v8 = a3;
  v5 = v8;
  [(ActionCoordinator *)v7 viewController:v5 showCollection:a4 completion:v6];
}

- (void)simpleResultsViewContoller:(id)a3 showCuratedCollectionsList:(id)a4 title:(id)a5
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100A285F8;
  v8[3] = &unk_101661A90;
  v9 = self;
  v10 = a3;
  v7 = v10;
  [(ActionCoordinator *)v9 viewController:v7 showCuratedCollectionsList:a4 usingTitle:a5 usingCollectionIds:0 completion:v8];
}

- (void)simpleResultsViewContoller:(id)a3 showCuratedCollection:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100A286F8;
  v6[3] = &unk_101661A90;
  v7 = self;
  v8 = a3;
  v5 = v8;
  [(ActionCoordinator *)v7 viewController:v5 showCuratedCollection:a4 replaceViewController:0 completion:v6];
}

- (void)simpleResultsViewContoller:(id)a3 selectTappableEntry:(id)a4 resultsList:(id)a5
{
  v7 = a5;
  v8 = a4;
  v11 = [[SearchResult alloc] initWithMapItem:v8];

  v9 = [v7 arrayByAddingObject:v11];

  v10 = [(ActionCoordinator *)self searchPinsManager];
  [v10 setSearchPins:v9 selectedPin:v11 animated:1];
}

- (void)simpleResultsViewContoller:(id)a3 selectContainmentParentMapItem:(id)a4 resultsList:(id)a5
{
  v7 = a5;
  v8 = a4;
  v11 = [[SearchResult alloc] initWithMapItem:v8];

  v9 = [v7 arrayByAddingObject:v11];

  v10 = [(ActionCoordinator *)self searchPinsManager];
  [v10 setSearchPins:v9 selectedPin:v11 animated:1];
}

- (void)simpleResultsViewContoller:(id)a3 didTapOnFlyoverWithSearchResult:(id)a4
{
  v6 = a3;
  v7 = [a4 mapItem];
  [(ActionCoordinator *)self viewController:v6 enterFlyoverForMapItem:v7];
}

- (void)simpleResultsViewContoller:(id)a3 didTapOnWebsiteWithSearchResult:(id)a4
{
  v4 = a4;
  v7 = +[UIApplication sharedApplication];
  v5 = [v4 mapItem];

  v6 = [v5 url];
  [v7 openURL:v6 withCompletionHandler:0];
}

- (void)simpleResultsViewContoller:(id)a3 didTapOnCallWithSearchResult:(id)a4
{
  v8 = [a4 mapItem];
  v4 = [v8 phoneNumber];
  v5 = [v4 length];

  if (v5)
  {
    v6 = +[UIApplication sharedApplication];
    v7 = [v8 phoneNumber];
    [v6 callPhoneNumber:v7 completion:0];
  }
}

- (void)simpleResultsViewContoller:(id)a3 didTapOnLookAroundWithSearchResult:(id)a4
{
  v6 = [a4 mapItem];
  if ([v6 _hasLookAroundStorefront])
  {
    v5 = [MKLookAroundEntryPoint entryPointWithMapItem:v6 wantsCloseUpView:1];
    [(ActionCoordinator *)self enterLookAroundWithEntryPoint:v5 lookAroundView:0 showsFullScreen:1 originFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  }
}

- (void)simpleResultsViewContoller:(id)a3 selectDirectionItem:(id)a4
{
  v9 = @"DirectionsSessionInitiatorKey";
  v10 = &off_1016E8048;
  v6 = a4;
  v7 = a3;
  v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [(ActionCoordinator *)self viewController:v7 doDirectionItem:v6 withUserInfo:v8];
}

- (void)simpleResultsViewContoller:(id)a3 selectClusteredLabelMarker:(id)a4
{
  v5 = a4;
  v6 = [(ActionCoordinator *)self mapSelectionManager];
  [v6 selectLabelMarker:v5 animated:1];
}

- (void)simpleResultsViewContoller:(id)a3 selectSearchResult:(id)a4
{
  v10 = a4;
  v6 = a3;
  v7 = [(ActionCoordinator *)self venueCardCoordinator];
  v8 = [v7 topViewController];

  if (v8 == v6)
  {
    [(ActionCoordinator *)self viewController:0 presentVenuesClusteredSearchResult:v10];
  }

  else
  {
    v9 = [(ActionCoordinator *)self mapSelectionManager];
    [v9 selectSearchResult:v10 animated:1];
  }
}

- (id)traitsForQuickActionPresenter
{
  v2 = [(ActionCoordinator *)self newTraits];

  return v2;
}

- (id)allSearchResultsForCurrentPinsOnMap
{
  v2 = [(ActionCoordinator *)self searchPinsManager];
  v3 = [v2 allSearchResults];

  return v3;
}

- (void)selectSearchResult:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(ActionCoordinator *)self mapSelectionManager];
  [v7 selectSearchResult:v6 animated:v4];
}

- (void)enterRouteCreationWithMapItem:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ActionCoordinator *)self appCoordinator];
  [v8 enterRouteCreationWithMapItem:v7 completion:v6];
}

- (void)setSearchPins:(id)a3 selectedPin:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(ActionCoordinator *)self searchPinsManager];
  [v10 setSearchPins:v9 selectedPin:v8 animated:v5];
}

- (void)setSearchPinsFromSearchInfo:(id)a3 scrollToResults:(BOOL)a4 displayPlaceCardForResult:(id)a5 animated:(BOOL)a6 completion:(id)a7
{
  v7 = a6;
  v9 = a4;
  v12 = a7;
  v13 = a5;
  v14 = a3;
  v15 = [(ActionCoordinator *)self searchPinsManager];
  [v15 setSearchPinsFromSearchInfo:v14 scrollToResults:v9 displayPlaceCardForResult:v13 animated:v7 completion:v12];
}

- (void)lineCardViewControllerDidAppear:(id)a3
{
  v8 = a3;
  v4 = [(ActionCoordinator *)self lineSelectionAction];
  v5 = [v8 lineItem];
  v6 = [v4 isShowingLineForLineItem:v5];

  if ((v6 & 1) == 0)
  {
    v7 = [v8 lineItem];
    [(ActionCoordinator *)self viewController:v8 selectTransitLineItem:v7 zoomToMapRegion:0];
  }
}

- (void)lineCardViewController:(id)a3 displayMapRegion:(id)a4
{
  v5 = a4;
  v6 = [(ActionCoordinator *)self mapCameraController];
  [v6 displayMapRegion:v5 animated:1 completion:0];
}

- (void)lineCardViewController:(id)a3 selectMapItem:(id)a4
{
  v6 = a4;
  [(ActionCoordinator *)self viewController:a3 selectMapItem:v6 address:0 addToHistory:1 source:4];
  v7 = [(ActionCoordinator *)self mapCameraController];
  [v7 frameMapItem:v6 animated:1 completion:0];
}

- (void)lineCardViewController:(id)a3 doDirectionItem:(id)a4
{
  v9 = @"DirectionsSessionInitiatorKey";
  v10 = &off_1016EAB08;
  v6 = a4;
  v7 = a3;
  v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [(ActionCoordinator *)self viewController:v7 doDirectionItem:v6 withUserInfo:v8];
}

- (BOOL)chromeShouldAllowSelectingAnnotationView:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 isVLFPuckVisible])
  {
    v5 = [(ActionCoordinator *)self platformController];
    v6 = [v5 auxiliaryTasksManager];
    v7 = [v6 auxilaryTaskForClass:objc_opt_class()];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100F7A92C;
    block[3] = &unk_101661B18;
    v12 = v7;
    v8 = v7;
    dispatch_async(&_dispatch_main_q, block);

    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)chromeDidSelectOfflineAnnotationMarker:(id)a3
{
  v4 = a3;
  x = MKMapRectNull.origin.x;
  y = MKMapRectNull.origin.y;
  v35 = y;
  if ([v4 _maps_isOfflineAnnotation])
  {
    v7 = [v4 featureAnnotation];
    v8 = [v7 subscription];
    v9 = [v8 region];
    GEOMapRectForMapRegion();
    x = v10;
    y = v11;
    width = v12;
    height = v14;
  }

  else
  {
    width = MKMapRectNull.size.width;
    height = MKMapRectNull.size.height;
    if (![v4 _maps_isOfflineClusterAnnotation])
    {
      goto LABEL_14;
    }

    v7 = [v4 clusterFeatureAnnotations];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v16 = [v7 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v37;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v37 != v18)
          {
            objc_enumerationMutation(v7);
          }

          v20 = *(*(&v36 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v21 = [v20 subscription];
            v22 = [v21 region];
            GEOMapRectForMapRegion();
            v24 = v23;
            v26 = v25;
            v28 = v27;
            v30 = v29;

            v41.origin.x = x;
            v41.origin.y = y;
            v41.size.width = width;
            v41.size.height = height;
            v43.origin.x = v24;
            v43.origin.y = v26;
            v43.size.width = v28;
            v43.size.height = v30;
            v42 = MKMapRectUnion(v41, v43);
            x = v42.origin.x;
            y = v42.origin.y;
            width = v42.size.width;
            height = v42.size.height;
          }
        }

        v17 = [v7 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v17);
    }
  }

LABEL_14:
  if (x != MKMapRectNull.origin.x || y != v35)
  {
    v31 = [(ActionCoordinator *)self mapSelectionManager];
    v32 = [v31 mapView];
    [v32 setVisibleMapRect:1 edgePadding:x animated:{y, width, height, 35.0, 35.0, 35.0, 35.0}];

    v33 = [(ActionCoordinator *)self mapSelectionManager];
    [v33 clearSelection];
  }

  return x != MKMapRectNull.origin.x || y != v35;
}

- (BOOL)chromeDidSelectRouteAnnotations:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [v4 firstObject];
    v6 = [(ActionCoordinator *)self routeAnnotationVC];
    [v6 setRouteAnnotation:v5];

    v7 = [v5 styleAttributes];
    v8 = FeatureStyleAttributesFind();

    if (v8)
    {
      v9 = [NSNumber numberWithInt:0];
    }

    else
    {
      v9 = 0;
    }

    v10 = [(ActionCoordinator *)self routePlanningDataCoordinator];
    v11 = [v10 transportType];

    if (v11 == 5 || v11 == 2)
    {
      if (v11 == 2)
      {
        v12 = 312;
      }

      else
      {
        v12 = 67;
      }

      v13 = +[MKMapService sharedService];
      v14 = [(ActionCoordinator *)self currentMapViewTargetForAnalytics];
      v15 = [v9 stringValue];
      [v13 captureUserAction:v12 onTarget:v14 eventValue:v15];
    }

    v16 = [(ActionCoordinator *)self containerViewController];
    v17 = [v16 currentViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v19 = [(ActionCoordinator *)self containerViewController];
    v20 = [(ActionCoordinator *)self routeAnnotationVC];
    if (isKindOfClass)
    {
      [v19 replaceCurrentWithController:v20 moveToContaineeDefaultLayout:1];
    }

    else
    {
      [v19 presentController:v20 animated:1 useDefaultContaineeLayout:1];
    }
  }

  return 1;
}

- (BOOL)chromeDidSelectETAMarkerForRoute:(id)a3
{
  v4 = a3;
  v5 = [(ActionCoordinator *)self routePlanningDataCoordinator];
  [v5 updateCurrentRoute:v4];

  [(ActionCoordinator *)self presentRoutePlanningViewType:0];
  v6 = +[MKMapService sharedService];
  v7 = [(ActionCoordinator *)self currentMapViewTargetForAnalytics];
  v8 = [v4 _maps_routeIndex];

  [v6 captureUserAction:3015 onTarget:v7 eventValue:0 routeIndex:v8];
  return 1;
}

- (BOOL)chromeDidSelectTrafficIncident:(id)a3 latitude:(id)a4 longitude:(id)a5
{
  v6 = a3;
  v7 = [(ActionCoordinator *)self trafficIncidentVC];
  [v7 updateWithIncident:v6];

  v8 = [(ActionCoordinator *)self containerViewController];
  v9 = [v8 currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v11 = [(ActionCoordinator *)self containerViewController];
  v12 = [(ActionCoordinator *)self trafficIncidentVC];
  if (isKindOfClass)
  {
    [v11 replaceCurrentWithController:v12 moveToContaineeDefaultLayout:1];
  }

  else
  {
    [v11 presentController:v12 animated:1 useDefaultContaineeLayout:1];
  }

  v13 = +[MKMapService sharedService];
  v14 = +[MKTrafficSupport GEOTrafficIncidentTypeForVKTrafficIncidentType:](MKTrafficSupport, "GEOTrafficIncidentTypeForVKTrafficIncidentType:", [v6 type]);
  if (v14 >= 0x14)
  {
    v15 = [NSString stringWithFormat:@"(unknown: %i)", v14];
  }

  else
  {
    v15 = off_10165EE18[v14];
  }

  [v13 captureUserAction:1031 onTarget:511 eventValue:v15];

  return 1;
}

- (BOOL)chromeDidSelectTransitLineMarker:(id)a3
{
  v4 = a3;
  v5 = [(ActionCoordinator *)self lineSelectionAction];

  if (!v5)
  {
    v6 = [TransitLineSelectionActionController alloc];
    v7 = [(ActionCoordinator *)self containerViewController];
    v8 = [(TransitLineSelectionActionController *)v6 initWithContainerViewController:v7 actionCoordinator:self];
    [(ActionCoordinator *)self setLineSelectionAction:v8];
  }

  v9 = [(ActionCoordinator *)self lineSelectionAction];
  v10 = [v9 isShowingLineForLabelMarker:v4];

  if ((v10 & 1) == 0)
  {
    v11 = [(ActionCoordinator *)self lineCardVC];
    v12 = [v4 _maps_numLines];
    v13 = v12 > 1;
    v14 = [v4 _maps_loadedLineItems];

    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0;
    v15 = v12 < 2 && v14 == 0;
    v16 = v15;
    if (v15)
    {
      v17 = [[IncompleteTransitLineItem alloc] initWithLabelMarker:v4];
      [(ActionCoordinator *)self presentLineCardForItem:v17 labelMarker:v4 loading:1 overDisambiguation:v12 > 1 preferredLayout:0];

      v18 = [v11 lineItem];
      v19 = [v18 muid];
      v32[3] = v19;
    }

    v20 = [(ActionCoordinator *)self lineSelectionAction];
    v21 = [v4 _maps_lineShouldZoomMapRegionOnSelection];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100F7B288;
    v25[3] = &unk_10165EDF8;
    v25[4] = self;
    v29 = v13;
    v22 = v4;
    v26 = v22;
    v23 = v11;
    v27 = v23;
    v28 = &v31;
    v30 = v16;
    [v20 selectLineForLabelMarker:v22 zoomToMapRegion:v21 onActivation:v25];

    [v22 set_maps_lineShouldZoomMapRegionOnSelection:0];
    _Block_object_dispose(&v31, 8);
  }

  return 1;
}

- (BOOL)chromeDidSelectFlyoverTourLabelMarker:(id)a3
{
  v4 = [a3 flyoverTourIdentifier];
  v5 = +[MKMapService sharedService];
  v11 = v4;
  v6 = [NSArray arrayWithObjects:&v11 count:1];
  v7 = [(ActionCoordinator *)self newTraits];
  v8 = [v5 ticketForIdentifiers:v6 traits:v7];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100F7B54C;
  v10[3] = &unk_101660FB0;
  v10[4] = self;
  [v8 submitWithHandler:v10 networkActivity:0];

  return 1;
}

- (BOOL)chromeDidSelectWaypointMarkerForAddress:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [v4 contact];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100F7B6D0;
  v7[3] = &unk_10165EDD0;
  objc_copyWeak(&v8, &location);
  [_TtC4Maps22MapsAutocompletePerson autoCompletePersonWithContact:v5 completionHandler:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return 1;
}

- (BOOL)chromeDidSelectWaypointMarkerForFindMyHandleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(ActionCoordinator *)self currentSearchSession];
  v6 = [v5 searchInfo];

  v7 = [v6 autocompletePerson];
  v8 = [v7 handle];
  v9 = [v8 handle];
  v10 = [v9 handleIdentifier];
  if (![v4 isEqualToString:v10])
  {

    goto LABEL_7;
  }

  v11 = [v6 results];
  v12 = [v11 count];

  if (!v12)
  {
LABEL_7:
    objc_initWeak(buf, self);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100F7BAB0;
    v18[3] = &unk_10165EDA8;
    v19 = v4;
    objc_copyWeak(&v20, buf);
    [_TtC4Maps22MapsAutocompletePerson autoCompletePersonWithHandleIdentifier:v19 completionHandler:v18];
    objc_destroyWeak(&v20);

    objc_destroyWeak(buf);
    goto LABEL_8;
  }

  v13 = [(ActionCoordinator *)self searchPinsManager];
  v14 = [v6 results];
  v15 = [v14 firstObject];
  [v13 setSearchPinsFromSearchInfo:v6 scrollToResults:1 displayPlaceCardForResult:v15 animated:1 completion:0];

  v16 = sub_100798A3C();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v4;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Using the same search session to select a waypoint: %@", buf, 0xCu);
  }

LABEL_8:
  return 1;
}

- (BOOL)chromeDidSelectRouteWaypointMarker:(id)a3
{
  v4 = a3;
  v5 = [MKMapItemIdentifier alloc];
  v6 = [v4 featureID];
  [v4 coordinate];
  v8 = v7;
  [v4 coordinate];
  v9 = [v5 initWithMUID:v6 resultProviderID:0 coordinate:v8];
  v10 = +[MKMapService sharedService];
  v19 = v9;
  v11 = [NSArray arrayWithObjects:&v19 count:1];
  v12 = [(ActionCoordinator *)self newTraits];
  v13 = [v10 ticketForIdentifiers:v11 traits:v12];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100F7BE24;
  v16[3] = &unk_10165FE18;
  v17 = v4;
  v18 = self;
  v14 = v4;
  [v13 submitWithHandler:v16 networkActivity:0];

  return 1;
}

- (BOOL)chromeDidSelectCustomPOIAnnotation:(id)a3
{
  v4 = a3;
  v5 = [v4 parkedCar];
  if (v5)
  {

    v6 = 0;
LABEL_3:
    v7 = [v4 personalizedItem];
    [(ActionCoordinator *)self viewController:0 selectPersonalizedItem:v7 source:1 saveSelectionState:0];

    goto LABEL_4;
  }

  v6 = [v4 searchResult];
  if (!v6)
  {
    goto LABEL_3;
  }

  v9 = [(ActionCoordinator *)self venueCardCoordinator];
  v10 = [v9 topViewController];
  v11 = [(ActionCoordinator *)self currentViewController];
  v12 = v11;
  if (v10 == v11)
  {
    v13 = [(ActionCoordinator *)self currentViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [(ActionCoordinator *)self viewController:0 presentVenuesClusteredSearchResult:v6];
      goto LABEL_4;
    }
  }

  else
  {
  }

  if ([v6 type] == 3)
  {
    goto LABEL_3;
  }

  v15 = [(ActionCoordinator *)self currentSearchSession];
  if ([v15 singleResultMode])
  {
    v16 = [(ActionCoordinator *)self currentSearchSession];
    v17 = [v16 searchFieldItem];
    v18 = [v17 searchResult];

    if (v18 == v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
  }

  v19 = [v6 autocompletePerson];
  if (v19)
  {
  }

  else
  {
    v20 = [v6 findMyHandle];

    if (!v20)
    {
      v21 = 1;
      goto LABEL_19;
    }
  }

  v21 = 0;
LABEL_19:
  if ([v6 locationType] == 4)
  {
    v22 = +[MKMapService sharedService];
    [v22 captureUserAction:404 onTarget:502 eventValue:0];
  }

  v23 = [(ActionCoordinator *)self containerViewController];
  if (sub_10000FA08(v23) == 5)
  {
    v24 = [(ActionCoordinator *)self currentViewController];
    objc_opt_class();
    v25 = objc_opt_isKindOfClass();

    if (v25)
    {
      v26 = 6;
    }

    else
    {
      v26 = 1;
    }
  }

  else
  {

    v26 = 1;
  }

  [(ActionCoordinator *)self viewController:0 selectSearchResult:v6 addToHistory:v21 source:v26 saveSelectionState:0 replaceCurrentCard:1];
LABEL_4:

  return 1;
}

- (BOOL)chromeDidClearMapSelection
{
  v3 = [(ActionCoordinator *)self containerViewController];
  v4 = [v3 currentOrPendingViewController];

  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    if ([(ActionCoordinator *)self shouldDismissPlaceCardOnClearMapSelection])
    {
      [(ActionCoordinator *)self viewControllerClosed:v4 animated:1];
    }
  }

  else
  {
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v16[2] = objc_opt_class();
    v16[3] = objc_opt_class();
    v16[4] = objc_opt_class();
    [NSArray arrayWithObjects:v16 count:5];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = v14 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          if ([v4 isMemberOfClass:{*(*(&v11 + 1) + 8 * i), v11}])
          {
            [(ActionCoordinator *)self viewControllerClosed:v4 animated:1];
            goto LABEL_14;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  return 1;
}

- (BOOL)chromeDidSelectUserLocationAnnotation:(id)a3
{
  v4 = [a3 annotation];
  [(ActionCoordinator *)self viewController:0 selectSearchResult:v4 addToHistory:0 source:1 saveSelectionState:0];

  return 1;
}

- (BOOL)chromeDidSelectClusteredFeatureAnnotationsMarker:(id)a3
{
  v4 = a3;
  if (GEOConfigGetBOOL() && [(ActionCoordinator *)self isPresentingAddStopSearchResults])
  {
    v5 = [_TtC4Maps36ClusteredResultsContextConfiguration alloc];
    v6 = [(ActionCoordinator *)self currentSearchSession];
    v7 = [v6 searchInfo];
    v8 = [(ClusteredResultsContextConfiguration *)v5 initWithLabelMarker:v4 sortAlphabetically:1 displayDistance:1 originalSearchInfo:v7 currentLocation:0];

    v9 = [(ActionCoordinator *)self containerViewController];
    v10 = [v9 chromeViewController];
    v11 = [v10 topContext];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v11 updateWithConfiguration:v8];
    }

    else
    {
      v12 = [[_TtC4Maps23ClusteredResultsContext alloc] initWithConfiguration:v8];
      v13 = [(ActionCoordinator *)self containerViewController];
      v14 = [v13 chromeViewController];
      [v14 pushContext:v12 animated:1 completion:&stru_10165ED80];
    }
  }

  else
  {
    [(ActionCoordinator *)self viewController:0 presentCluster:v4];
  }

  return 1;
}

- (BOOL)chromeDidSelectClusteredWaypointMarker:(id)a3
{
  v4 = a3;
  if ([v4 isCluster])
  {
    v5 = [v4 clusterWaypointInfos];
    v6 = [v5 _maps_compactMap:&stru_10165ED60];

    v7 = [v6 count];
    v8 = v7 != 0;
    if (v7)
    {
      v9 = [(ActionCoordinator *)self simpleListResultsVC];
      v10 = [v9 cluster];

      if (v10 != v4)
      {
        v11 = [(ActionCoordinator *)self simpleListResultsVC];
        [v11 clearCluster];
      }

      v12 = [(ActionCoordinator *)self simpleListResultsVC];
      [v12 setDisplayDistance:1];

      v13 = [(ActionCoordinator *)self simpleListResultsVC];
      v14 = [(ActionCoordinator *)self currentSearchSession];
      v15 = [v14 searchInfo];
      [v13 setCluster:v4 sortAlphabetically:0 originalSearchInfo:v15 searchResults:v6];

      v16 = [(ActionCoordinator *)self simpleListResultsVC];
      [(ActionCoordinator *)self presentSimpleList:v16];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)chromeShouldAllowSelectingLabelMarker:(id)a3
{
  v4 = a3;
  if ([v4 isTransitLine] && -[ActionCoordinator isRoutePlanningPresented](self, "isRoutePlanningPresented") || (objc_msgSend(v4, "waypointInfo"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "waypoint"), v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v7 = objc_opt_isKindOfClass(), v6, v5, (v7 & 1) != 0))
  {
    v8 = 0;
  }

  else
  {
    v9 = [(ActionCoordinator *)self containerViewController];
    v10 = [v9 currentViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v8 = isKindOfClass ^ 1;
  }

  return v8 & 1;
}

@end