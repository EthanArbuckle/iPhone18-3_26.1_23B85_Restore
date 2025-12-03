@interface ActionCoordinator
- (ActionCoordinator)initWithPlatformController:(id)controller;
- (AppCoordinator)appCoordinator;
- (BOOL)_canCaptureSearchStateForCardItem:(id)item previousItemInStack:(id)stack;
- (BOOL)_conditionallyPopForContaineeClass:(Class)class;
- (BOOL)_conditionallyPopForContextClass:(Class)class;
- (BOOL)_isBuildingMultipointRoute;
- (BOOL)_isRoutePlanningTopMost;
- (BOOL)_shouldPresentAddStopSearchResults;
- (BOOL)canEnterPedestrianAR;
- (BOOL)chromeDidClearMapSelection;
- (BOOL)chromeDidSelectClusteredFeatureAnnotationsMarker:(id)marker;
- (BOOL)chromeDidSelectClusteredWaypointMarker:(id)marker;
- (BOOL)chromeDidSelectCustomPOIAnnotation:(id)annotation;
- (BOOL)chromeDidSelectETAMarkerForRoute:(id)route;
- (BOOL)chromeDidSelectFlyoverTourLabelMarker:(id)marker;
- (BOOL)chromeDidSelectOfflineAnnotationMarker:(id)marker;
- (BOOL)chromeDidSelectRouteAnnotations:(id)annotations;
- (BOOL)chromeDidSelectRouteWaypointMarker:(id)marker;
- (BOOL)chromeDidSelectTrafficIncident:(id)incident latitude:(id)latitude longitude:(id)longitude;
- (BOOL)chromeDidSelectTransitLineMarker:(id)marker;
- (BOOL)chromeDidSelectUserLocationAnnotation:(id)annotation;
- (BOOL)chromeDidSelectWaypointMarkerForAddress:(id)address;
- (BOOL)chromeDidSelectWaypointMarkerForFindMyHandleIdentifier:(id)identifier;
- (BOOL)chromeShouldAllowSelectingAnnotationView:(id)view;
- (BOOL)chromeShouldAllowSelectingLabelMarker:(id)marker;
- (BOOL)clusterIsPartOfVenues:(id)venues;
- (BOOL)isPedestrianARActive;
- (BOOL)isPedestrianARShowingFailureView;
- (BOOL)isPresentingAddStopSearchResults;
- (BOOL)isRoutePlanningPresented;
- (BOOL)isTeachableMomentCardActive;
- (BOOL)isWeatherPopoverActive;
- (BOOL)mapsDragDestinationHandler:(id)handler didReceiveURL:(id)l;
- (BOOL)mapsDragDestinationHandler:(id)handler didReceiveVCard:(id)card;
- (BOOL)pptTestCanResizePlacecard;
- (BOOL)pptTestCanUpdateTrayLayout;
- (BOOL)pptTestIsTrayType:(int64_t)type;
- (BOOL)searchSessionShouldUpdateEVChargers;
- (BOOL)shouldAddStopInRoutePlanning;
- (BOOL)shouldDismissPlaceCardOnClearMapSelection;
- (BOOL)shouldReusePlaceCardViewController:(id)controller;
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
- (id)_filteredFeaturesFromTransitSystems:(id)systems allFeatures:(id)features;
- (id)_newPlaceCardViewControllerForReuse;
- (id)_searchResultFromMapsSuggestionsEntry:(id)entry;
- (id)allSearchResultsForCurrentPinsOnMap;
- (id)autosharingVC;
- (id)incidentsVC;
- (id)mapSelectionStateForVenueCardItem:(id)item savePlaceCardSelectionState:(BOOL)state;
- (id)mapView;
- (id)placeCardForRoutePlanningViewController;
- (id)placeCardForVenuesViewController:(id)controller;
- (id)reportsHomeViewController;
- (id)resultsViewController;
- (id)routeAnnotationsProvider;
- (id)routeOptionsVC;
- (id)routePlanningMapController;
- (id)routeSearchVC;
- (id)routeStepsVC;
- (id)routingAppsVC;
- (id)searchFieldItemForVenueCardItem:(id)item previousItemInStack:(id)stack;
- (id)searchInfoForVenueCardItem:(id)item previousItemInStack:(id)stack;
- (id)searchModeViewController;
- (id)searchResultsForViewController:(id)controller;
- (id)settingsViewController;
- (id)shortcutEditSessionController;
- (id)timePickingVC;
- (id)traits;
- (id)traitsForAddFromACViewController:(id)controller;
- (id)traitsForCuratedCollectionViewController:(id)controller;
- (id)traitsForQuickActionPresenter;
- (id)traitsForRouteSearchViewController:(id)controller;
- (int)currentMapViewTargetForAnalytics;
- (int)currentUITargetForAnalytics;
- (int)mapApplicationState;
- (int64_t)_excludedContentForPlaceCardItem:(id)item;
- (int64_t)displayedViewMode;
- (void)_cancelUserInteractions;
- (void)_carPlayPlaceCardDidDismiss:(id)dismiss;
- (void)_carPlayPlaceCardDidPresent:(id)present;
- (void)_carPlayWantsToDisplayEVOnboarding:(id)onboarding;
- (void)_cleanUpVenuesStackForNonVenuePlaceCardItem:(id)item;
- (void)_cleanupRoutePlanningIfNeededAnimated:(BOOL)animated;
- (void)_enterRoutePlanningOverviewAnimated:(BOOL)animated saveMapCamera:(BOOL)camera completion:(id)completion;
- (void)_exitRoutePlanningIfNeededAnimated:(BOOL)animated restoreStashedMapSelection:(BOOL)selection;
- (void)_prepareToReceiveDrop;
- (void)_presentMacRouteEditingWithEditRequired:(unint64_t)required index:(unint64_t)index;
- (void)_presentVenuesPlaceCardItem:(id)item shouldSaveSelectionState:(BOOL)state source:(unint64_t)source resetPlaceCardViewControllerBlock:(id)block;
- (void)_promptForCurrentLocationConfirmationWithDirectionItem:(id)item userInfo:(id)info;
- (void)_promptForEditRequired:(unint64_t)required forWaypointAtIndex:(unint64_t)index inDirectionItem:(id)item userInfo:(id)info;
- (void)_resetStack;
- (void)_setHikingFeaturesForPlaceCardItem:(id)item;
- (void)_setRouteSelectionMapState;
- (void)_setTopographicalFeaturesForPlaceCardItem:(id)item;
- (void)_viewControllerShowOfflineMaps:(id)maps completionHandler:(id)handler;
- (void)actionControlDidDeactivate:(id)deactivate;
- (void)addContainerViewControllerObservers;
- (void)addRatingsForMapItem:(id)item;
- (void)chromeViewController:(id)controller didUpdateViewMode:(int64_t)mode;
- (void)clearMapSelection;
- (void)clearSearch;
- (void)clearSearchIfOriginatedFromWaypointEditor;
- (void)clearSearchPins;
- (void)clearSharedTrips;
- (void)closeRoutePlanningViewController:(id)controller withSender:(id)sender;
- (void)closeSettingsIfNeeded;
- (void)closeSharedTripDetail;
- (void)closeStopDetail;
- (void)closeVenueFloorCardViewController:(id)controller;
- (void)closeVenueViewController:(id)controller;
- (void)collectionPickerClosed:(id)closed;
- (void)collectionPickerNewCollection:(id)collection;
- (void)confirmDeleteCollections:(id)collections sourceItem:(id)item sourceRect:(CGRect)rect completion:(id)completion;
- (void)confirmDeleteSharedTripWithSummary:(id)summary sourceView:(id)view sourceRect:(CGRect)rect completion:(id)completion;
- (void)containeeViewController:(id)controller didCreateKeyboardProxy:(id)proxy;
- (void)containerViewControllerDidResignContainee:(id)containee toContainee:(id)toContainee;
- (void)containerViewControllerWillPresentContainee:(id)containee overContainee:(id)overContainee;
- (void)continueRideBookingSessionWithApplicationIdentifier:(id)identifier;
- (void)createRadar;
- (void)curatedCollectionViewController:(id)controller pickCollectionWithSession:(id)session presentationOptions:(id)options;
- (void)curatedCollectionViewController:(id)controller selectSearchResult:(id)result;
- (void)dealloc;
- (void)defaultZoom;
- (void)deleteMarkedLocation:(id)location;
- (void)didRequestDirectionsForSharedTrip:(id)trip;
- (void)didSaveCustomRoute:(id)route;
- (void)didSelectStopWithMapItem:(id)item;
- (void)didTapMapView:(id)view atPoint:(CGPoint)point;
- (void)dismissLastVenuePlaceCard;
- (void)dismissPedestrianARTeachableMomentCardIfNecessary;
- (void)dismissPlaceCardViewController:(id)controller;
- (void)dismissRoutePlanningPlaceCardIfNeeded;
- (void)displayAlertWithTitle:(id)title message:(id)message postAlertSearchType:(unsigned int)type;
- (void)displayIncidentReportSubmissionWithItem:(id)item report:(id)report;
- (void)endSearch;
- (void)endSearchForTesting;
- (void)ensureMapSelectionVisible;
- (void)ensureRoutePlanningContentIsVisible;
- (void)enterLookAroundWithEntryPoint:(id)point lookAroundView:(id)view showsFullScreen:(BOOL)screen originFrame:(CGRect)frame;
- (void)enterPedestrianAR;
- (void)enterPedestrianAR:(id)r;
- (void)enterRouteCreationWithMapItem:(id)item completion:(id)completion;
- (void)exit3dMode;
- (void)exitLookAround;
- (void)exitPedestrianAR;
- (void)getCurrentSceneTitleWithCompletion:(id)completion;
- (void)guidesHomeViewController:(id)controller showCuratedGuideWithIdentifier:(id)identifier;
- (void)handleVenueSearchResultsWithSelectedSearchResult:(id)result searchFieldItem:(id)item browseCategories:(id)categories;
- (void)incidentReportSubmissionContaineeDidFinish:(id)finish;
- (void)injectSearchPinsFromSearchInfo:(id)info;
- (void)lineCardViewController:(id)controller displayMapRegion:(id)region;
- (void)lineCardViewController:(id)controller doDirectionItem:(id)item;
- (void)lineCardViewController:(id)controller selectMapItem:(id)item;
- (void)lineCardViewControllerDidAppear:(id)appear;
- (void)locationRefinementViewController:(id)controller didSelectCoordinate:(CLLocationCoordinate2D)coordinate;
- (void)mapsDragDestinationHandler:(id)handler didReceiveMapItem:(id)item;
- (void)mapsDragDestinationHandler:(id)handler didReceiveMapKitHandle:(id)handle title:(id)title;
- (void)mapsDragDestinationHandler:(id)handler didReceiveString:(id)string nearCoordinate:(CLLocationCoordinate2D)coordinate;
- (void)markedLocationRefinementViewControllerDidCancel:(id)cancel;
- (void)markedLocationRefinementViewControllerSelectedRemoveMarkedLocation:(id)location;
- (void)nearbyTransitViewController:(id)controller select:(id)select;
- (void)pinnedItemsViewControllerWithViewController:(id)controller didSelectPinSuggested:(id)suggested;
- (void)pinnedItemsViewControllerWithViewController:(id)controller didSelectPinned:(id)pinned;
- (void)placeCardViewController:(id)controller didRequestHikingToolTipRegionIDForLocation:(CLLocationCoordinate2D)location;
- (void)placeCardViewController:(id)controller didSelectSharePublisherShareItem:(id)item;
- (void)placeCardViewController:(id)controller didUpdateForViewMode:(int64_t)mode;
- (void)placeCardViewController:(id)controller didUpdateLinkedPlacesFromPlaceCardItem:(id)item;
- (void)placeCardViewController:(id)controller doSearchItem:(id)item withUserInfo:(id)info;
- (void)placeCardViewController:(id)controller editNameOfMapItem:(id)item saveHandler:(id)handler cancelHandler:(id)cancelHandler;
- (void)placeCardViewController:(id)controller mapItemDidChange:(id)change;
- (void)placeCardViewController:(id)controller placeCardItemWillChange:(id)change;
- (void)placeCardViewController:(id)controller presentCategoryPlacesListForMapItem:(id)item searchCategory:(id)category;
- (void)placeCardViewController:(id)controller requestCopyLinkToClipboard:(id)clipboard;
- (void)placeCardViewController:(id)controller selectTransitLineItem:(id)item;
- (void)placeCardViewController:(id)controller showOfflineMapRegionSelectorForRegion:(id)region name:(id)name muid:(unint64_t)muid shouldShowDataManagementAfterDownload:(BOOL)download;
- (void)placeCardViewController:(id)controller willReusePlaceCardItem:(id)item;
- (void)placeCardViewControllerDidTapHikingTip:(id)tip originMapItem:(id)item;
- (void)placeCardViewControllerRemovedObservingHandle:(id)handle;
- (void)placeCardViewControllerWillBecomeCurrent:(id)current;
- (void)placeCardViewControllerWillResignCurrent:(id)current;
- (void)placeViewControllerViewContactsClosed:(id)closed;
- (void)poiEnrichmentCoordinator:(id)coordinator openURL:(id)l;
- (void)poiEnrichmentCoordinatorDidFinish:(id)finish;
- (void)popContainee;
- (void)pptAssertSearch;
- (void)pptSelectACSuggestionMatchingAddress:(id)address;
- (void)pptSelectFirstCuratedGuide;
- (void)pptSelectFirstGuidePublisher;
- (void)pptSelectSeeAllCuratedCollections;
- (void)pptTestAutocompleteSearchForFieldItem:(id)item;
- (void)pptTestCreateCustomSearchResultForDroppedPinAtPoint:(CLLocationCoordinate2D)point animated:(BOOL)animated;
- (void)pptTestDismissTrayAnimated:(BOOL)animated assertTrayType:(int64_t)type;
- (void)pptTestDoDirectionItem:(id)item;
- (void)pptTestEnterSearchMode;
- (void)pptTestMaximizePlaceCardAnimated:(BOOL)animated;
- (void)pptTestMediumizePlaceCardAnimated:(BOOL)animated;
- (void)pptTestMinimizePlaceCardAnimated:(BOOL)animated;
- (void)pptTestOpenFirstCollection;
- (void)pptTestPresentPlacecardWithMapItem:(id)item;
- (void)pptTestSearchCancel;
- (void)pptTestSearchEndEditing;
- (void)pptTestSearchForFieldItem:(id)item;
- (void)pptTestSearchNearbyCategoryWithIndex:(unint64_t)index;
- (void)pptTestSearchRetainQueryForSelectedSearchCompletion:(id)completion;
- (void)pptTestStartNavigation;
- (void)pptTestUpdateTrayLayout:(unint64_t)layout animated:(BOOL)animated;
- (void)presentAutosharingContactSearchWithContacts:(id)contacts selectionHandler:(id)handler;
- (void)presentChinaAlertForSharedTrip:(id)trip;
- (void)presentEditNoteViewControllerWithInitialText:(id)text libraryAccessProvider:(id)provider placeMUID:(unint64_t)d completion:(id)completion;
- (void)presentEducationScreenWithAssetURLs:(id)ls titleText:(id)text bodyText:(id)bodyText;
- (void)presentGuidesHomeWithGuideLocation:(id)location;
- (void)presentLPRWithVehicle:(id)vehicle scenario:(int64_t)scenario presenter:(id)presenter completionBlock:(id)block;
- (void)presentLineCardForItem:(id)item labelMarker:(id)marker loading:(BOOL)loading overDisambiguation:(BOOL)disambiguation preferredLayout:(unint64_t)layout;
- (void)presentLineCardForItem:(id)item loading:(BOOL)loading sourceView:(id)view sourceRect:(CGRect)rect;
- (void)presentLoadingResults;
- (void)presentLocationCorrectionViewWithSession:(id)session;
- (void)presentMapsSettingInSettingsApp;
- (void)presentPOIEnrichmentInformedConsentWithPresentationContext:(int64_t)context completion:(id)completion;
- (void)presentPlaceCard:(id)card canReplaceCurrentIfNecessary:(BOOL)necessary;
- (void)presentPlaceCardForItem:(id)item addToHistory:(BOOL)history source:(unint64_t)source saveSelectionState:(BOOL)state replaceCurrentCard:(BOOL)card;
- (void)presentPreferredNetworksOnboardingForVehicle:(id)vehicle;
- (void)presentRouteLibraryWithAvailableRoutes:(id)routes unavailableRoutes:(id)unavailableRoutes;
- (void)presentRoutePlanningViewType:(int64_t)type;
- (void)presentScheduleForStep:(id)step;
- (void)presentSearchAndRestoreSearchItem:(id)item;
- (void)presentSearchAnimated:(BOOL)animated;
- (void)presentSharedTrip:(id)trip;
- (void)presentSharedTrip:(id)trip inPopoverFromView:(id)view;
- (void)presentSharedTrips;
- (void)presentSimpleList:(id)list;
- (void)presentUnsupportedTransportTypeOrProtocolAlertForSharedTrip:(id)trip;
- (void)presentVehicleOnboardingWithVehicles:(id)vehicles completion:(id)completion;
- (void)presentVenueCategoryWithVenueCategoryItem:(id)item;
- (void)presentWalletDCIViewControllerWithTransitSystems:(id)systems callbackDelegate:(id)delegate;
- (void)presentWalletTopUpViewControllerWithTransitIdentifier:(id)identifier callbackDelegate:(id)delegate;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)productViewController:(id)controller didFinishWithResult:(int64_t)result;
- (void)ratingsHistoryContaineeViewController:(id)controller didSelect:(id)select;
- (void)receivedVenueEVChargersUpdate:(id)update;
- (void)refreshCurrentSearch;
- (void)refreshRoutePlanningTimingIfNeeded;
- (void)removeContainerViewControllerObserver;
- (void)restoreSearchForItem:(id)item withResults:(id)results sessionOrigin:(unint64_t)origin;
- (void)retainSearchQueryForSelectedSearchResult:(id)result;
- (void)routePlanningDataCoordinator:(id)coordinator isEnabled:(BOOL)enabled;
- (void)routePlanningUpdatedWaypoints:(id)waypoints;
- (void)routeSearchViewController:(id)controller wantsToPerformSearchWithItem:(id)item userInfo:(id)info autocompleteSessionData:(id)data;
- (void)routeSearchViewControllerDidDismiss:(id)dismiss shouldExitRoutePlanning:(BOOL)planning;
- (void)routeStepsViewController:(id)controller wantsToDisplayAdvisory:(id)advisory;
- (void)routeStepsViewController:(id)controller wantsToShareItem:(id)item fromView:(id)view;
- (void)searchSessionManagerReceiveEVChargersUpdate:(id)update;
- (void)searchSessionManagerSessionDidFail;
- (void)searchSessionManagerSessionDidInvalidate;
- (void)searchSessionManagerSessionDidReceiveUpdate;
- (void)select3dMode;
- (void)selectSearchResult:(id)result animated:(BOOL)animated;
- (void)selectWaypointSearchFieldIndex:(unint64_t)index exitPlanningIfCancelTapped:(BOOL)tapped beginEditing:(BOOL)editing;
- (void)setContainerViewController:(id)controller;
- (void)setCurrentDirectionItem:(id)item withOptions:(id)options;
- (void)setCurrentTransitLineItem:(id)item zoomToMapRegion:(BOOL)region preferredLayout:(unint64_t)layout;
- (void)setIsRoutePlanningPresented:(BOOL)presented;
- (void)setRoutePlanningAdvisoriesInfo:(id)info;
- (void)setRoutePlanningAdvisory:(id)advisory;
- (void)setSearchPins:(id)pins selectedPin:(id)pin animated:(BOOL)animated;
- (void)setSearchPinsFromSearchInfo:(id)info scrollToResults:(BOOL)results displayPlaceCardForResult:(id)result animated:(BOOL)animated completion:(id)completion;
- (void)setUserTrackingViewUserTrackingMode:(int64_t)mode;
- (void)setViewMode:(int64_t)mode animated:(BOOL)animated;
- (void)shortcutEditSessionControllerFinished:(id)finished shortcutWasReplacedBy:(id)by;
- (void)showAnnouncementForFlyover:(id)flyover;
- (void)showCuratedCollectionViewController:(id)controller replaceViewController:(BOOL)viewController completion:(id)completion;
- (void)showNearbyTeachableMomentCard;
- (void)showPedestrianARFeatureIntroTeachableMomentCard;
- (void)showPedestrianARRaiseToEnterTeachableMomentCard;
- (void)showVLF;
- (void)showWarmingSheetViewController:(int64_t)controller;
- (void)simpleResultsViewContoller:(id)contoller didTapOnAddStopWithSearchResult:(id)result;
- (void)simpleResultsViewContoller:(id)contoller didTapOnCallWithSearchResult:(id)result;
- (void)simpleResultsViewContoller:(id)contoller didTapOnFlyoverWithSearchResult:(id)result;
- (void)simpleResultsViewContoller:(id)contoller didTapOnLookAroundWithSearchResult:(id)result;
- (void)simpleResultsViewContoller:(id)contoller didTapOnWebsiteWithSearchResult:(id)result;
- (void)simpleResultsViewContoller:(id)contoller selectClusteredLabelMarker:(id)marker;
- (void)simpleResultsViewContoller:(id)contoller selectContainmentParentMapItem:(id)item resultsList:(id)list;
- (void)simpleResultsViewContoller:(id)contoller selectDirectionItem:(id)item;
- (void)simpleResultsViewContoller:(id)contoller selectSearchResult:(id)result;
- (void)simpleResultsViewContoller:(id)contoller selectTappableEntry:(id)entry resultsList:(id)list;
- (void)simpleResultsViewContoller:(id)contoller showCuratedCollection:(id)collection;
- (void)simpleResultsViewContoller:(id)contoller showCuratedCollectionsList:(id)list title:(id)title;
- (void)simpleResultsViewContoller:(id)contoller showUserGeneratedCollection:(id)collection;
- (void)startNavigationWithRouteCollection:(id)collection navigationDetailsOptions:(NavigationDetailsOptions *)options;
- (void)startRideBookingSessionWithRideOption:(id)option;
- (void)switchRoutePlanningTransportTypeToType:(int64_t)type;
- (void)timingViewController:(id)controller didPickTiming:(id)timing;
- (void)toggleRoutePlanning;
- (void)toggleTopLevelGuides;
- (void)toggleTopLevelPinned;
- (void)toggleTopLevelPlaces;
- (void)toggleTopLevelRecentlyAdded;
- (void)toggleTopLevelRecents;
- (void)toggleTopLevelSavedRoutes;
- (void)toggleTopLevelVisitedPlaces;
- (void)transitSchedulesViewController:(id)controller wantsToShowInfoForLine:(id)line;
- (void)updateFloatingControlsWithSearchSession:(id)session;
- (void)updateHistoricalLocations;
- (void)updateMapApplicationState:(int)state;
- (void)updateRedoSearchFloatingControl:(BOOL)control;
- (void)updateResultsViewContent;
- (void)updateRouteAnnotations;
- (void)updateSearchFieldWithSearchFieldItem:(id)item;
- (void)updateViewMode:(int64_t)mode animated:(BOOL)animated;
- (void)userGuideViewController:(id)controller didSelect:(id)select;
- (void)userGuideViewController:(id)controller didTapAddPlacesToGuide:(id)guide;
- (void)userGuidesListViewControllerWithViewController:(id)controller confirmDelete:(id)delete presentationOptions:(id)options completion:(id)completion;
- (void)userProfileViewControllerDismissByGestureWithViewController:(id)controller;
- (void)viewController:(id)controller addItemsFromACToCollection:(id)collection;
- (void)viewController:(id)controller addStopForSearchFieldItem:(id)item withUserInfo:(id)info;
- (void)viewController:(id)controller addStopForSearchResult:(id)result withUserInfo:(id)info;
- (void)viewController:(id)controller createDroppedPin:(id)pin;
- (void)viewController:(id)controller createMarkedLocationAtCoordinate:(CLLocationCoordinate2D)coordinate floorOrdinal:(int)ordinal;
- (void)viewController:(id)controller createNewCollectionWithSession:(id)session;
- (void)viewController:(id)controller dismissMenuControllerAnimated:(BOOL)animated;
- (void)viewController:(id)controller displayStoreViewControllerForAppWithiTunesIdentifier:(id)identifier clientIdentifier:(id)clientIdentifier;
- (void)viewController:(id)controller displayTableBookingFor:(id)for;
- (void)viewController:(id)controller displayTransitSchedulesForDepartureSequence:(id)sequence withTimeZone:(id)zone scheduleWindowStartDate:(id)date includeAllDirections:(BOOL)directions;
- (void)viewController:(id)controller displayTransitSchedulesForMapItem:(id)item departureSequence:(id)sequence;
- (void)viewController:(id)controller doAudioCallToSearchResult:(id)result;
- (void)viewController:(id)controller doDirectionIntent:(id)intent withSearchResults:(id)results;
- (void)viewController:(id)controller doDirectionIntentWithLocalSearchCompletion:(id)completion;
- (void)viewController:(id)controller doDirectionItem:(id)item allowToPromptEditing:(BOOL)editing withUserInfo:(id)info;
- (void)viewController:(id)controller doSearchItem:(id)item withUserInfo:(id)info;
- (void)viewController:(id)controller doSearchItem:(id)item withUserInfo:(id)info refinementsQuery:(id)query autocompleteSessionData:(id)data;
- (void)viewController:(id)controller doShareSheetForShareItem:(id)item completion:(id)completion;
- (void)viewController:(id)controller downloadOfflineRegionForRouteData:(id)data;
- (void)viewController:(id)controller editCollection:(id)collection;
- (void)viewController:(id)controller editCollection:(id)collection sourceView:(id)view sourceRect:(CGRect)rect completion:(id)completion;
- (void)viewController:(id)controller editLocationOfMarkedLocation:(id)location;
- (void)viewController:(id)controller editNameOfMapItem:(id)item saveHandler:(id)handler cancelHandler:(id)cancelHandler;
- (void)viewController:(id)controller editRoute:(id)route;
- (void)viewController:(id)controller editShortcut:(id)shortcut;
- (void)viewController:(id)controller editShortcut:(id)shortcut sourceView:(id)view sourceRect:(CGRect)rect;
- (void)viewController:(id)controller enterFlyoverForMapItem:(id)item;
- (void)viewController:(id)controller enterRouteCreationWith:(id)with;
- (void)viewController:(id)controller enterRouteCreationWithRoute:(id)route withUserInfo:(id)info;
- (void)viewController:(id)controller focusSearchResult:(id)result;
- (void)viewController:(id)controller openCommuteEntry:(id)entry;
- (void)viewController:(id)controller openFavoriteItem:(id)item withUserInfo:(id)info;
- (void)viewController:(id)controller openMapsSuggestionEntry:(id)entry withUserInfo:(id)info;
- (void)viewController:(id)controller openPlainTextFileURL:(id)l;
- (void)viewController:(id)controller openSearchResult:(id)result;
- (void)viewController:(id)controller openTransitIncidents:(id)incidents fromView:(id)view withUserInfo:(id)info;
- (void)viewController:(id)controller openTransitLineCard:(id)card sourceView:(id)view sourceRect:(CGRect)rect;
- (void)viewController:(id)controller openURL:(id)l;
- (void)viewController:(id)controller openWebsiteForSearchResult:(id)result;
- (void)viewController:(id)controller pickCollectionWithSession:(id)session sourceView:(id)view sourceRect:(CGRect)rect;
- (void)viewController:(id)controller presentCluster:(id)cluster;
- (void)viewController:(id)controller presentCollectionPickerContaineeViewController:(id)viewController;
- (void)viewController:(id)controller presentMenuController:(id)menuController animated:(BOOL)animated fromChrome:(BOOL)chrome completion:(id)completion;
- (void)viewController:(id)controller presentParentMapItem:(id)item;
- (void)viewController:(id)controller presentPlacesForMapItem:(id)item searchCategory:(id)category source:(unint64_t)source;
- (void)viewController:(id)controller presentPlacesWithPlacesCardItem:(id)item source:(unint64_t)source;
- (void)viewController:(id)controller presentRelatedMapItems:(id)items withTitle:(id)title originalMapItem:(id)item analyticsDelegate:(id)delegate;
- (void)viewController:(id)controller presentReportDetail:(id)detail fromEntryPoint:(int)point;
- (void)viewController:(id)controller presentVenueFloorCardViewController:(id)viewController;
- (void)viewController:(id)controller presentVenueForMapItem:(id)item searchCategory:(id)category source:(unint64_t)source;
- (void)viewController:(id)controller presentVenueFromAutoCompleteWithVenueIdentifier:(id)identifier searchCategory:(id)category source:(unint64_t)source;
- (void)viewController:(id)controller presentVenueWithVenueCardItem:(id)item source:(unint64_t)source;
- (void)viewController:(id)controller presentVenuesClusteredSearchResult:(id)result;
- (void)viewController:(id)controller removeDroppedPin:(id)pin;
- (void)viewController:(id)controller removeMapsSuggestionsEntry:(id)entry sourceView:(id)view sourceRect:(CGRect)rect startBlock:(id)block completionBlock:(id)completionBlock;
- (void)viewController:(id)controller removeShortcut:(id)shortcut;
- (void)viewController:(id)controller selectClientResolvedItem:(id)item fromSearchInfo:(id)info withUserInfo:(id)userInfo;
- (void)viewController:(id)controller selectDroppedPin:(id)pin;
- (void)viewController:(id)controller selectLastDirectionsDestinationComposedWaypoint:(id)waypoint;
- (void)viewController:(id)controller selectMapItem:(id)item address:(id)address addToHistory:(BOOL)history source:(unint64_t)source;
- (void)viewController:(id)controller selectParkedCar:(id)car andPerformAction:(int64_t)action selectPOIOnMap:(BOOL)map;
- (void)viewController:(id)controller selectPersonalizedItem:(id)item source:(unint64_t)source saveSelectionState:(BOOL)state;
- (void)viewController:(id)controller selectSearchResult:(id)result addToHistory:(BOOL)history source:(unint64_t)source saveSelectionState:(BOOL)state replaceCurrentCard:(BOOL)card;
- (void)viewController:(id)controller selectTransitLineItem:(id)item zoomToMapRegion:(BOOL)region preferredLayout:(unint64_t)layout;
- (void)viewController:(id)controller selectVenueSearchResult:(id)result source:(unint64_t)source;
- (void)viewController:(id)controller showAddShortcut:(id)shortcut;
- (void)viewController:(id)controller showCollection:(id)collection completion:(id)completion;
- (void)viewController:(id)controller showCollectionWithID:(id)d;
- (void)viewController:(id)controller showCuratedCollection:(id)collection replaceViewController:(BOOL)viewController completion:(id)completion;
- (void)viewController:(id)controller showCuratedCollectionIdentifier:(id)identifier replaceViewController:(BOOL)viewController completion:(id)completion;
- (void)viewController:(id)controller showCuratedCollectionsList:(id)list usingTitle:(id)title usingCollectionIds:(id)ids completion:(id)completion;
- (void)viewController:(id)controller showFavoritesType:(int64_t)type;
- (void)viewController:(id)controller showFullyClientizedCuratedCollection:(id)collection replaceViewController:(BOOL)viewController;
- (void)viewController:(id)controller showGuidesHome:(id)home;
- (void)viewController:(id)controller showOfflineMapRegionSelectorForRegion:(id)region name:(id)name route:(id)route muid:(unint64_t)muid shouldUseSessionlessAnalytics:(BOOL)analytics dismissalBlock:(id)block postDismissalBlock:(id)self0;
- (void)viewController:(id)controller showOfflineMapRegionSelectorForRegion:(id)region name:(id)name route:(id)route muid:(unint64_t)muid shouldUseSessionlessAnalytics:(BOOL)analytics shouldShowDataManagementAfterDownload:(BOOL)download shouldShowDataManagementAfterDownloadIfRegionDiffers:(BOOL)self0 dismissalBlock:(id)self1;
- (void)viewController:(id)controller showSortPickerWithSortOptions:(id)options initialSelectedSortOptionIndex:(int64_t)index completion:(id)completion;
- (void)viewController:(id)controller startDirectionsToRouteData:(id)data;
- (void)viewControllerClearInjectedSearchPins:(id)pins;
- (void)viewControllerClosed:(id)closed animated:(BOOL)animated;
- (void)viewControllerDoLastDirectionItem:(id)item;
- (void)viewControllerGoPreviousState:(id)state withSender:(id)sender;
- (void)viewControllerOpenNearby:(id)nearby animated:(BOOL)animated;
- (void)viewControllerOpenSettings:(id)settings;
- (void)viewControllerPresentNearbyTransitDepartures:(id)departures;
- (void)viewControllerPresentPOIEnrichmentWithCoordinator:(id)coordinator;
- (void)viewControllerPresentRatingsHistory:(id)history;
- (void)viewControllerPresentSearchEditing;
- (void)viewControllerPresentSearchEndEditingAnimated:(BOOL)animated;
- (void)viewControllerPresentUserProfile:(id)profile;
- (void)viewControllerPresentUserProfilePreferences:(id)preferences withTabType:(int64_t)type;
- (void)viewControllerPresentVirtualGarage:(id)garage;
- (void)viewControllerRemoveSearchResultFocus:(id)focus;
- (void)viewControllerShowAddItemsFromACToLibraryView:(id)view;
- (void)viewControllerShowAllCollections;
- (void)viewControllerShowCitySelectorFromGuideLocation:(id)location;
- (void)viewControllerShowCollections:(id)collections;
- (void)viewControllerShowLibraryPlacesView:(id)view;
- (void)viewControllerShowLibraryRootView:(id)view;
- (void)viewControllerShowMyRecents:(id)recents includeRecentSearches:(BOOL)searches;
- (void)viewControllerShowMyShortcuts:(id)shortcuts;
- (void)viewControllerShowPhotoCredit:(id)credit;
- (void)viewControllerShowPhotoThumbnailGalleryWithMapItem:(id)item albumIndex:(unint64_t)index;
- (void)viewControllerShowPublisher:(id)publisher replaceViewController:(BOOL)controller;
- (void)viewControllerShowPublisherWithID:(id)d numberOfCollections:(unint64_t)collections replaceViewController:(BOOL)controller;
- (void)viewControllerShowRecentlyAdded:(id)added;
- (void)viewControllerShowReports:(id)reports;
- (void)viewControllerShowReports:(id)reports fromEntryPoint:(int)point;
- (void)viewControllerShowSavedRoutesList:(id)list;
- (void)viewControllerShowVisitHistoryHome:(id)home;
- (void)zoomIn;
- (void)zoomOut;
@end

@implementation ActionCoordinator

- (GEOTransitLineItem)currentTransitLineItem
{
  currentViewController = [(ActionCoordinator *)self currentViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    lineItem = [currentViewController lineItem];
  }

  else
  {
    lineItem = 0;
  }

  return lineItem;
}

- (ContaineeProtocol)currentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  currentViewController = [WeakRetained currentViewController];

  return currentViewController;
}

- (MKMapItem)currentMapItem
{
  currentPlaceCardItem = [(ActionCoordinator *)self currentPlaceCardItem];
  mapItem = [currentPlaceCardItem mapItem];

  return mapItem;
}

- (PlaceCardItem)currentPlaceCardItem
{
  currentViewController = [(ActionCoordinator *)self currentViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    placeCardItem = [currentViewController placeCardItem];
  }

  else
  {
    placeCardItem = 0;
  }

  return placeCardItem;
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
    macChromeViewController = [WeakRetained macChromeViewController];

    if (macChromeViewController)
    {
      sidebarHomeActionDelegate = [macChromeViewController sidebarHomeActionDelegate];
      v7 = [SearchViewController alloc];
      sidebarSearchDataSourceDelegate = [macChromeViewController sidebarSearchDataSourceDelegate];
      v9 = [(SearchViewController *)v7 initWithHomeActionDelegate:sidebarHomeActionDelegate searchDataSourceDelegate:sidebarSearchDataSourceDelegate];
      v10 = self->_searchModeViewController;
      self->_searchModeViewController = v9;
    }

    else
    {
      v11 = objc_alloc_init(SearchViewController);
      sidebarHomeActionDelegate = self->_searchModeViewController;
      self->_searchModeViewController = v11;
    }

    [(ControlContaineeViewController *)self->_searchModeViewController setDelegate:self];
    [(SearchViewController *)self->_searchModeViewController setVisitedPlacesCommonActionsHandlingDelegate:self];
    personalizedItemManager = [(ActionCoordinator *)self personalizedItemManager];
    [(SearchViewController *)self->_searchModeViewController setPersonalizedItemManager:personalizedItemManager];

    [(ContaineeViewController *)self->_searchModeViewController setPreferredPresentationStyle:1];
    containerViewController = [(ActionCoordinator *)self containerViewController];
    chromeViewController = [containerViewController chromeViewController];

    traitCollection = [chromeViewController traitCollection];
    horizontalSizeClass = [traitCollection horizontalSizeClass];

    if (sub_10000FA08(chromeViewController) == 1 && horizontalSizeClass == 2)
    {
      v18 = 3;
    }

    else
    {
      v18 = 0;
    }

    cardPresentationController = [(ContaineeViewController *)self->_searchModeViewController cardPresentationController];
    [cardPresentationController setDefaultContaineeLayout:v18];

    searchModeViewController = self->_searchModeViewController;
  }

  return searchModeViewController;
}

- (PersonalizedItemManager)personalizedItemManager
{
  containerViewController = [(ActionCoordinator *)self containerViewController];
  chromeViewController = [containerViewController chromeViewController];
  personalizedItemManager = [chromeViewController personalizedItemManager];

  return personalizedItemManager;
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
    containerViewController = [(ActionCoordinator *)self containerViewController];
    chromeViewController = [containerViewController chromeViewController];
    contexts = [chromeViewController contexts];
    v6 = [contexts _maps_firstContextOfClass:objc_opt_class()];
    v2 = v6 != 0;
  }

  return v2;
}

- (void)closeSettingsIfNeeded
{
  containerViewController = [(ActionCoordinator *)self containerViewController];
  chromeViewController = [containerViewController chromeViewController];
  topMostPresentedViewController = [chromeViewController topMostPresentedViewController];

  if (topMostPresentedViewController)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = topMostPresentedViewController;
      presentingViewController = [v5 presentingViewController];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100915A50;
      v8[3] = &unk_101661B18;
      v9 = v5;
      v7 = v5;
      [presentingViewController dismissViewControllerAnimated:0 completion:v8];
    }
  }
}

- (id)routeAnnotationsProvider
{
  containerViewController = [(ActionCoordinator *)self containerViewController];
  currentViewController = [containerViewController currentViewController];
  if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    v5 = currentViewController;
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
  containerViewController = [(ActionCoordinator *)self containerViewController];
  chromeViewController = [containerViewController chromeViewController];
  [chromeViewController setNeedsUpdateComponent:@"routeAnnotations" animated:1];
}

- (GEOMapServiceTraits)newTraits
{
  containerViewController = [(ActionCoordinator *)self containerViewController];
  chromeViewController = [containerViewController chromeViewController];
  currentTraits = [chromeViewController currentTraits];

  return currentTraits;
}

- (VenuesManager)venuesManager
{
  containerViewController = [(ActionCoordinator *)self containerViewController];
  chromeViewController = [containerViewController chromeViewController];
  venuesManager = [chromeViewController venuesManager];

  return venuesManager;
}

- (void)updateHistoricalLocations
{
  containerViewController = [(ActionCoordinator *)self containerViewController];
  chromeViewController = [containerViewController chromeViewController];
  [chromeViewController updateHistoricalLocations];
}

- (BOOL)_canCaptureSearchStateForCardItem:(id)item previousItemInStack:(id)stack
{
  itemCopy = item;
  if ([stack conformsToProtocol:&OBJC_PROTOCOL___VenuePlaceCardItem])
  {
    currentSearchSession = [(ActionCoordinator *)self currentSearchSession];
    currentResultsSearchInfo = [currentSearchSession currentResultsSearchInfo];
    singleResultMode = [currentResultsSearchInfo singleResultMode];

    if (singleResultMode)
    {
      goto LABEL_3;
    }
  }

  if ([itemCopy conformsToProtocol:&OBJC_PROTOCOL___VenueRoutePlanningCardItem] & 1) != 0 || (objc_msgSend(itemCopy, "conformsToProtocol:", &OBJC_PROTOCOL___VenueClusterCardItem) & 1) != 0 || (objc_msgSend(itemCopy, "conformsToProtocol:", &OBJC_PROTOCOL___VenuePlaceCardItem))
  {
LABEL_7:
    v10 = 1;
    goto LABEL_8;
  }

  venueCardCoordinator = [(ActionCoordinator *)self venueCardCoordinator];
  if ([venueCardCoordinator isCardStackEmpty])
  {
  }

  else
  {
    v13 = [itemCopy conformsToProtocol:&OBJC_PROTOCOL___VenueCategoryCardItem];

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

- (id)searchFieldItemForVenueCardItem:(id)item previousItemInStack:(id)stack
{
  if ([(ActionCoordinator *)self _canCaptureSearchStateForCardItem:item previousItemInStack:stack])
  {
    currentSearchSession = [(ActionCoordinator *)self currentSearchSession];
    searchFieldItem = [currentSearchSession searchFieldItem];
  }

  else
  {
    searchFieldItem = 0;
  }

  return searchFieldItem;
}

- (id)searchInfoForVenueCardItem:(id)item previousItemInStack:(id)stack
{
  if ([(ActionCoordinator *)self _canCaptureSearchStateForCardItem:item previousItemInStack:stack])
  {
    currentSearchSession = [(ActionCoordinator *)self currentSearchSession];
    currentResultsSearchInfo = [currentSearchSession currentResultsSearchInfo];
  }

  else
  {
    currentResultsSearchInfo = 0;
  }

  return currentResultsSearchInfo;
}

- (id)mapSelectionStateForVenueCardItem:(id)item savePlaceCardSelectionState:(BOOL)state
{
  stateCopy = state;
  itemCopy = item;
  if ([itemCopy conformsToProtocol:&OBJC_PROTOCOL___VenueRoutePlanningCardItem])
  {
    goto LABEL_2;
  }

  if ([itemCopy conformsToProtocol:&OBJC_PROTOCOL___VenueClusterCardItem])
  {
    goto LABEL_4;
  }

  if (![itemCopy conformsToProtocol:&OBJC_PROTOCOL___VenuePlaceCardItem])
  {
    if (![itemCopy conformsToProtocol:&OBJC_PROTOCOL___VenueCategoryCardItem])
    {
LABEL_4:
      v8 = 0;
      goto LABEL_5;
    }

LABEL_2:
    mapSelectionManager = [(ActionCoordinator *)self mapSelectionManager];
    v8 = [mapSelectionManager selectionStateIncludingCamera:1 includeNotCustomLabelMarkers:0];

    goto LABEL_5;
  }

  routePlanningSelectionRestorationState = self->_routePlanningSelectionRestorationState;
  if (!routePlanningSelectionRestorationState)
  {
    if (!stateCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_2;
  }

  v8 = routePlanningSelectionRestorationState;
LABEL_5:

  return v8;
}

- (void)_setTopographicalFeaturesForPlaceCardItem:(id)item
{
  itemCopy = item;
  containerViewController = [(ActionCoordinator *)self containerViewController];
  chromeViewController = [containerViewController chromeViewController];

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

  mapItem = [itemCopy mapItem];

  if (!mapItem)
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

  mapItem2 = [itemCopy mapItem];
  _geoMapItem = [mapItem2 _geoMapItem];
  _placeData = [_geoMapItem _placeData];

  if ([_placeData hasMapDisplayType])
  {
    mapDisplayType = [_placeData mapDisplayType];
    v14 = sub_1008800D4();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 67109120;
      HIDWORD(buf) = mapDisplayType == 1;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "PlaceCard mapItem has a mapDisplayType, toggling topographic features to %d.", &buf, 8u);
    }

    if (mapDisplayType == 1)
    {
      _hikingToken = [(ActionCoordinator *)self _hikingToken];
      v16 = _hikingToken == 0;

      if (v16)
      {
        acquireHikingMapToken = [chromeViewController acquireHikingMapToken];
        [(ActionCoordinator *)self _setHikingToken:acquireHikingMapToken];
      }
    }

    else
    {
      [(ActionCoordinator *)self _setHikingToken:0];
    }
  }

  else if (([itemCopy isDroppedPin] & 1) != 0 || objc_msgSend(mapItem2, "_isMapItemTypeAddress"))
  {
    v18 = sub_1008800D4();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "PlaceCard mapItem is a dropped pin, checking if it is inside of a hiking region.", &buf, 2u);
    }

    objc_initWeak(&buf, self);
    [mapItem2 _coordinate];
    v20 = v19;
    v22 = v21;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100880128;
    v24[3] = &unk_10162C910;
    objc_copyWeak(&v26, &buf);
    v25 = chromeViewController;
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

- (void)_setHikingFeaturesForPlaceCardItem:(id)item
{
  itemCopy = item;
  mapItem = [itemCopy mapItem];
  _mapsui_trailSelectionInfoForMap = [mapItem _mapsui_trailSelectionInfoForMap];

  v7 = sub_1008800D4();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (_mapsui_trailSelectionInfoForMap)
  {
    if (v8)
    {
      v14 = 134217984;
      trailID = [_mapsui_trailSelectionInfoForMap trailID];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Trail selection info found, selecting trail with ID %llu.", &v14, 0xCu);
    }

    mapSelectionManager = [(ActionCoordinator *)self mapSelectionManager];
    trailID2 = [_mapsui_trailSelectionInfoForMap trailID];
    trailName = [_mapsui_trailSelectionInfoForMap trailName];
    v12 = +[NSLocale currentLocale];
    localeIdentifier = [v12 localeIdentifier];
    [mapSelectionManager selectTrailWithId:trailID2 name:trailName locale:localeIdentifier];
  }

  else
  {
    if (v8)
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "No trail selection info found, deselecting all trails.", &v14, 2u);
    }

    mapSelectionManager = [(ActionCoordinator *)self mapSelectionManager];
    [mapSelectionManager deselectTrails];
  }

  [(ActionCoordinator *)self _setTopographicalFeaturesForPlaceCardItem:itemCopy];
}

- (void)placeViewControllerViewContactsClosed:(id)closed
{
  closedCopy = closed;
  mapSelectionManager = [(ActionCoordinator *)self mapSelectionManager];
  [mapSelectionManager clearSelection];

  v6 = dispatch_time(0, 250000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100880520;
  block[3] = &unk_101661B18;
  v9 = closedCopy;
  v7 = closedCopy;
  dispatch_after(v6, &_dispatch_main_q, block);
}

- (void)placeCardViewController:(id)controller didUpdateForViewMode:(int64_t)mode
{
  controllerCopy = controller;
  isActive = [controllerCopy isActive];
  placeCardItem = sub_1008800D4();
  v8 = os_log_type_enabled(placeCardItem, OS_LOG_TYPE_INFO);
  if (isActive)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, placeCardItem, OS_LOG_TYPE_INFO, "View mode has changed, so hiking features need to be recalculated.", buf, 2u);
    }

    placeCardItem = [controllerCopy placeCardItem];
    if (placeCardItem)
    {
      [(ActionCoordinator *)self _setHikingFeaturesForPlaceCardItem:placeCardItem];
    }
  }

  else if (v8)
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, placeCardItem, OS_LOG_TYPE_INFO, "View mode has changed but place card is inactive, no work to do.", v9, 2u);
  }
}

- (void)placeCardViewControllerDidTapHikingTip:(id)tip originMapItem:(id)item
{
  itemCopy = item;
  appCoordinator = [(ActionCoordinator *)self appCoordinator];
  [appCoordinator enterRouteCreationWithRoute:0 originMapItem:itemCopy destinationMapItem:0 userInfo:0 completion:0];
}

- (void)placeCardViewController:(id)controller didRequestHikingToolTipRegionIDForLocation:(CLLocationCoordinate2D)location
{
  longitude = location.longitude;
  latitude = location.latitude;
  containerViewController = [(ActionCoordinator *)self containerViewController];
  chromeViewController = [containerViewController chromeViewController];
  mapView = [chromeViewController mapView];
  [mapView requestHikingToolTipRegionIDForLocation:{latitude, longitude}];
}

- (void)placeCardViewControllerWillBecomeCurrent:(id)current
{
  currentCopy = current;
  v5 = sub_1008800D4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Place Card is becoming current, will select trails and enable topographic features if needed.", v7, 2u);
  }

  placeCardItem = [currentCopy placeCardItem];

  if (placeCardItem)
  {
    [(ActionCoordinator *)self _setHikingFeaturesForPlaceCardItem:placeCardItem];
  }
}

- (void)placeCardViewControllerWillResignCurrent:(id)current
{
  v4 = sub_1008800D4();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Place Card is resigning current, will deselect trails and disable topographic features if needed.", v6, 2u);
  }

  mapSelectionManager = [(ActionCoordinator *)self mapSelectionManager];
  [mapSelectionManager deselectTrails];

  [(ActionCoordinator *)self _setTopographicalFeaturesForPlaceCardItem:0];
}

- (void)placeCardViewController:(id)controller willReusePlaceCardItem:(id)item
{
  itemCopy = item;
  v6 = sub_1008800D4();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Place Card is reusing its Place Card Item, will set hiking features for existing mapItem.", v7, 2u);
  }

  [(ActionCoordinator *)self _setHikingFeaturesForPlaceCardItem:itemCopy];
}

- (void)placeCardViewControllerRemovedObservingHandle:(id)handle
{
  containerViewController = [(ActionCoordinator *)self containerViewController];
  chromeViewController = [containerViewController chromeViewController];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10088095C;
  v6[3] = &unk_101661B18;
  v6[4] = self;
  [chromeViewController popToRootContextAnimated:0 completion:v6];
}

- (void)placeCardViewController:(id)controller showOfflineMapRegionSelectorForRegion:(id)region name:(id)name muid:(unint64_t)muid shouldShowDataManagementAfterDownload:(BOOL)download
{
  nameCopy = name;
  regionCopy = region;
  controllerCopy = controller;
  placeCardItem = [controllerCopy placeCardItem];
  isHomeWorkSchoolAddress = [placeCardItem isHomeWorkSchoolAddress];

  BYTE1(v16) = 1;
  LOBYTE(v16) = download;
  [(ActionCoordinator *)self viewController:controllerCopy showOfflineMapRegionSelectorForRegion:regionCopy name:nameCopy route:0 muid:muid shouldUseSessionlessAnalytics:isHomeWorkSchoolAddress shouldShowDataManagementAfterDownload:v16 shouldShowDataManagementAfterDownloadIfRegionDiffers:0 dismissalBlock:?];
}

- (void)placeCardViewController:(id)controller requestCopyLinkToClipboard:(id)clipboard
{
  clipboardCopy = clipboard;
  containerViewController = [(ActionCoordinator *)self containerViewController];
  chromeViewController = [containerViewController chromeViewController];
  [chromeViewController copy:clipboardCopy];
}

- (void)placeCardViewController:(id)controller didSelectSharePublisherShareItem:(id)item
{
  itemCopy = item;
  controllerCopy = controller;
  v9 = objc_alloc_init(MUPresentationOptions);
  [v9 setPresentingViewController:controllerCopy];

  appCoordinator = [(ActionCoordinator *)self appCoordinator];
  [appCoordinator shareItem:itemCopy presentationOptions:0 completion:0];
}

- (void)placeCardViewController:(id)controller editNameOfMapItem:(id)item saveHandler:(id)handler cancelHandler:(id)cancelHandler
{
  controllerCopy = controller;
  itemCopy = item;
  handlerCopy = handler;
  cancelHandlerCopy = cancelHandler;
  objc_initWeak(&location, self);
  placeCardItem = [controllerCopy placeCardItem];
  searchResult = [placeCardItem searchResult];
  v16 = searchResult;
  if (searchResult)
  {
    v17 = searchResult;
  }

  else
  {
    v17 = [[SearchResult alloc] initWithMapItem:itemCopy];
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
  v21 = handlerCopy;
  v28 = v21;
  v29 = v20;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100880F40;
  v24[3] = &unk_10165BA38;
  v22 = cancelHandlerCopy;
  v25 = v22;
  v23 = v29;
  v26 = v23;
  [(ActionCoordinator *)self viewController:controllerCopy editNameOfMapItem:itemCopy saveHandler:v27 cancelHandler:v24];

  objc_destroyWeak(&v32);
  objc_destroyWeak(&location);
}

- (void)placeCardViewController:(id)controller doSearchItem:(id)item withUserInfo:(id)info
{
  infoCopy = info;
  itemCopy = item;
  controllerCopy = controller;
  [(ActionCoordinator *)self viewControllerPresentSearchEndEditing];
  [(ActionCoordinator *)self viewController:controllerCopy doSearchItem:itemCopy withUserInfo:infoCopy];
}

- (void)placeCardViewController:(id)controller didUpdateLinkedPlacesFromPlaceCardItem:(id)item
{
  itemCopy = item;
  searchPinsManager = [(ActionCoordinator *)self searchPinsManager];
  [searchPinsManager showLinkedPlacesAndPolygonForPlaceCardItem:itemCopy];
}

- (void)placeCardViewController:(id)controller presentCategoryPlacesListForMapItem:(id)item searchCategory:(id)category
{
  categoryCopy = category;
  itemCopy = item;
  controllerCopy = controller;
  if ([itemCopy _browseCategory_isVenueItem])
  {
    [(ActionCoordinator *)self viewController:controllerCopy presentVenueForMapItem:itemCopy searchCategory:categoryCopy source:4];
  }

  else
  {
    [(ActionCoordinator *)self viewController:controllerCopy presentPlacesForMapItem:itemCopy searchCategory:categoryCopy source:4];
  }
}

- (void)placeCardViewController:(id)controller selectTransitLineItem:(id)item
{
  itemCopy = item;
  controllerCopy = controller;
  containerViewController = [(ActionCoordinator *)self containerViewController];
  v8 = sub_10000FA08(containerViewController) != 5;

  [(ActionCoordinator *)self viewController:controllerCopy selectTransitLineItem:itemCopy zoomToMapRegion:v8 preferredLayout:2];
}

- (void)placeCardViewController:(id)controller mapItemDidChange:(id)change
{
  changeCopy = change;
  v6 = sub_1008800D4();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v11 = 134217984;
    _muid = [changeCopy _muid];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Place Card mapItemDidChange to muid %llu.", &v11, 0xCu);
  }

  containerViewController = [(ActionCoordinator *)self containerViewController];
  chromeViewController = [containerViewController chromeViewController];
  [chromeViewController setNeedsUpdateComponent:@"lookAroundButton" animated:1];

  containerViewController2 = [(ActionCoordinator *)self containerViewController];
  chromeViewController2 = [containerViewController2 chromeViewController];
  [chromeViewController2 updateComponentsIfNeeded];
}

- (void)placeCardViewController:(id)controller placeCardItemWillChange:(id)change
{
  changeCopy = change;
  mapItem = [changeCopy mapItem];
  _hasMUID = [mapItem _hasMUID];

  if (_hasMUID)
  {
    v8 = sub_1008800D4();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      mapItem2 = [changeCopy mapItem];
      v10 = 134217984;
      _muid = [mapItem2 _muid];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Place Card placeCardItemWillChange to muid %llu.", &v10, 0xCu);
    }

LABEL_7:

    goto LABEL_8;
  }

  if ([changeCopy isDroppedPin])
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
  [(ActionCoordinator *)self _setHikingFeaturesForPlaceCardItem:changeCopy];
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

- (void)_carPlayPlaceCardDidDismiss:(id)dismiss
{
  object = [dismiss object];
  if (object)
  {
    v14 = object;
    platformController = [object platformController];
    platformController2 = [(ActionCoordinator *)self platformController];

    object = v14;
    if (platformController == platformController2)
    {
      WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
      currentViewController = [WeakRetained currentViewController];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = currentViewController;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;

      if (v10)
      {
        placeCardItem = [v14 placeCardItem];
        placeCardItem2 = [v10 placeCardItem];
        v13 = sub_100C73AE8(placeCardItem, placeCardItem2);

        if (v13)
        {
          self->_isDismissingPlaceCardFromCarPlay = 1;
          [(ActionCoordinator *)self popContainee];
        }
      }

      object = v14;
    }
  }
}

- (void)_carPlayPlaceCardDidPresent:(id)present
{
  presentCopy = present;
  v5 = sub_10001CDEC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Received notification of CarPlay place card presenting", &v18, 2u);
  }

  object = [presentCopy object];

  if (object && ([object platformController], v7 = objc_claimAutoreleasedReturnValue(), -[ActionCoordinator platformController](self, "platformController"), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v7 == v8))
  {
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    currentViewController = [WeakRetained currentViewController];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = currentViewController;
    }

    else
    {
      v14 = 0;
    }

    v9 = v14;

    if (!v9 || (-[NSObject placeCardItem](v9, "placeCardItem"), v15 = objc_claimAutoreleasedReturnValue(), [object placeCardItem], v16 = objc_claimAutoreleasedReturnValue(), v17 = sub_100C73AE8(v15, v16), v16, v15, (v17 & 1) == 0))
    {
      placeCardItem = [object placeCardItem];
      [(ActionCoordinator *)self presentPlaceCardForItem:placeCardItem addToHistory:1 source:0 saveSelectionState:0 replaceCurrentCard:1];
      goto LABEL_13;
    }
  }

  else
  {
    v9 = sub_10001CDEC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      placeCardItem = [object platformController];
      platformController = [(ActionCoordinator *)self platformController];
      v18 = 138412802;
      v19 = object;
      v20 = 2112;
      v21 = placeCardItem;
      v22 = 2112;
      v23 = platformController;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Synchronization info is either nil or platform controllers are not the same %@, %@, %@", &v18, 0x20u);

LABEL_13:
    }
  }
}

- (void)pinnedItemsViewControllerWithViewController:(id)controller didSelectPinSuggested:(id)suggested
{
  suggestedCopy = suggested;
  controllerCopy = controller;
  shortcutItem = [suggestedCopy shortcutItem];
  isSetupPlaceholder = [shortcutItem isSetupPlaceholder];

  if (isSetupPlaceholder)
  {
    [(ActionCoordinator *)self viewController:controllerCopy showAddShortcut:suggestedCopy];
  }

  else
  {
    [(ActionCoordinator *)self viewController:controllerCopy editShortcut:suggestedCopy];
  }
}

- (void)pinnedItemsViewControllerWithViewController:(id)controller didSelectPinned:(id)pinned
{
  controllerCopy = controller;
  pinnedCopy = pinned;
  v12 = @"DirectionsSessionInitiatorKey";
  v13 = &off_1016E77F0;
  v8 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v9 = [v8 mutableCopy];

  shortcutIdentifier = [pinnedCopy shortcutIdentifier];

  if (shortcutIdentifier)
  {
    shortcutIdentifier2 = [pinnedCopy shortcutIdentifier];
    [v9 setObject:shortcutIdentifier2 forKeyedSubscript:@"ShortcutIdentifier"];
  }

  [(ActionCoordinator *)self viewController:controllerCopy openFavoriteItem:pinnedCopy withUserInfo:v9];
}

- (void)userGuidesListViewControllerWithViewController:(id)controller confirmDelete:(id)delete presentationOptions:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  deleteCopy = delete;
  controllerCopy = controller;
  sourceItem = [optionsCopy sourceItem];
  [optionsCopy sourceRect];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [(ActionCoordinator *)self viewController:controllerCopy confirmDeleteCollections:deleteCopy sourceItem:sourceItem sourceRect:completionCopy completion:v15, v17, v19, v21];
}

- (void)userGuideViewController:(id)controller didTapAddPlacesToGuide:(id)guide
{
  guideCopy = guide;
  controllerCopy = controller;
  v8 = [(CollectionEditSession *)[CollectionSaveSession alloc] initWithCollection:guideCopy];

  [(ActionCoordinator *)self viewController:controllerCopy addItemsFromACToCollection:v8];
}

- (void)userGuideViewController:(id)controller didSelect:(id)select
{
  selectCopy = select;
  controllerCopy = controller;
  v8 = [[SearchResult alloc] initWithMapItem:selectCopy];

  [(ActionCoordinator *)self viewController:controllerCopy openSearchResult:v8];
}

- (void)userProfileViewControllerDismissByGestureWithViewController:(id)controller
{
  containerViewController = [(ActionCoordinator *)self containerViewController];
  chromeViewController = [containerViewController chromeViewController];
  [chromeViewController setNeedsUpdateComponent:@"floatingControls" animated:1];
}

- (void)ratingsHistoryContaineeViewController:(id)controller didSelect:(id)select
{
  selectCopy = select;
  controllerCopy = controller;
  v8 = [[SearchResult alloc] initWithMapItem:selectCopy];

  [(ActionCoordinator *)self viewController:controllerCopy openSearchResult:v8];
}

- (id)traitsForAddFromACViewController:(id)controller
{
  newTraits = [(ActionCoordinator *)self newTraits];

  return newTraits;
}

- (void)guidesHomeViewController:(id)controller showCuratedGuideWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  controllerCopy = controller;
  containerViewController = [(ActionCoordinator *)self containerViewController];
  [containerViewController removeControllerFromStack:controllerCopy];

  [(ActionCoordinator *)self viewController:controllerCopy showCuratedCollectionIdentifier:identifierCopy];
}

- (void)nearbyTransitViewController:(id)controller select:(id)select
{
  selectCopy = select;
  controllerCopy = controller;
  view = [controllerCopy view];
  [(ActionCoordinator *)self viewController:controllerCopy openTransitIncidents:selectCopy fromView:view withUserInfo:0];
}

- (void)injectSearchPinsFromSearchInfo:(id)info
{
  infoCopy = info;
  searchPinsManager = [(ActionCoordinator *)self searchPinsManager];
  [searchPinsManager setSearchPinsFromSearchInfo:infoCopy scrollToResults:1 displayPlaceCardForResult:0 animated:1 completion:0];
}

- (void)viewControllerClearInjectedSearchPins:(id)pins
{
  searchPinsManager = [(ActionCoordinator *)self searchPinsManager];
  [searchPinsManager clearSearchPins];
}

- (id)searchResultsForViewController:(id)controller
{
  searchPinsManager = [(ActionCoordinator *)self searchPinsManager];
  allSearchResults = [searchPinsManager allSearchResults];

  return allSearchResults;
}

- (id)traitsForCuratedCollectionViewController:(id)controller
{
  newTraits = [(ActionCoordinator *)self newTraits];

  return newTraits;
}

- (void)curatedCollectionViewController:(id)controller pickCollectionWithSession:(id)session presentationOptions:(id)options
{
  optionsCopy = options;
  sessionCopy = session;
  controllerCopy = controller;
  sourceView = [optionsCopy sourceView];
  [optionsCopy sourceRect];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [(ActionCoordinator *)self viewController:controllerCopy pickCollectionWithSession:sessionCopy sourceView:sourceView sourceRect:v12, v14, v16, v18];
}

- (void)curatedCollectionViewController:(id)controller selectSearchResult:(id)result
{
  resultCopy = result;
  mapSelectionManager = [(ActionCoordinator *)self mapSelectionManager];
  [mapSelectionManager selectSearchResult:resultCopy animated:1];
}

- (void)presentLocationCorrectionViewWithSession:(id)session
{
  sessionCopy = session;
  BOOL = GEOConfigGetBOOL();
  v6 = &off_1015F6760;
  if (!BOOL)
  {
    v6 = off_1015F6758;
  }

  v8 = [objc_alloc(*v6) initWithSessionObject:sessionCopy];

  [v8 setContaineeDelegate:self];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained presentController:v8 animated:1];
}

- (void)viewController:(id)controller showSortPickerWithSortOptions:(id)options initialSelectedSortOptionIndex:(int64_t)index completion:(id)completion
{
  controllerCopy = controller;
  optionsCopy = options;
  completionCopy = completion;
  v13 = [[_TtC4Maps30SortOptionPickerViewController alloc] initWithSortOptions:optionsCopy initialSelectedSortOptionIndex:index onDone:completionCopy];
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
    [controllerCopy presentViewController:v13 animated:1 completion:0];
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

- (void)didSaveCustomRoute:(id)route
{
  routeDataToEdit = self->_routeDataToEdit;
  self->_routeDataToEdit = 0;

  [(ActionCoordinator *)self popContainee];
}

- (void)popContainee
{
  containerViewController = [(ActionCoordinator *)self containerViewController];
  [containerViewController popLastViewControllerAnimated:1];
}

- (void)viewController:(id)controller downloadOfflineRegionForRouteData:(id)data
{
  controllerCopy = controller;
  dataCopy = data;
  boundingMapRegion = [dataCopy boundingMapRegion];
  v8 = [GEOMapRegion _maps_offlineDownloadRegionForRouteBounds:boundingMapRegion];

  v9 = [[GEORouteBuilder_PersistentData alloc] initWithPersistentData:dataCopy];
  buildRoute = [v9 buildRoute];
  userProvidedName = [dataCopy userProvidedName];
  if ([userProvidedName length])
  {
    [dataCopy userProvidedName];
  }

  else
  {
    [dataCopy routeName];
  }
  v12 = ;

  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = sub_100907968;
  v28[4] = sub_100907978;
  iosBasedChromeViewController = [(ActionCoordinator *)self iosBasedChromeViewController];
  acquireHikingMapToken = [iosBasedChromeViewController acquireHikingMapToken];

  iosChromeViewController = [(ActionCoordinator *)self iosChromeViewController];
  mapView = [iosChromeViewController mapView];
  _mapLayer = [mapView _mapLayer];
  applicationSubState = [_mapLayer applicationSubState];

  iosChromeViewController2 = [(ActionCoordinator *)self iosChromeViewController];
  mapView2 = [iosChromeViewController2 mapView];
  _mapLayer2 = [mapView2 _mapLayer];
  [_mapLayer2 setApplicationSubState:1];

  objc_initWeak(&location, self);
  mapItemMuid = [dataCopy mapItemMuid];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100907980;
  v24[3] = &unk_10162ED08;
  v24[4] = v28;
  objc_copyWeak(&v25, &location);
  v26 = applicationSubState;
  LOWORD(v22) = 256;
  [(ActionCoordinator *)self viewController:controllerCopy showOfflineMapRegionSelectorForRegion:v8 name:v12 route:buildRoute muid:mapItemMuid shouldUseSessionlessAnalytics:0 shouldShowDataManagementAfterDownload:v22 shouldShowDataManagementAfterDownloadIfRegionDiffers:v24 dismissalBlock:?];
  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
  _Block_object_dispose(v28, 8);
}

- (void)viewControllerShowSavedRoutesList:(id)list
{
  listCopy = list;
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

- (void)viewControllerShowRecentlyAdded:(id)added
{
  v5 = [[_TtC4Maps43LibraryRecentlyAddedContaineeViewController alloc] initWithNibName:0 bundle:0];
  [(LibraryRecentlyAddedContaineeViewController *)v5 setActionDelegate:self];
  [(ContaineeViewController *)v5 setContaineeDelegate:self];
  containerViewController = [(ActionCoordinator *)self containerViewController];
  [containerViewController presentController:v5 animated:1];
}

- (void)viewControllerShowVisitHistoryHome:(id)home
{
  v8 = objc_alloc_init(_TtC4Maps40VisitedPlacesLibraryContextConfiguration);
  v4 = [[_TtC4Maps27VisitedPlacesLibraryContext alloc] initWithConfiguration:v8];
  [(VisitedPlacesLibraryContext *)v4 setActionDelegate:self];
  appCoordinator = [(ActionCoordinator *)self appCoordinator];
  [(VisitedPlacesLibraryContext *)v4 setShareDelegate:appCoordinator];

  containerViewController = [(ActionCoordinator *)self containerViewController];
  chromeViewController = [containerViewController chromeViewController];
  [chromeViewController pushContext:v4 animated:1 completion:0];
}

- (void)viewController:(id)controller editRoute:(id)route
{
  objc_storeStrong(&self->_routeDataToEdit, route);
  routeCopy = route;
  v7 = [MapsSaveRouteContainee alloc];

  v9 = [(MapsSaveRouteContainee *)v7 initWithDelegate:self isEditing:1 showInitialKeyboard:1];
  containerViewController = [(ActionCoordinator *)self containerViewController];
  [containerViewController presentController:v9 animated:1];
}

- (void)viewController:(id)controller startDirectionsToRouteData:(id)data
{
  controllerCopy = controller;
  dataCopy = data;
  objc_initWeak(&location, self);
  objc_initWeak(&from, controllerCopy);
  v8 = +[MKLocationManager sharedLocationManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100907EE8;
  v11[3] = &unk_10162ECB8;
  objc_copyWeak(&v13, &location);
  objc_copyWeak(&v14, &from);
  v9 = dataCopy;
  v12 = v9;
  v10 = [v8 singleLocationUpdateWithHandler:v11];

  [v10 start];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

- (void)routeStepsViewController:(id)controller wantsToDisplayAdvisory:(id)advisory
{
  [(ActionCoordinator *)self setRoutePlanningAdvisory:advisory];

  [(ActionCoordinator *)self presentRoutePlanningViewType:5];
}

- (void)routeStepsViewController:(id)controller wantsToShareItem:(id)item fromView:(id)view
{
  itemCopy = item;
  v9 = [MUPresentationOptions optionsWithSender:view];
  appCoordinator = [(ActionCoordinator *)self appCoordinator];
  [appCoordinator shareItem:itemCopy presentationOptions:v9 completion:0];
}

- (void)routeSearchViewControllerDidDismiss:(id)dismiss shouldExitRoutePlanning:(BOOL)planning
{
  if (planning)
  {
    v5 = !UIAccessibilityIsReduceMotionEnabled();

    [(ActionCoordinator *)self exitRoutePlanningIfNeededAnimated:v5];
  }

  else
  {

    [(ActionCoordinator *)self closeRoutePlanningViewController:dismiss withSender:0];
  }
}

- (void)routeSearchViewController:(id)controller wantsToPerformSearchWithItem:(id)item userInfo:(id)info autocompleteSessionData:(id)data
{
  controllerCopy = controller;
  itemCopy = item;
  infoCopy = info;
  dataCopy = data;
  if (GEOConfigGetBOOL())
  {
    v13 = [[_TtC4Maps20SearchResultsContext alloc] initWithSearchFieldItem:itemCopy contextType:1 recentAutocompleteSearchSessionData:dataCopy];
    containerViewController = [(ActionCoordinator *)self containerViewController];
    chromeViewController = [containerViewController chromeViewController];
    [chromeViewController pushContext:v13 animated:1 completion:0];
  }

  else
  {
    [(ActionCoordinator *)self viewController:controllerCopy doSearchItem:itemCopy withUserInfo:infoCopy refinementsQuery:0 autocompleteSessionData:dataCopy];
  }
}

- (id)traitsForRouteSearchViewController:(id)controller
{
  newTraits = [(ActionCoordinator *)self newTraits];

  return newTraits;
}

- (void)presentWalletTopUpViewControllerWithTransitIdentifier:(id)identifier callbackDelegate:(id)delegate
{
  delegateCopy = delegate;
  identifierCopy = identifier;
  v8 = sub_10003D020();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Showing Wallet Top-Up View Controller", v11, 2u);
  }

  v9 = [[PKPerformActionSetupViewController alloc] initWithPassIdentifier:identifierCopy];
  [v9 setDelegate:delegateCopy];

  containerViewController = [(ActionCoordinator *)self containerViewController];
  [containerViewController _maps_topMostPresentViewController:v9 animated:1 completion:0];
}

- (void)presentWalletDCIViewControllerWithTransitSystems:(id)systems callbackDelegate:(id)delegate
{
  systemsCopy = systems;
  delegateCopy = delegate;
  if (systemsCopy)
  {
    if ([systemsCopy count])
    {
      v9 = objc_alloc_init(PKPaymentSetupConfiguration);
      [v9 setReferrerIdentifier:@"maps"];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100908AB8;
      v14[3] = &unk_10162EC68;
      v14[4] = self;
      v15 = systemsCopy;
      v16 = v9;
      v17 = delegateCopy;
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

- (id)_filteredFeaturesFromTransitSystems:(id)systems allFeatures:(id)features
{
  systemsCopy = systems;
  featuresCopy = features;
  v24 = systemsCopy;
  v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(systemsCopy, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = featuresCopy;
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
              identifiers = [v9 identifiers];
              identifier = [v15 identifier];
              v18 = [identifiers containsObject:identifier];

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

- (void)presentEducationScreenWithAssetURLs:(id)ls titleText:(id)text bodyText:(id)bodyText
{
  bodyTextCopy = bodyText;
  textCopy = text;
  lsCopy = ls;
  v13 = [[TransitPayEducationScreenViewController alloc] initWithAssetURLs:lsCopy titleText:textCopy bodyText:bodyTextCopy];

  v11 = [[UINavigationController alloc] initWithRootViewController:v13];
  containerViewController = [(ActionCoordinator *)self containerViewController];
  [containerViewController _maps_topMostPresentViewController:v11 animated:1 completion:0];
}

- (void)viewController:(id)controller presentReportDetail:(id)detail fromEntryPoint:(int)point
{
  v5 = *&point;
  controllerCopy = controller;
  detailCopy = detail;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  _maps_mapsSceneDelegate = [WeakRetained _maps_mapsSceneDelegate];
  rapPresenter = [_maps_mapsSceneDelegate rapPresenter];
  v13 = [rapPresenter presentOfflineAlertIfNecessaryWithCompletion:0];

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

  if (!detailCopy || ([detailCopy reportID], v17 = objc_claimAutoreleasedReturnValue(), v17, !v17))
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
    v19 = [[_TtC4Maps33RAPNotificationDetailsCoordinator alloc] initWithParentViewController:controllerCopy];
    v20 = self->_rapNotificationDetailsCoordinator;
    self->_rapNotificationDetailsCoordinator = v19;

    [(RAPNotificationDetailsCoordinator *)self->_rapNotificationDetailsCoordinator setCoordinator:self];
    rapNotificationDetailsCoordinator = self->_rapNotificationDetailsCoordinator;
  }

  [(RAPNotificationDetailsCoordinator *)rapNotificationDetailsCoordinator presentRAPNotificationDetailsViewControllerWithRapRecord:detailCopy entryPoint:v5];
LABEL_13:
}

- (void)viewControllerShowReports:(id)reports fromEntryPoint:(int)point
{
  v4 = *&point;
  if (_MKRAPIsAvailable() && (sub_1007413D0() & 1) == 0)
  {
    [CATransaction setFrameStallSkipRequest:1];
    reportsHomeViewController = [(ActionCoordinator *)self reportsHomeViewController];
    [reportsHomeViewController setEntryPoint:v4];

    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    reportsHomeViewController2 = [(ActionCoordinator *)self reportsHomeViewController];
    [WeakRetained presentController:reportsHomeViewController2 animated:1];
  }
}

- (void)viewControllerShowReports:(id)reports
{
  reportsCopy = reports;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 29;
    v5 = reportsCopy;
  }

  else
  {
    v5 = reportsCopy;
    if (self->_searchModeViewController == reportsCopy)
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

- (void)enterPedestrianAR:(id)r
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
      containerViewController = [(ActionCoordinator *)self containerViewController];
      currentViewController = [containerViewController currentViewController];
      v12 = 138412290;
      v13 = currentViewController;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Dismissing Pedestrian AR teachable moment card: %@", &v12, 0xCu);
    }

    containerViewController2 = [(ActionCoordinator *)self containerViewController];
    containerViewController3 = [(ActionCoordinator *)self containerViewController];
    currentViewController2 = [containerViewController3 currentViewController];
    [containerViewController2 removeControllerFromStack:currentViewController2];
  }
}

- (void)showPedestrianARRaiseToEnterTeachableMomentCard
{
  containerViewController = [(ActionCoordinator *)self containerViewController];
  currentViewController = [containerViewController currentViewController];
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
    containerViewController2 = [(ActionCoordinator *)self containerViewController];
    [containerViewController2 presentController:v8 animated:1];
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
    containerViewController = [(ActionCoordinator *)self containerViewController];
    [containerViewController presentController:v5 animated:1];
  }
}

- (BOOL)isWeatherPopoverActive
{
  containerViewController = [(ActionCoordinator *)self containerViewController];
  _maps_mapsSceneDelegate = [containerViewController _maps_mapsSceneDelegate];
  topMostPresentedViewController = [_maps_mapsSceneDelegate topMostPresentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)isTeachableMomentCardActive
{
  containerViewController = [(ActionCoordinator *)self containerViewController];
  currentViewController = [containerViewController currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)exitPedestrianAR
{
  appCoordinator = [(ActionCoordinator *)self appCoordinator];
  [appCoordinator exitPedestrianAR];
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
    containerViewController = [(ActionCoordinator *)self containerViewController];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100909C48;
    v26[3] = &unk_1016619A8;
    objc_copyWeak(&v27, &location);
    v5 = [containerViewController showVLFCrowdsourcingPermissionCardWithContaineeDelegate:self delegate:self completion:v26];

    if (v5)
    {
LABEL_24:
      objc_destroyWeak(&v27);
      objc_destroyWeak(&location);
      return;
    }

    containerViewController2 = [(ActionCoordinator *)self containerViewController];
    currentViewController = [containerViewController2 currentViewController];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = currentViewController;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    containerViewController3 = [(ActionCoordinator *)self containerViewController];
    currentViewController2 = [containerViewController3 currentViewController];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = currentViewController2;
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
        appCoordinator = [(ActionCoordinator *)self appCoordinator];
        routePlanningDataCoordinator = [(ActionCoordinator *)self routePlanningDataCoordinator];
        routeCollection = [routePlanningDataCoordinator routeCollection];
        v20[0] = *buf;
        v20[1] = v23;
        v20[2] = v24;
        v21 = v25;
        [appCoordinator startNavigationWithRouteCollection:routeCollection navigationDetailsOptions:v20];

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
    pedestrianARSessionStateManager = sub_100798A3C();
    if (os_log_type_enabled(pedestrianARSessionStateManager, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      v9 = "Cannot enter pedestrian AR because it's not supported on the current device";
LABEL_9:
      _os_log_impl(&_mh_execute_header, pedestrianARSessionStateManager, OS_LOG_TYPE_INFO, v9, &v13, 2u);
    }

LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  routePlanningDataCoordinator = [(ActionCoordinator *)self routePlanningDataCoordinator];
  routeCollection = [routePlanningDataCoordinator routeCollection];
  v5 = [routeCollection count];

  if (!v5)
  {
    pedestrianARSessionStateManager = sub_100798A3C();
    if (os_log_type_enabled(pedestrianARSessionStateManager, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      v9 = "Cannot enter pedestrian AR without a route";
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  platformController = [(ActionCoordinator *)self platformController];
  pedestrianARSessionStateManager = [platformController pedestrianARSessionStateManager];

  if (([pedestrianARSessionStateManager shouldShowPedestrianAR]& 1) == 0)
  {
    v10 = sub_100798A3C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [pedestrianARSessionStateManager debugDescription];
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

  appCoordinator = [(ActionCoordinator *)self appCoordinator];
  chromeViewController = [appCoordinator chromeViewController];
  topContext = [chromeViewController topContext];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  appCoordinator2 = [(ActionCoordinator *)self appCoordinator];
  chromeViewController2 = [appCoordinator2 chromeViewController];
  topContext2 = [chromeViewController2 topContext];
  fullscreenViewController = [topContext2 fullscreenViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = fullscreenViewController;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    isShowingFailureView = [v12 isShowingFailureView];
  }

  else
  {
    isShowingFailureView = 0;
  }

  return isShowingFailureView;
}

- (BOOL)isPedestrianARActive
{
  appCoordinator = [(ActionCoordinator *)self appCoordinator];
  chromeViewController = [appCoordinator chromeViewController];
  topContext = [chromeViewController topContext];
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

- (void)timingViewController:(id)controller didPickTiming:(id)timing
{
  timingCopy = timing;
  routePlanningDataCoordinator = [(ActionCoordinator *)self routePlanningDataCoordinator];
  [routePlanningDataCoordinator updateTiming:timingCopy];
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  presentedViewController = [dismissCopy presentedViewController];
  incidentsVC = self->_incidentsVC;

  if (presentedViewController == incidentsVC)
  {
    [(RouteIncidentsViewController *)self->_incidentsVC resetForDismiss];
  }

  else
  {
    presentedViewController2 = [dismissCopy presentedViewController];
    lineCardVC = [(ActionCoordinator *)self lineCardVC];
    v8 = lineCardVC;
    if (presentedViewController2 == lineCardVC)
    {
      isActive = [(TransitLineSelectionActionController *)self->_lineSelectionAction isActive];

      if (isActive)
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
  currentViewController = [WeakRetained currentViewController];

  if (objc_opt_respondsToSelector())
  {
    pptTestScrollView = [currentViewController pptTestScrollView];
  }

  else
  {
    pptTestScrollView = 0;
  }

  return pptTestScrollView;
}

- (void)pptTestDismissTrayAnimated:(BOOL)animated assertTrayType:(int64_t)type
{
  animatedCopy = animated;
  v10 = [(ActionCoordinator *)self routePlanningOverviewViewControllerIfLoaded:animated];
  currentViewController = [(ActionCoordinator *)self currentViewController];
  v7 = currentViewController;
  if (v10 && currentViewController == v10)
  {
    [(ActionCoordinator *)self closeRoutePlanningViewController:v10 withSender:0];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    [WeakRetained popLastViewControllerAnimated:animatedCopy];

    containerViewController = [(ActionCoordinator *)self containerViewController];
    [containerViewController popLastViewControllerFromViewController:v7 animated:animatedCopy useDefaultContaineeLayout:0];
  }
}

- (BOOL)pptTestIsTrayType:(int64_t)type
{
  switch(type)
  {
    case 0:
      return 1;
    case 2:
      v6 = +[UIDevice currentDevice];
      userInterfaceIdiom = [v6 userInterfaceIdiom];

      currentViewController = [(ActionCoordinator *)self currentViewController];
      currentViewController2 = currentViewController;
      if (userInterfaceIdiom == 5)
      {
        v9 = currentViewController == 0;
LABEL_11:

        return v9;
      }

      searchModeViewController = [(ActionCoordinator *)self searchModeViewController];
LABEL_10:
      v9 = currentViewController2 == searchModeViewController;

      goto LABEL_11;
    case 1:
      currentViewController2 = [(ActionCoordinator *)self currentViewController];
      searchModeViewController = [(ActionCoordinator *)self placeCardViewController];
      goto LABEL_10;
  }

  return 0;
}

- (void)pptTestUpdateTrayLayout:(unint64_t)layout animated:(BOOL)animated
{
  animatedCopy = animated;
  if (layout < 3)
  {
    v6 = layout + 1;
  }

  else
  {
    v6 = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  containeeLayout = [WeakRetained containeeLayout];

  if (containeeLayout == v6)
  {
    v14[0] = @"ContainerLayout";
    v9 = [NSNumber numberWithUnsignedInteger:v6];
    v14[1] = @"ContainerContainee";
    v15[0] = v9;
    v10 = objc_loadWeakRetained(&self->_containerViewController);
    currentViewController = [v10 currentViewController];
    v15[1] = currentViewController;
    v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
    [PPTNotificationCenter postNotificationIfNeededWithName:@"PPTTestTrayLayoutDidUpdateNotification" object:self userInfo:v12];
  }

  else
  {
    v13 = objc_loadWeakRetained(&self->_containerViewController);
    [v13 setLayoutIfSupported:v6 animated:animatedCopy];
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
  currentViewController = [WeakRetained currentViewController];

  if ([currentViewController conformsToProtocol:&OBJC_PROTOCOL___PPTTestPresentCollectionProtocol])
  {
    [currentViewController pptPresentFirstCollection];
  }
}

- (UIScrollView)pptTestScrollViewForProactive
{
  searchModeViewController = [(ActionCoordinator *)self searchModeViewController];
  scrollViewForProactive = [searchModeViewController scrollViewForProactive];

  return scrollViewForProactive;
}

- (void)mapsDragDestinationHandler:(id)handler didReceiveMapKitHandle:(id)handle title:(id)title
{
  titleCopy = title;
  handleCopy = handle;
  [(ActionCoordinator *)self _prepareToReceiveDrop];
  v9 = objc_alloc_init(SearchFieldItem);
  [(SearchFieldItem *)v9 setMapKitHandle:handleCopy];

  [(SearchFieldItem *)v9 setMapKitHandleTitle:titleCopy];
  [(ActionCoordinator *)self viewController:0 doSearchItem:v9 withUserInfo:&__NSDictionary0__struct];
}

- (void)mapsDragDestinationHandler:(id)handler didReceiveString:(id)string nearCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  stringCopy = string;
  [(ActionCoordinator *)self _prepareToReceiveDrop];
  v9 = objc_alloc_init(SearchFieldItem);
  [(SearchFieldItem *)v9 setSearchString:stringCopy];

  [(SearchFieldItem *)v9 setCoordinateHint:latitude, longitude];
  [(ActionCoordinator *)self viewController:0 doSearchItem:v9 withUserInfo:&__NSDictionary0__struct];
}

- (BOOL)mapsDragDestinationHandler:(id)handler didReceiveURL:(id)l
{
  lCopy = l;
  [(ActionCoordinator *)self _prepareToReceiveDrop];
  v6 = +[UIApplication _maps_keyMapsSceneDelegate];
  entryPointsCoordinator = [v6 entryPointsCoordinator];
  containerViewController = [(ActionCoordinator *)self containerViewController];
  view = [containerViewController view];
  window = [view window];
  windowScene = [window windowScene];
  session = [windowScene session];
  containerViewController2 = [(ActionCoordinator *)self containerViewController];
  view2 = [containerViewController2 view];
  [view2 bounds];
  [entryPointsCoordinator openURL:lCopy session:session sceneOptions:0 mkOptions:0 windowSize:{v15, v16}];

  return 1;
}

- (BOOL)mapsDragDestinationHandler:(id)handler didReceiveVCard:(id)card
{
  cardCopy = card;
  [(ActionCoordinator *)self _prepareToReceiveDrop];
  postalAddresses = [cardCopy postalAddresses];
  firstObject = [postalAddresses firstObject];

  if (firstObject)
  {
    v8 = [[AddressBookAddress alloc] initWithContact:cardCopy addressValue:firstObject];
    v9 = [SearchFieldItem searchFieldItemWithObject:v8];
    [(ActionCoordinator *)self viewController:0 doSearchItem:v9 withUserInfo:&__NSDictionary0__struct];
  }

  return firstObject != 0;
}

- (void)mapsDragDestinationHandler:(id)handler didReceiveMapItem:(id)item
{
  itemCopy = item;
  [(ActionCoordinator *)self _prepareToReceiveDrop];
  v7 = [[SearchResult alloc] initWithMapItem:itemCopy];

  [(SearchResultRepr *)v7 setHasIncompleteMetadata:1];
  v6 = [SearchFieldItem searchFieldItemWithObject:v7];
  [(ActionCoordinator *)self viewController:0 doSearchItem:v6 withUserInfo:&__NSDictionary0__struct];
}

- (void)_prepareToReceiveDrop
{
  [(ActionCoordinator *)self exitRoutePlanningIfNeededAnimated:0];

  [(ActionCoordinator *)self presentSearchAnimated:0];
}

- (void)markedLocationRefinementViewControllerDidCancel:(id)cancel
{
  presentingViewController = [cancel presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)markedLocationRefinementViewControllerSelectedRemoveMarkedLocation:(id)location
{
  locationCopy = location;
  originalMarkedLocation = [locationCopy originalMarkedLocation];
  presentingViewController = [locationCopy presentingViewController];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10090AEA0;
  v9[3] = &unk_101661A40;
  v9[4] = self;
  v10 = locationCopy;
  v11 = originalMarkedLocation;
  v7 = originalMarkedLocation;
  v8 = locationCopy;
  [presentingViewController dismissViewControllerAnimated:1 completion:v9];
}

- (void)locationRefinementViewController:(id)controller didSelectCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ActionCoordinator *)self viewController:controllerCopy createMarkedLocationAtCoordinate:0x7FFFFFFFLL floorOrdinal:latitude, longitude];
    presentingViewController = [controllerCopy presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (int)currentMapViewTargetForAnalytics
{
  currentViewController = [(ActionCoordinator *)self currentViewController];
  v4 = [currentViewController conformsToProtocol:&OBJC_PROTOCOL___GEOLogContextDelegate];

  if (!v4)
  {
    return 0;
  }

  currentViewController2 = [(ActionCoordinator *)self currentViewController];
  if (objc_opt_respondsToSelector())
  {
    currentMapViewTargetForAnalytics = [currentViewController2 currentMapViewTargetForAnalytics];
  }

  else
  {
    currentMapViewTargetForAnalytics = 0;
  }

  return currentMapViewTargetForAnalytics;
}

- (int)currentUITargetForAnalytics
{
  currentViewController = [(ActionCoordinator *)self currentViewController];
  v4 = [currentViewController conformsToProtocol:&OBJC_PROTOCOL___GEOLogContextDelegate];

  if (!v4)
  {
    return 0;
  }

  currentViewController2 = [(ActionCoordinator *)self currentViewController];
  if (objc_opt_respondsToSelector())
  {
    currentUITargetForAnalytics = [currentViewController2 currentUITargetForAnalytics];
  }

  else
  {
    currentUITargetForAnalytics = 0;
  }

  return currentUITargetForAnalytics;
}

- (void)pptTestPresentPlacecardWithMapItem:(id)item
{
  itemCopy = item;
  v5 = [[PlaceCardItem alloc] initWithMapItem:itemCopy];

  [(ActionCoordinator *)self presentPlaceCardForItem:v5 addToHistory:0 source:0 saveSelectionState:1];
}

- (void)pptTestStartNavigation
{
  routePlanningOverviewViewController = [(ActionCoordinator *)self routePlanningOverviewViewController];
  if ([routePlanningOverviewViewController conformsToProtocol:&OBJC_PROTOCOL___PPTTestNavigationProtocol])
  {
    [routePlanningOverviewViewController pptTestStartNavigation];
  }
}

- (void)pptTestDoDirectionItem:(id)item
{
  v6 = @"DirectionsSessionInitiatorKey";
  v7 = &off_1016E7808;
  itemCopy = item;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [(ActionCoordinator *)self viewController:0 doDirectionItem:itemCopy withUserInfo:v5];
}

- (void)pptTestCreateCustomSearchResultForDroppedPinAtPoint:(CLLocationCoordinate2D)point animated:(BOOL)animated
{
  v5 = [SearchResult customSearchResultWithCoordinate:animated, point.latitude, point.longitude];
  [(ActionCoordinator *)self viewController:0 removeDroppedPin:0];
  [(ActionCoordinator *)self viewController:0 createDroppedPin:v5];
}

- (void)pptSelectFirstGuidePublisher
{
  searchModeViewController = [(ActionCoordinator *)self searchModeViewController];
  [searchModeViewController pptSelectFirstGuidePublisher];
}

- (void)pptSelectSeeAllCuratedCollections
{
  searchModeViewController = [(ActionCoordinator *)self searchModeViewController];
  [searchModeViewController pptSelectSeeAllCuratedCollections];
}

- (void)pptSelectACSuggestionMatchingAddress:(id)address
{
  addressCopy = address;
  searchModeViewController = [(ActionCoordinator *)self searchModeViewController];
  [searchModeViewController pptSelectACSuggestionMatchingAddress:addressCopy];
}

- (void)pptSelectFirstCuratedGuide
{
  searchModeViewController = [(ActionCoordinator *)self searchModeViewController];
  [searchModeViewController pptSelectFirstCuratedCollection];
}

- (void)pptTestSearchCancel
{
  [(ActionCoordinator *)self pptAssertSearch];
  searchModeViewController = [(ActionCoordinator *)self searchModeViewController];
  [searchModeViewController conformsToProtocol:&OBJC_PROTOCOL___UISearchBarDelegate];
  [searchModeViewController searchBarCancelButtonClicked:0];
}

- (void)pptTestEnterSearchMode
{
  [CATransaction setFrameStallSkipRequest:1];
  [(ActionCoordinator *)self pptAssertSearch];
  searchModeViewController = [(ActionCoordinator *)self searchModeViewController];
  [searchModeViewController pptSearchBarShouldProvideTextChangeNotification];

  currentViewController = [(ActionCoordinator *)self currentViewController];
  cardPresentationController = [currentViewController cardPresentationController];
  [cardPresentationController wantsLayout:3];

  searchModeViewController2 = [(ActionCoordinator *)self searchModeViewController];
  [searchModeViewController2 searchBarBecomeFirstResponder];
}

- (void)pptTestSearchForFieldItem:(id)item
{
  itemCopy = item;
  [(ActionCoordinator *)self pptAssertSearch];
  v5 = +[UIApplication sharedApplication];
  [v5 sendAction:"resignFirstResponder" toTarget:0 fromSender:0 forEvent:0];

  [(ActionCoordinator *)self viewController:0 doSearchItem:itemCopy withUserInfo:0];
  v6 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v6 userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    searchModeViewController = [(ActionCoordinator *)self searchModeViewController];
    [searchModeViewController pptSetSearchDataSource];
  }
}

- (void)pptAssertSearch
{
  v3 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v3 userInterfaceIdiom];

  currentViewController = [(ActionCoordinator *)self currentViewController];
  if (userInterfaceIdiom != 5)
  {
    v6 = currentViewController;
    [(ActionCoordinator *)self searchModeViewController];

    currentViewController = v6;
  }
}

- (void)pptTestSearchEndEditing
{
  searchModeViewController = [(ActionCoordinator *)self searchModeViewController];
  [searchModeViewController endEditing];
}

- (void)pptTestAutocompleteSearchForFieldItem:(id)item
{
  itemCopy = item;
  searchModeViewController = [(ActionCoordinator *)self searchModeViewController];
  [searchModeViewController updateSearchFieldWithItem:itemCopy];
}

- (void)pptTestSearchRetainQueryForSelectedSearchCompletion:(id)completion
{
  completionCopy = completion;
  searchModeViewController = [(ActionCoordinator *)self searchModeViewController];
  [searchModeViewController retainSearchQueryForSelectedAutocompleteItem:completionCopy forTimeInterval:1.79769313e308];
}

- (void)pptTestSearchNearbyCategoryWithIndex:(unint64_t)index
{
  searchModeViewController = [(ActionCoordinator *)self searchModeViewController];
  [searchModeViewController selectNearbyCategoryAtIndex:index];
}

- (void)pptTestMediumizePlaceCardAnimated:(BOOL)animated
{
  animatedCopy = animated;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained setLayoutIfSupported:2 animated:animatedCopy];
}

- (void)pptTestMinimizePlaceCardAnimated:(BOOL)animated
{
  animatedCopy = animated;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained setLayoutIfSupported:1 animated:animatedCopy];
}

- (void)pptTestMaximizePlaceCardAnimated:(BOOL)animated
{
  animatedCopy = animated;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained setLayoutIfSupported:3 animated:animatedCopy];
}

- (BOOL)pptTestCanResizePlacecard
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  containerStyle = [WeakRetained containerStyle];

  return ((containerStyle - 2) & 0xFFFFFFFFFFFFFFFALL) != 0;
}

- (void)didTapMapView:(id)view atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  if ([(ActionCoordinator *)self isRoutePlanningPresented])
  {
    containerViewController = [(ActionCoordinator *)self containerViewController];
    currentViewController = [containerViewController currentViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      [(RoutePlanningMapController *)self->_routePlanningMapController didTapMapView:viewCopy atPoint:x, y];
    }
  }

  containerViewController2 = [(ActionCoordinator *)self containerViewController];
  chromeViewController = [containerViewController2 chromeViewController];
  if (objc_opt_respondsToSelector())
  {
    containerViewController3 = [(ActionCoordinator *)self containerViewController];
    chromeViewController2 = [containerViewController3 chromeViewController];
    v14 = [chromeViewController2 mapViewShouldHandleTapToDeselect:viewCopy];

    if (!v14)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  mapSelectionManager = [(ActionCoordinator *)self mapSelectionManager];
  hasSelection = [mapSelectionManager hasSelection];

  if (hasSelection)
  {
    containerViewController4 = [(ActionCoordinator *)self containerViewController];
    chromeViewController3 = [containerViewController4 chromeViewController];
    [chromeViewController3 setNeedsUpdateComponent:@"lookAroundButton" animated:1];

    mapSelectionManager2 = [(ActionCoordinator *)self mapSelectionManager];
    [mapSelectionManager2 clearSelection];
  }

  else
  {
    lineSelectionAction = [(ActionCoordinator *)self lineSelectionAction];
    isActive = [lineSelectionAction isActive];

    if (isActive)
    {
      mapSelectionManager2 = [(ActionCoordinator *)self lineSelectionAction];
      [mapSelectionManager2 deactivateWithContext:0];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
      currentViewController2 = [WeakRetained currentViewController];
      objc_opt_class();
      v24 = objc_opt_isKindOfClass();

      if ((v24 & 1) == 0)
      {
        goto LABEL_15;
      }

      mapSelectionManager2 = objc_loadWeakRetained(&self->_containerViewController);
      currentViewController3 = [mapSelectionManager2 currentViewController];
      [(ActionCoordinator *)self viewControllerClosed:currentViewController3 animated:1];
    }
  }

LABEL_15:
}

- (void)viewControllerShowPhotoCredit:(id)credit
{
  creditCopy = credit;
  parentViewController = [creditCopy parentViewController];
  [parentViewController setIsPreparingForModalPresentation:1];
  cardPresentationController = [parentViewController cardPresentationController];
  [cardPresentationController updateHeightForCurrentLayoutAnimated:1];

  v6 = [[PhotoCreditViewController alloc] initWithCompletionHandler:&stru_10162EC18];
  [(ContaineeViewController *)v6 setContaineeDelegate:self];
  [(PhotoCreditViewController *)v6 setDelegate:parentViewController];
  containerViewController = [(ActionCoordinator *)self containerViewController];
  v8 = sub_10000FA08(containerViewController);

  if (v8 == 5)
  {
    [creditCopy presentViewController:v6 animated:1 completion:0];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    [WeakRetained presentController:v6 animated:1];
  }
}

- (void)viewControllerPresentPOIEnrichmentWithCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  objc_storeStrong(&self->_poiEnrichmentCoordinator, coordinator);
  [(UGCPOIEnrichmentCoordinator *)self->_poiEnrichmentCoordinator setDelegate:self];
  containerViewController = [(UGCPOIEnrichmentCoordinator *)self->_poiEnrichmentCoordinator containerViewController];

  if (!containerViewController)
  {
    containerViewController2 = [(ActionCoordinator *)self containerViewController];
    [(UGCPOIEnrichmentCoordinator *)self->_poiEnrichmentCoordinator setContainerViewController:containerViewController2];
  }

  containeeDelegate = [(UGCPOIEnrichmentCoordinator *)self->_poiEnrichmentCoordinator containeeDelegate];

  if (!containeeDelegate)
  {
    [(UGCPOIEnrichmentCoordinator *)self->_poiEnrichmentCoordinator setContaineeDelegate:self];
  }

  presentingViewController = [(UGCPOIEnrichmentCoordinator *)self->_poiEnrichmentCoordinator presentingViewController];

  if (!presentingViewController)
  {
    containerViewController3 = [(ActionCoordinator *)self containerViewController];
    [(UGCPOIEnrichmentCoordinator *)self->_poiEnrichmentCoordinator setPresentingViewController:containerViewController3];
  }

  [(UGCPOIEnrichmentCoordinator *)self->_poiEnrichmentCoordinator present];
}

- (void)poiEnrichmentCoordinator:(id)coordinator openURL:(id)l
{
  lCopy = l;
  presentingViewController = [coordinator presentingViewController];
  [(ActionCoordinator *)self viewController:presentingViewController openURL:lCopy];
}

- (void)poiEnrichmentCoordinatorDidFinish:(id)finish
{
  poiEnrichmentCoordinator = self->_poiEnrichmentCoordinator;
  self->_poiEnrichmentCoordinator = 0;
}

- (void)addRatingsForMapItem:(id)item
{
  itemCopy = item;
  v6 = [[MKMapItem alloc] initWithGeoMapItem:itemCopy isPlaceHolderPlace:0];

  v5 = [UGCPOIEnrichmentCoordinator ratingsAndPhotosCoordinatorWithMapItem:v6 initialOverallState:0 entryPoint:0 originTarget:@"SEARCH_TRAY"];
  [v5 setSubmissionStatusDelegate:self];
  [v5 setPresentationContext:2];
  [(ActionCoordinator *)self viewControllerPresentPOIEnrichmentWithCoordinator:v5];
}

- (void)presentPOIEnrichmentInformedConsentWithPresentationContext:(int64_t)context completion:(id)completion
{
  completionCopy = completion;
  containerViewController = [(ActionCoordinator *)self containerViewController];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10090C010;
  v9[3] = &unk_10162EBD8;
  v10 = completionCopy;
  v8 = completionCopy;
  [UGCInformedConsentViewController presentIfNeededWithPresentingViewController:containerViewController presentationContext:context completion:v9];
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

- (void)continueRideBookingSessionWithApplicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  appCoordinator = [(ActionCoordinator *)self appCoordinator];
  [appCoordinator continueRideBookingSessionWithApplicationIdentifier:identifierCopy];
}

- (void)startRideBookingSessionWithRideOption:(id)option
{
  optionCopy = option;
  [(ActionCoordinator *)self setIsRoutePlanningPresented:0];
  appCoordinator = [(ActionCoordinator *)self appCoordinator];
  [appCoordinator startRideBookingSessionWithRideBookingRideOption:optionCopy];
}

- (void)startNavigationWithRouteCollection:(id)collection navigationDetailsOptions:(NavigationDetailsOptions *)options
{
  collectionCopy = collection;
  searchSessionManager = [(ActionCoordinator *)self searchSessionManager];
  currentSearchSession = [searchSessionManager currentSearchSession];
  [currentSearchSession resetEVChargerTimers];

  appCoordinator = [(ActionCoordinator *)self appCoordinator];
  v10 = *&options->guidanceType;
  v11[0] = *&options->shouldSimulateLocations;
  v11[1] = v10;
  v11[2] = *&options->isReconnecting;
  navigationModeContext = options->navigationModeContext;
  [appCoordinator startNavigationWithRouteCollection:collectionCopy navigationDetailsOptions:v11];
}

- (void)selectWaypointSearchFieldIndex:(unint64_t)index exitPlanningIfCancelTapped:(BOOL)tapped beginEditing:(BOOL)editing
{
  tappedCopy = tapped;
  v7 = [(ActionCoordinator *)self routeSearchVC:index];
  [v7 setExitRoutePlanningOnCancel:tappedCopy];
  [v7 selectFieldIndex:index beginEditing:0];
}

- (void)presentScheduleForStep:(id)step
{
  stepCopy = step;
  v8 = [[TransitSchedulesViewController alloc] initWithTransitRouteStep:stepCopy];

  [(TransitSchedulesViewController *)v8 setActionCoordinator:self];
  [(ContaineeViewController *)v8 setContaineeDelegate:self];
  [(TransitSchedulesViewController *)v8 setTransitSchedulesDelegate:self];
  [(ControlContaineeViewController *)v8 setDelegate:self];
  if (sub_10000FA08(v8) != 5)
  {
    cardPresentationController = [(ContaineeViewController *)v8 cardPresentationController];
    [cardPresentationController setPresentedModally:0];

    cardPresentationController2 = [(ContaineeViewController *)v8 cardPresentationController];
    [cardPresentationController2 setTakesAvailableHeight:0];
  }

  containerViewController = [(ActionCoordinator *)self containerViewController];
  [containerViewController presentController:v8 animated:1];
}

- (void)setRoutePlanningAdvisory:(id)advisory
{
  advisoryCopy = advisory;
  incidentsVC = [(ActionCoordinator *)self incidentsVC];
  [incidentsVC setAdvisory:advisoryCopy];
}

- (void)setRoutePlanningAdvisoriesInfo:(id)info
{
  infoCopy = info;
  incidentsVC = [(ActionCoordinator *)self incidentsVC];
  [incidentsVC setAdvisoriesInfo:infoCopy];
}

- (void)closeRoutePlanningViewController:(id)controller withSender:(id)sender
{
  controllerCopy = controller;
  senderCopy = sender;
  v8 = sub_100798A3C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v33 = 138412546;
    *&v33[4] = controllerCopy;
    v34 = 2112;
    v35 = senderCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "closeRoutePlanningViewController: %@ sender: %@", v33, 0x16u);
  }

  containerViewController = [(ActionCoordinator *)self containerViewController];
  traitCollection = [containerViewController traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom != 5 || [controllerCopy modalPresentationStyle] != 7)
  {
    currentViewController = [(ActionCoordinator *)self currentViewController];

    if (currentViewController != controllerCopy)
    {
      routePlanningOverviewViewControllerIfLoaded = sub_100798A3C();
      if (os_log_type_enabled(routePlanningOverviewViewControllerIfLoaded, OS_LOG_TYPE_ERROR))
      {
        currentViewController2 = [(ActionCoordinator *)self currentViewController];
        *v33 = 138412546;
        *&v33[4] = currentViewController2;
        v34 = 2112;
        v35 = controllerCopy;
        _os_log_impl(&_mh_execute_header, routePlanningOverviewViewControllerIfLoaded, OS_LOG_TYPE_ERROR, "Aborting closing route planning as %@ does not equal %@", v33, 0x16u);
      }

LABEL_41:

      goto LABEL_42;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      presentedViewController = [controllerCopy presentedViewController];

      if (presentedViewController)
      {
        containerViewController2 = [(ActionCoordinator *)self containerViewController];
        [containerViewController2 dismissViewControllerAnimated:1 completion:0];

        goto LABEL_42;
      }
    }

    routePlanningOverviewViewControllerIfLoaded = [(ActionCoordinator *)self routePlanningOverviewViewControllerIfLoaded];
    if (routePlanningOverviewViewControllerIfLoaded)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (routePlanningOverviewViewControllerIfLoaded == controllerCopy || (isKindOfClass & 1) == 0)
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
    platformController = [(ActionCoordinator *)self platformController];
    currentSession = [platformController currentSession];
    if (v21)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = 0;
      }

      else
      {
        platformController2 = [(ActionCoordinator *)self platformController];
        previousSession = [platformController2 previousSession];
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
        containerViewController3 = [(ActionCoordinator *)self containerViewController];
        [containerViewController3 popLastViewControllerFromViewController:controllerCopy animated:!IsReduceMotionEnabled useDefaultContaineeLayout:0];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || userInterfaceIdiom == 5 && _UISolariumEnabled() && (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          containerViewController3 = [(ActionCoordinator *)self containerViewController];
          [containerViewController3 popLastViewControllerAnimated:!IsReduceMotionEnabled];
        }

        else
        {
          isRoutePlanningPresented = [(ActionCoordinator *)self isRoutePlanningPresented];
          containerViewController3 = [(ActionCoordinator *)self containerViewController];
          if (isRoutePlanningPresented)
          {
            [(ActionCoordinator *)self routePlanningOverviewViewController];
          }

          else
          {
            [(ActionCoordinator *)self routeSearchVC];
          }
          v32 = ;
          [containerViewController3 popLastViewControllerFromViewController:v32 animated:!IsReduceMotionEnabled useDefaultContaineeLayout:0];
        }
      }
    }

    incidentsVC = self->_incidentsVC;
    if (incidentsVC == controllerCopy)
    {
      [(RouteIncidentsViewController *)incidentsVC resetForDismiss];
    }

    routeSearchVC = self->_routeSearchVC;
    if (routeSearchVC == controllerCopy)
    {
      self->_routeSearchVC = 0;
    }

    goto LABEL_41;
  }

  [controllerCopy dismissViewControllerAnimated:1 completion:0];
LABEL_42:
}

- (void)_presentMacRouteEditingWithEditRequired:(unint64_t)required index:(unint64_t)index
{
  [(ActionCoordinator *)self presentRoutePlanningViewType:1];
  if (required)
  {
    items = [self->_currentDirectionItem items];
    routeSearchVC = [(ActionCoordinator *)self routeSearchVC];
    [routeSearchVC updateWithItems:items];

    if ([items count] > index)
    {
      routeSearchVC2 = [(ActionCoordinator *)self routeSearchVC];
      [routeSearchVC2 selectFieldIndex:index beginEditing:1];
    }
  }
}

- (void)presentPreferredNetworksOnboardingForVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  v5 = sub_100798370();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(ActionCoordinator *)selfCopy performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy, v10];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543874;
    v17 = selfCopy;
    v18 = 2080;
    v19 = "[ActionCoordinator presentPreferredNetworksOnboardingForVehicle:]";
    v20 = 2112;
    v21 = vehicleCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] %s, vehicle: %@", buf, 0x20u);
  }

  v12 = [[PreferredNetworksOnboardingController alloc] initWithVehicle:vehicleCopy];
  preferredNetworksOnboardingController = self->_preferredNetworksOnboardingController;
  self->_preferredNetworksOnboardingController = v12;

  v14 = self->_preferredNetworksOnboardingController;
  containerViewController = [(ActionCoordinator *)self containerViewController];
  [(PreferredNetworksOnboardingController *)v14 presentInViewController:containerViewController animated:1 completion:0];
}

- (void)presentVehicleOnboardingWithVehicles:(id)vehicles completion:(id)completion
{
  vehiclesCopy = vehicles;
  completionCopy = completion;
  v8 = sub_100798370();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    if (objc_opt_respondsToSelector())
    {
      v12 = [(ActionCoordinator *)selfCopy performSelector:"accessibilityIdentifier"];
      v13 = v12;
      if (v12 && ![v12 isEqualToString:v11])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v11, selfCopy, v13];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v11, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543874;
    v20 = selfCopy;
    v21 = 2080;
    v22 = "[ActionCoordinator presentVehicleOnboardingWithVehicles:completion:]";
    v23 = 2112;
    v24 = vehiclesCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] %s, vehicles: %@", buf, 0x20u);
  }

  v15 = [[EVOnboardingController alloc] initWithUnpairedVehicles:vehiclesCopy];
  vehicleOnboardingController = self->_vehicleOnboardingController;
  self->_vehicleOnboardingController = v15;

  v17 = self->_vehicleOnboardingController;
  containerViewController = [(ActionCoordinator *)self containerViewController];
  [(EVOnboardingController *)v17 presentInViewController:containerViewController animated:1 completion:completionCopy];
}

- (void)presentEditNoteViewControllerWithInitialText:(id)text libraryAccessProvider:(id)provider placeMUID:(unint64_t)d completion:(id)completion
{
  textCopy = text;
  providerCopy = provider;
  completionCopy = completion;
  v13 = objc_retainBlock(completionCopy);
  noteEditorCompletionBlock = self->_noteEditorCompletionBlock;
  self->_noteEditorCompletionBlock = v13;

  v15 = [[_TtC4Maps27PlaceNoteEditViewController alloc] initWithNote:textCopy];
  objc_initWeak(&location, self);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10090D0D8;
  v19[3] = &unk_10162EBB0;
  objc_copyWeak(v22, &location);
  v16 = providerCopy;
  v20 = v16;
  v22[1] = d;
  v17 = textCopy;
  v21 = v17;
  [(PlaceNoteEditViewController *)v15 setDismissHandler:v19];
  containerViewController = [(ActionCoordinator *)self containerViewController];
  [containerViewController presentController:v15 animated:1];

  objc_destroyWeak(v22);
  objc_destroyWeak(&location);
}

- (void)_carPlayWantsToDisplayEVOnboarding:(id)onboarding
{
  onboardingCopy = onboarding;
  if ([(EVOnboardingController *)self->_vehicleOnboardingController state]< 1 || [(EVOnboardingController *)self->_vehicleOnboardingController state]> 4)
  {
    userInfo = [onboardingCopy userInfo];
    v6 = [userInfo objectForKeyedSubscript:@"EVOnboardingCarPlayVehicleKey"];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [userInfo objectForKeyedSubscript:@"EVOnboardingCarPlayDictionaryKey"];
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
          v16 = userInfo;
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
        v16 = userInfo;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "_carPlayWantsToDisplayEVOnboarding: Received invalid vehicle object through notification: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    userInfo = sub_100798370();
    if (os_log_type_enabled(userInfo, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, userInfo, OS_LOG_TYPE_ERROR, "_carPlayWantsToDisplayEVOnboarding: will not present another CP onboarding as we have already presented one.", buf, 2u);
    }
  }
}

- (void)switchRoutePlanningTransportTypeToType:(int64_t)type
{
  if (self->_routePlanningDataCoordinator)
  {
    routePlanningDataCoordinator = [(ActionCoordinator *)self routePlanningDataCoordinator];
    [routePlanningDataCoordinator updateTransportType:type];
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
  containerViewController = [(ActionCoordinator *)self containerViewController];
  currentOrPendingViewController = [containerViewController currentOrPendingViewController];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = currentOrPendingViewController;
  if (isKindOfClass)
  {
    v6 = currentOrPendingViewController;
    routePlanningDataCoordinator = [(ActionCoordinator *)self routePlanningDataCoordinator];
    routeCollection = [routePlanningDataCoordinator routeCollection];
    currentRoute = [routeCollection currentRoute];

    if (currentRoute)
    {
      shouldShowSchedule = [currentRoute shouldShowSchedule];
    }

    else
    {
      shouldShowSchedule = 0;
    }

    [v6 setShowArriveBy:shouldShowSchedule animated:1];

    v5 = currentOrPendingViewController;
  }
}

- (void)presentRoutePlanningViewType:(int64_t)type
{
  v5 = sub_100798A3C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    typeCopy = type;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "presentRoutePlanningViewType: %ld", buf, 0xCu);
  }

  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  v7 = IsReduceMotionEnabled;
  v8 = 0;
  if (type > 3)
  {
    if (type > 5)
    {
      if (type != 6)
      {
        if (type == 7)
        {
          autosharingVC = [(ActionCoordinator *)self autosharingVC];
          currentSession = [(PlatformController *)self->_platformController currentSession];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24 = currentSession;
          }

          else
          {
            v24 = 0;
          }

          v25 = v24;

          automaticSharingContacts = [v25 automaticSharingContacts];

          if (automaticSharingContacts)
          {
            v27 = automaticSharingContacts;
          }

          else
          {
            v27 = &__NSArray0__struct;
          }

          [(RoutePlanningEbikeOptionsViewController *)autosharingVC setContacts:v27];
        }

        else
        {
          autosharingVC = 0;
          if (type != 8)
          {
LABEL_28:
            if ([(RoutePlanningEbikeOptionsViewController *)autosharingVC modalPresentationStyle]== 7)
            {
              popoverPresentationController = [(RoutePlanningEbikeOptionsViewController *)autosharingVC popoverPresentationController];
              delegate = [popoverPresentationController delegate];

              if (!delegate)
              {
                popoverPresentationController2 = [(RoutePlanningEbikeOptionsViewController *)autosharingVC popoverPresentationController];
                [popoverPresentationController2 setDelegate:self];
              }

              containerViewController = [(ActionCoordinator *)self containerViewController];
              [containerViewController _maps_topMostPresentViewController:autosharingVC animated:!v7 completion:0];
            }

            else
            {
              containerViewController = [(ActionCoordinator *)self containerViewController];
              [containerViewController presentController:autosharingVC animated:!v7 completion:v8];
            }

            return;
          }

          v10 = [RoutePlanningEbikeOptionsViewController alloc];
          routePlanningDataCoordinator = [(ActionCoordinator *)self routePlanningDataCoordinator];
          v30[0] = _NSConcreteStackBlock;
          v30[1] = 3221225472;
          v30[2] = sub_10090DD0C;
          v30[3] = &unk_10162E5D0;
          v30[4] = self;
          autosharingVC = [(RoutePlanningOptionsViewController *)v10 initWithDataCoordinator:routePlanningDataCoordinator automaticallySaveChanges:0 completionHandler:v30];
        }

LABEL_27:
        v8 = 0;
        goto LABEL_28;
      }

      routingAppsVC = [(ActionCoordinator *)self routingAppsVC];
LABEL_26:
      autosharingVC = routingAppsVC;
      goto LABEL_27;
    }

    if (type == 4)
    {
      [(ActionCoordinator *)self routeOptionsVC];
    }

    else
    {
      [(ActionCoordinator *)self incidentsVC];
    }

    routingAppsVC = LABEL_19:;
    goto LABEL_26;
  }

  if (type > 1)
  {
    if (type == 2)
    {
      [(ActionCoordinator *)self routeStepsVC];
    }

    else
    {
      [(ActionCoordinator *)self timePickingVC];
    }

    goto LABEL_19;
  }

  if (!type)
  {
    [(ActionCoordinator *)self _enterRoutePlanningOverviewAnimated:!IsReduceMotionEnabled completion:0];
    return;
  }

  autosharingVC = 0;
  if (type != 1)
  {
    goto LABEL_28;
  }

  routeSearchVC = [(ActionCoordinator *)self routeSearchVC];
  [routeSearchVC setPauseSelectionUpdates:1];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10090DCCC;
  v31[3] = &unk_101661738;
  v13 = routeSearchVC;
  v32 = v13;
  v8 = objc_retainBlock(v31);
  [v13 updateFieldsWithCurrentDirectionItem];
  if ((_UISolariumEnabled() & 1) != 0 || (-[ActionCoordinator containerViewController](self, "containerViewController"), v14 = objc_claimAutoreleasedReturnValue(), [v14 traitCollection], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "userInterfaceIdiom"), v15, v14, v16 != 5))
  {
    containerViewController2 = [(ActionCoordinator *)self containerViewController];
    [containerViewController2 removeControllerFromStack:v13];

    autosharingVC = v13;
    v29 = +[MKMapService sharedService];
    [v29 captureUserAction:3006 onTarget:-[ActionCoordinator currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];

    goto LABEL_28;
  }

  if ([self->_currentDirectionItem transportType])
  {
    routePlanningDataCoordinator2 = [(ActionCoordinator *)self routePlanningDataCoordinator];
    [routePlanningDataCoordinator2 updateTransportType:{-[DirectionItem transportType](self->_currentDirectionItem, "transportType")}];
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

- (void)routePlanningUpdatedWaypoints:(id)waypoints
{
  waypointsCopy = waypoints;
  if (waypointsCopy)
  {
    v16 = waypointsCopy;
    containerViewController = [(ActionCoordinator *)self containerViewController];
    currentViewController = [containerViewController currentViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    waypointsCopy = v16;
    if (isKindOfClass)
    {
      containerViewController2 = [(ActionCoordinator *)self containerViewController];
      currentViewController2 = [containerViewController2 currentViewController];

      origin = [v16 origin];
      geoMapItem = [origin geoMapItem];
      timezone = [geoMapItem timezone];
      [currentViewController2 setOriginTimeZone:timezone];

      destination = [v16 destination];
      geoMapItem2 = [destination geoMapItem];
      timezone2 = [geoMapItem2 timezone];
      [currentViewController2 setDestinationTimeZone:timezone2];

      waypointsCopy = v16;
    }
  }
}

- (void)_setRouteSelectionMapState
{
  if (self->_routePlanningDataCoordinator)
  {
    mapSelectionManager = [(ActionCoordinator *)self mapSelectionManager];
    hasSelection = [mapSelectionManager hasSelection];

    if (hasSelection)
    {
      mapSelectionManager2 = [(ActionCoordinator *)self mapSelectionManager];
      [mapSelectionManager2 clearSelection];
    }

    [(ActionCoordinator *)self updateMapApplicationState:1];
    routePlanningMapController = [(ActionCoordinator *)self routePlanningMapController];
    [routePlanningMapController setSelectCurrentRoute:1];
  }
}

- (void)_cleanupRoutePlanningIfNeededAnimated:(BOOL)animated
{
  if (self->_routePlanningDataCoordinator)
  {
    animatedCopy = animated;
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
      platformController = [(ActionCoordinator *)self platformController];
      currentSession = [platformController currentSession];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        routePlanningMapController = [(ActionCoordinator *)self routePlanningMapController];
        [routePlanningMapController clearMapState:animatedCopy];

        [(RoutePlanningMapController *)self->_routePlanningMapController restoreOriginalMapViewMode:animatedCopy];
        [(ActionCoordinator *)self updateMapApplicationState:0];
      }

      routePlanningDataCoordinator = [(ActionCoordinator *)self routePlanningDataCoordinator];
      [routePlanningDataCoordinator stop];

      containerViewController = [(ActionCoordinator *)self containerViewController];
      chromeViewController = [containerViewController chromeViewController];
      [chromeViewController setNeedsUpdateComponent:@"lookAroundButton" animated:1];
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
      containerViewController = sub_10006D178();
      if (!os_log_type_enabled(containerViewController, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      chromeViewController = +[NSThread callStackSymbols];
      v16 = 138412290;
      v17 = chromeViewController;
      _os_log_impl(&_mh_execute_header, containerViewController, OS_LOG_TYPE_ERROR, "%@", &v16, 0xCu);
LABEL_8:

LABEL_9:
    }
  }
}

- (void)_exitRoutePlanningIfNeededAnimated:(BOOL)animated restoreStashedMapSelection:(BOOL)selection
{
  if (self->_routePlanningDataCoordinator)
  {
    selectionCopy = selection;
    animatedCopy = animated;
    v7 = sub_100798A3C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v28 = 134349568;
      selfCopy2 = self;
      v30 = 1024;
      *v31 = animatedCopy;
      *&v31[4] = 1024;
      *&v31[6] = selectionCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] _exitRoutePlanningIfNeededAnimated: %d, restoreStashedMapSelection: %d", &v28, 0x18u);
    }

    if (![(ActionCoordinator *)self isRoutePlanningPresented]&& ![(ActionCoordinator *)self _isRoutePlanningTopMost])
    {
      destination = sub_100798A3C();
      if (os_log_type_enabled(destination, OS_LOG_TYPE_INFO))
      {
        v28 = 134349056;
        selfCopy2 = self;
        _os_log_impl(&_mh_execute_header, destination, OS_LOG_TYPE_INFO, "[%{public}p] _exitRoutePlanningIfNeededAnimated: Route planning is not presented; ignoring", &v28, 0xCu);
      }

      goto LABEL_25;
    }

    if (![(ActionCoordinator *)self isRoutePlanningPresented])
    {
      v25 = sub_10006D178();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v28 = 136315906;
        selfCopy2 = "[ActionCoordinator _exitRoutePlanningIfNeededAnimated:restoreStashedMapSelection:]";
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
          selfCopy2 = v27;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%@", &v28, 0xCu);
        }
      }
    }

    [(ActionCoordinator *)self clearSearchIfOriginatedFromWaypointEditor];
    routePlanningDataCoordinator = [(ActionCoordinator *)self routePlanningDataCoordinator];
    resolvedWaypointSet = [routePlanningDataCoordinator resolvedWaypointSet];
    destination = [resolvedWaypointSet destination];

    [(ActionCoordinator *)self _cleanupRoutePlanningIfNeededAnimated:animatedCopy];
    routePlanningOverviewViewController = [(ActionCoordinator *)self routePlanningOverviewViewController];
    currentViewController = [(ActionCoordinator *)self currentViewController];
    venueCardCoordinator = [(ActionCoordinator *)self venueCardCoordinator];
    topViewController = [venueCardCoordinator topViewController];

    if (currentViewController == topViewController)
    {
      venueCardCoordinator2 = [(ActionCoordinator *)self venueCardCoordinator];
      [venueCardCoordinator2 popVenueCardItem:0];
    }

    containerViewController = [(ActionCoordinator *)self containerViewController];
    [containerViewController popLastViewControllerFromViewController:routePlanningOverviewViewController animated:animatedCopy useDefaultContaineeLayout:0];

    if (!selectionCopy)
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
      mapSelectionManager = [(ActionCoordinator *)self mapSelectionManager];
      [mapSelectionManager restoreSelectionState:v17 animated:animatedCopy];
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

    [(ActionCoordinator *)self viewController:0 selectLastDirectionsDestinationComposedWaypoint:destination];
    goto LABEL_21;
  }

  v19 = sub_10006D178();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v28 = 136315650;
    selfCopy2 = "[ActionCoordinator _exitRoutePlanningIfNeededAnimated:restoreStashedMapSelection:]";
    v30 = 2080;
    *v31 = "ActionCoordinator.m";
    *&v31[8] = 1024;
    v32 = 5442;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v28, 0x1Cu);
  }

  if (sub_100E03634())
  {
    destination = sub_10006D178();
    if (os_log_type_enabled(destination, OS_LOG_TYPE_ERROR))
    {
      v20 = +[NSThread callStackSymbols];
      v28 = 138412290;
      selfCopy2 = v20;
      _os_log_impl(&_mh_execute_header, destination, OS_LOG_TYPE_ERROR, "%@", &v28, 0xCu);
    }

    goto LABEL_25;
  }
}

- (void)_enterRoutePlanningOverviewAnimated:(BOOL)animated saveMapCamera:(BOOL)camera completion:(id)completion
{
  cameraCopy = camera;
  animatedCopy = animated;
  completionCopy = completion;
  if (self->_routePlanningDataCoordinator)
  {
    v72 = animatedCopy;
    [CATransaction setFrameStallSkipRequest:1];
    routePlanningOverviewViewController = [(ActionCoordinator *)self routePlanningOverviewViewController];
    currentViewController = [(ActionCoordinator *)self currentViewController];

    v11 = sub_100798A3C();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = objc_retainBlock(completionCopy);
      *buf = 134350082;
      selfCopy7 = self;
      v76 = 1024;
      *v77 = animatedCopy;
      *&v77[4] = 1024;
      *&v77[6] = cameraCopy;
      *v78 = 2112;
      *&v78[2] = v12;
      v79 = 1024;
      v80 = currentViewController != routePlanningOverviewViewController;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}p] _enterRoutePlanningOverviewAnimated: %d saveMapCamera: %d completion: %@ presentOverview: %d", buf, 0x28u);
    }

    if (currentViewController != routePlanningOverviewViewController && ![self->_currentDirectionItem isVenueItem])
    {
      currentViewController2 = [(ActionCoordinator *)self currentViewController];
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
            selfCopy7 = self;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[%{public}p] _enterRoutePlanningOverviewAnimated, saving selection state", buf, 0xCu);
          }

          mapSelectionManager = [(ActionCoordinator *)self mapSelectionManager];
          v18 = [mapSelectionManager selectionStateIncludingCamera:cameraCopy includeNotCustomLabelMarkers:1];
          routePlanningSelectionRestorationState = self->_routePlanningSelectionRestorationState;
          self->_routePlanningSelectionRestorationState = v18;

          goto LABEL_23;
        }
      }

      else
      {
      }
    }

    mapSelectionManager = [(ActionCoordinator *)self platformController];
    previousSession = [mapSelectionManager previousSession];
    if (previousSession)
    {
      v23 = previousSession;
      v71 = currentViewController;
      v24 = routePlanningOverviewViewController;
      platformController = [(ActionCoordinator *)self platformController];
      previousSession2 = [platformController previousSession];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {

LABEL_22:
        routePlanningOverviewViewController = v24;
        currentViewController = v71;
        goto LABEL_23;
      }

      v70 = completionCopy;
      platformController2 = [(ActionCoordinator *)self platformController];
      previousSession3 = [platformController2 previousSession];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {

        completionCopy = v70;
        goto LABEL_22;
      }

      platformController3 = [(ActionCoordinator *)self platformController];
      previousSession4 = [platformController3 previousSession];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      routePlanningOverviewViewController = v24;
      completionCopy = v70;
      currentViewController = v71;
      if (isKindOfClass)
      {
LABEL_24:
        routePlanningDataCoordinator = [(ActionCoordinator *)self routePlanningDataCoordinator];
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
          currentViewController3 = [(ActionCoordinator *)self currentViewController];
          v34 = currentViewController3 == self->_routeSearchVC;
        }

        if (![(ActionCoordinator *)self isRoutePlanningPresented])
        {
          v36 = sub_100798A3C();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            *buf = 134349056;
            selfCopy7 = self;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "[%{public}p] _enterRoutePlanningOverviewAnimated: Route planning is not currently presented", buf, 0xCu);
          }

          v37 = objc_loadWeakRetained(&self->_containerViewController);
          v38 = sub_10000FA08(v37);

          if (v38 == 5)
          {
            appCoordinator = [(ActionCoordinator *)self appCoordinator];
            [appCoordinator closeSharedTrips];

            [(ActionCoordinator *)self clearSearch];
          }

          containerViewController = [(ActionCoordinator *)self containerViewController];
          topMostPresentedViewController = [containerViewController topMostPresentedViewController];
          objc_opt_class();
          v42 = objc_opt_isKindOfClass();

          if (v42)
          {
            v43 = sub_1007984E4();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              containerViewController2 = [(ActionCoordinator *)self containerViewController];
              topMostPresentedViewController2 = [containerViewController2 topMostPresentedViewController];
              *buf = 134349314;
              selfCopy7 = self;
              v76 = 2112;
              *v77 = topMostPresentedViewController2;
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
          displayedViewMode = [(ActionCoordinator *)self displayedViewMode];
          routePlanningMapController = [(ActionCoordinator *)self routePlanningMapController];
          [routePlanningMapController saveOriginalMapViewModeAs:displayedViewMode];

          [routePlanningDataCoordinator refreshRidesharingOptionsIfVisible];
          v48 = objc_loadWeakRetained(&self->_containerViewController);
          v49 = sub_10000FA08(v48);

          if (v49 == 5)
          {
            [routePlanningDataCoordinator refreshVirtualGarage];
          }

          [routePlanningDataCoordinator setupDataForCurrentObservers];
        }

        v50 = sub_100798A3C();
        v51 = os_log_type_enabled(v50, OS_LOG_TYPE_INFO);
        if (currentViewController == routePlanningOverviewViewController)
        {
          if (v51)
          {
            *buf = 134349056;
            selfCopy7 = self;
            _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "[%{public}p] _enterRoutePlanningOverviewAnimated: Route planning is already presented; will update route selection map state", buf, 0xCu);
          }

          [(ActionCoordinator *)self _setRouteSelectionMapState];
          goto LABEL_58;
        }

        if (v51)
        {
          *buf = 134349312;
          selfCopy7 = self;
          v76 = 1024;
          *v77 = v34;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "[%{public}p] _enterRoutePlanningOverviewAnimated: Presenting route planning now with edited direction intent: %d", buf, 0x12u);
        }

        currentViewController4 = [(ActionCoordinator *)self currentViewController];
        routeSearchVC = self->_routeSearchVC;

        if (currentViewController4 == routeSearchVC)
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

          containerViewController3 = [(ActionCoordinator *)self containerViewController];
          containerViewController4 = [(ActionCoordinator *)self containerViewController];
          currentViewController5 = [containerViewController4 currentViewController];
          [containerViewController3 popLastViewControllerFromViewController:currentViewController5 animated:v72 useDefaultContaineeLayout:0];
        }

        defaultTransportTypeFinder = objc_loadWeakRetained(&self->_containerViewController);
        if (sub_10000FA08(defaultTransportTypeFinder) == 5 && ![routePlanningDataCoordinator desiredTransportType])
        {
          requestState = [routePlanningDataCoordinator requestState];

          if (requestState)
          {
            goto LABEL_54;
          }

          containerViewController5 = [(ActionCoordinator *)self containerViewController];
          chromeViewController = [containerViewController5 chromeViewController];
          defaultTransportTypeFinder = [chromeViewController defaultTransportTypeFinder];

          v67 = [defaultTransportTypeFinder geoIdealTransportTypeForOrigin:0 destination:kCLLocationCoordinate2DInvalid.latitude ignoreMapType:{kCLLocationCoordinate2DInvalid.longitude, kCLLocationCoordinate2DInvalid.latitude, kCLLocationCoordinate2DInvalid.longitude}] - 1;
          if (v67 > 5)
          {
            v68 = 1;
          }

          else
          {
            v68 = qword_101216278[v67];
          }

          [routePlanningDataCoordinator updateTransportType:v68];
        }

LABEL_54:
        v60 = objc_loadWeakRetained(&self->_containerViewController);
        [v60 presentController:routePlanningOverviewViewController animated:v72 useDefaultContaineeLayout:1 completion:completionCopy];

LABEL_58:
LABEL_59:

        goto LABEL_60;
      }

      v63 = sub_100798A3C();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
      {
        *buf = 134349056;
        selfCopy7 = self;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_INFO, "[%{public}p] _enterRoutePlanningOverviewAnimated, deleting selection state", buf, 0xCu);
      }

      mapSelectionManager = self->_routePlanningSelectionRestorationState;
      self->_routePlanningSelectionRestorationState = 0;
    }

LABEL_23:

    goto LABEL_24;
  }

  v20 = sub_10006D178();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    selfCopy7 = "[ActionCoordinator _enterRoutePlanningOverviewAnimated:saveMapCamera:completion:]";
    v76 = 2080;
    *v77 = "ActionCoordinator.m";
    *&v77[8] = 1024;
    *v78 = 5353;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
  }

  if (sub_100E03634())
  {
    routePlanningOverviewViewController = sub_10006D178();
    if (os_log_type_enabled(routePlanningOverviewViewController, OS_LOG_TYPE_ERROR))
    {
      v21 = +[NSThread callStackSymbols];
      *buf = 138412290;
      selfCopy7 = v21;
      _os_log_impl(&_mh_execute_header, routePlanningOverviewViewController, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    goto LABEL_59;
  }

LABEL_60:
}

- (void)routePlanningDataCoordinator:(id)coordinator isEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  coordinatorCopy = coordinator;
  if (self->_routePlanningDataCoordinator)
  {
    if (enabledCopy)
    {
      platformController = [(ActionCoordinator *)self platformController];
      currentSession = [platformController currentSession];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = currentSession;
      }

      else
      {
        v9 = 0;
      }

      currentViewController = v9;

      directionItemForCurrentSession = [coordinatorCopy directionItemForCurrentSession];
      if (![self->_currentDirectionItem isEquivalentAsWaypointToDirectionItem:directionItemForCurrentSession])
      {
        objc_storeStrong(&self->_currentDirectionItem, directionItemForCurrentSession);
      }

      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_10090F6D4;
      v31[3] = &unk_101661B18;
      v31[4] = self;
      v12 = objc_retainBlock(v31);
      if (currentViewController)
      {
        configuration = [currentViewController configuration];
        shouldRestoreCamera = [configuration shouldRestoreCamera];
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_10090F784;
        v29[3] = &unk_10165F438;
        v15 = &v30;
        v30 = v12;
        v16 = v12;
        [(ActionCoordinator *)self _enterRoutePlanningOverviewAnimated:1 saveMapCamera:shouldRestoreCamera completion:v29];
      }

      else
      {
        platformController2 = [(ActionCoordinator *)self platformController];
        currentSession2 = [platformController2 currentSession];
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
      currentViewController = [(ActionCoordinator *)self currentViewController];
      [(ActionCoordinator *)self closeRoutePlanningViewController:currentViewController withSender:0];
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
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  chromeViewController = [WeakRetained chromeViewController];
  topMostPresentedViewController = [chromeViewController topMostPresentedViewController];
  routePlanningOverviewViewController = [(ActionCoordinator *)selfCopy routePlanningOverviewViewController];
  LOBYTE(selfCopy) = topMostPresentedViewController == routePlanningOverviewViewController;

  return selfCopy;
}

- (void)handleVenueSearchResultsWithSelectedSearchResult:(id)result searchFieldItem:(id)item browseCategories:(id)categories
{
  resultCopy = result;
  categoriesCopy = categories;
  itemCopy = item;
  venueCardCoordinator = [(ActionCoordinator *)self venueCardCoordinator];
  topViewController = [venueCardCoordinator topViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = topViewController;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  firstObject = [resultCopy firstObject];
  [(VenuesManager *)self->_venuesManager displayFloorForSelectedSearchResult:firstObject];
  venueCategoryItem = [itemCopy venueCategoryItem];

  isAutoCompleteCategory = [venueCategoryItem isAutoCompleteCategory];
  if (isAutoCompleteCategory)
  {
    contentDownloader = [v13 contentDownloader];
    [contentDownloader searchDidReceiveAutoCompleteSubcategories:categoriesCopy];
  }

  contentDownloader2 = [v13 contentDownloader];
  [contentDownloader2 searchDidReceiveResults:resultCopy];
}

- (void)receivedVenueEVChargersUpdate:(id)update
{
  updateCopy = update;
  venueCardCoordinator = [(ActionCoordinator *)self venueCardCoordinator];
  topViewController = [venueCardCoordinator topViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = topViewController;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    contentDownloader = [v7 contentDownloader];

    if (contentDownloader)
    {
      contentDownloader2 = [v7 contentDownloader];
      [contentDownloader2 searchDidReceiveEVChargerUpdates:updateCopy];
    }
  }
}

- (void)updateSearchFieldWithSearchFieldItem:(id)item
{
  itemCopy = item;
  searchModeViewController = [(ActionCoordinator *)self searchModeViewController];
  [searchModeViewController updateSearchFieldWithItem:itemCopy];

  [(SearchViewController *)self->_searchCardViewController updateSearchFieldWithItem:itemCopy];
}

- (void)retainSearchQueryForSelectedSearchResult:(id)result
{
  resultCopy = result;
  searchModeViewController = [(ActionCoordinator *)self searchModeViewController];
  [searchModeViewController retainSearchQueryForSelectedSearchResult:resultCopy];
}

- (void)presentLPRWithVehicle:(id)vehicle scenario:(int64_t)scenario presenter:(id)presenter completionBlock:(id)block
{
  vehicleCopy = vehicle;
  presenterCopy = presenter;
  blockCopy = block;
  v12 = objc_alloc_init(LPRFlowController);
  lprOnboardingController = self->_lprOnboardingController;
  self->_lprOnboardingController = v12;

  v14 = self->_lprOnboardingController;
  if (presenterCopy)
  {
    [(LPRFlowController *)self->_lprOnboardingController presentLPRFlowWithVehicle:vehicleCopy scenario:scenario presenter:presenterCopy completionBlock:blockCopy];
  }

  else
  {
    containerViewController = [(ActionCoordinator *)self containerViewController];
    [(LPRFlowController *)v14 presentLPRFlowWithVehicle:vehicleCopy scenario:scenario presenter:containerViewController completionBlock:blockCopy];
  }
}

- (void)updateResultsViewContent
{
  resultsViewController = [(ActionCoordinator *)self resultsViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    resultsViewController2 = [(ActionCoordinator *)self resultsViewController];
    currentSearchSession = [(ActionCoordinator *)self currentSearchSession];
    [resultsViewController2 updateSearchSession:currentSearchSession];
  }
}

- (void)updateFloatingControlsWithSearchSession:(id)session
{
  sessionCopy = session;
  containerViewController = [(ActionCoordinator *)self containerViewController];
  floatingControlsPresentationController = [containerViewController floatingControlsPresentationController];
  [floatingControlsPresentationController setSearchSession:sessionCopy];
}

- (void)searchSessionManagerSessionDidFail
{
  [(ActionCoordinator *)self updateResultsViewContent];
  [(ActionCoordinator *)self updateRedoSearchFloatingControl:1];
  venueCardCoordinator = [(ActionCoordinator *)self venueCardCoordinator];
  topViewController = [venueCardCoordinator topViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = topViewController;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  contentDownloader = [v6 contentDownloader];

  [contentDownloader searchDidFail];
}

- (void)searchSessionManagerSessionDidInvalidate
{
  venueCardCoordinator = [(ActionCoordinator *)self venueCardCoordinator];
  topViewController = [venueCardCoordinator topViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = topViewController;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  contentDownloader = [v6 contentDownloader];

  [contentDownloader searchDidCancel];
  currentViewController = [(ActionCoordinator *)self currentViewController];
  resultsViewController = [(ActionCoordinator *)self resultsViewController];
  if (currentViewController == resultsViewController)
  {

LABEL_9:
    presentingViewController = [self->_addStopResultsViewController presentingViewController];

    if (presentingViewController)
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
    currentViewController2 = [(ActionCoordinator *)self currentViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      return;
    }

    goto LABEL_9;
  }
}

- (void)searchSessionManagerReceiveEVChargersUpdate:(id)update
{
  updateCopy = update;
  resultsViewController = [(ActionCoordinator *)self resultsViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    resultsViewController2 = [(ActionCoordinator *)self resultsViewController];
    [resultsViewController2 refreshEVChargers:updateCopy];
  }
}

- (BOOL)searchSessionShouldUpdateEVChargers
{
  containerViewController = [(ActionCoordinator *)self containerViewController];
  topMostPresentedViewController = [containerViewController topMostPresentedViewController];
  resultsViewController = [(ActionCoordinator *)self resultsViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)searchSessionManagerSessionDidReceiveUpdate
{
  [(ActionCoordinator *)self updateResultsViewContent];
  appCoordinator = [(ActionCoordinator *)self appCoordinator];
  [appCoordinator setNeedsUserActivityUpdate];

  [(ActionCoordinator *)self updateRedoSearchFloatingControl:0];
}

- (void)showAnnouncementForFlyover:(id)flyover
{
  flyoverCopy = flyover;
  if (flyoverCopy)
  {
    objc_initWeak(&location, self);
    v5 = [TopBannerItem alloc];
    v6 = [NSAttributedString alloc];
    announcement = [flyoverCopy announcement];
    v8 = announcement;
    if (announcement)
    {
      v9 = announcement;
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
    v13 = [(TopBannerItem *)v5 initWithType:1 layout:0 userInfo:flyoverCopy attributedString:v10 icon:0 buttonText:v12 buttonAction:v16];

    v19 = v13;
    v14 = [NSArray arrayWithObjects:&v19 count:1];
    containerViewController = [(ActionCoordinator *)self containerViewController];
    [containerViewController updateTopBannerViewWithTopBannerItems:v14];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

- (void)updateRedoSearchFloatingControl:(BOOL)control
{
  resultsViewController = [(ActionCoordinator *)self resultsViewController];
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

  containerViewController = [(ActionCoordinator *)self containerViewController];
  chromeViewController = [containerViewController chromeViewController];
  redoSearchOverlay = [chromeViewController redoSearchOverlay];

  searchModeViewController = [(ActionCoordinator *)self searchModeViewController];
  [searchModeViewController didUpdateSearchResults];

  currentSearchSession = [(ActionCoordinator *)self currentSearchSession];
  searchInfo = [currentSearchSession searchInfo];
  results = [searchInfo results];
  v14 = [results count];

  v15 = objc_loadWeakRetained(&self->_containerViewController);
  if (sub_10000FA08(v15) != 5)
  {

LABEL_9:
    v16 = 1;
    [redoSearchOverlay shouldHideFloatingControl:1 animated:1];
    goto LABEL_10;
  }

  v16 = 2;
  if (!control)
  {
    v17 = redoSearchOverlay;
    if (!v14)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

LABEL_10:
  v17 = redoSearchOverlay;
LABEL_11:
  [v17 updateSearchOverlayWithState:v16];
}

- (void)actionControlDidDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    containerViewController = [(ActionCoordinator *)self containerViewController];
    currentViewController = [containerViewController currentViewController];
    objc_opt_class();
    v8 = objc_opt_isKindOfClass();

    if (v8)
    {
      lineCardVC = [(ActionCoordinator *)self lineCardVC];
      [(ActionCoordinator *)self viewControllerClosed:lineCardVC animated:1];
    }

    lineCardVC2 = [(ActionCoordinator *)self lineCardVC];
    [lineCardVC2 resetNearestStation];
  }
}

- (void)zoomOut
{
  mapView = [(ActionCoordinator *)self mapView];
  [mapView startLinearZoomIn:0];

  mapView2 = [(ActionCoordinator *)self mapView];
  [NSObject cancelPreviousPerformRequestsWithTarget:mapView2 selector:"stopZoomingWithInertia" object:0];

  mapView3 = [(ActionCoordinator *)self mapView];
  [mapView3 performSelector:"stopZoomingWithInertia" withObject:0 afterDelay:0.3];
}

- (void)zoomIn
{
  mapView = [(ActionCoordinator *)self mapView];
  [mapView startLinearZoomIn:1];

  mapView2 = [(ActionCoordinator *)self mapView];
  [NSObject cancelPreviousPerformRequestsWithTarget:mapView2 selector:"stopZoomingWithInertia" object:0];

  mapView3 = [(ActionCoordinator *)self mapView];
  [mapView3 performSelector:"stopZoomingWithInertia" withObject:0 afterDelay:0.3];
}

- (void)defaultZoom
{
  mapView = [(ActionCoordinator *)self mapView];
  [mapView centerCoordinate];
  v5 = v4;
  v7 = v6;

  mapView2 = [(ActionCoordinator *)self mapView];
  [mapView2 setCenterCoordinate:1 zoomLevel:v5 animated:{v7, 16.0}];
}

- (BOOL)shouldShowSearchOverlay
{
  v3 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v3 userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    if (MapsFeature_IsEnabled_SearchAndDiscovery())
    {
      currentSearchSession = [(ActionCoordinator *)self currentSearchSession];
      searchInfo = [currentSearchSession searchInfo];

      currentViewController = [(ActionCoordinator *)self currentViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      searchRedoButtonThreshold = [searchInfo searchRedoButtonThreshold];
      if (searchRedoButtonThreshold && ([searchInfo shouldAllowManualRedoButton] & 1) != 0)
      {
        v10 = 1;
      }

      else if ([searchInfo canRedoSearch])
      {
        searchAutoRedoThreshold = [searchInfo searchAutoRedoThreshold];
        v10 = searchAutoRedoThreshold != 0;
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
        currentViewController2 = [(ActionCoordinator *)self currentViewController];
        v24 = 138412546;
        v25 = v22;
        v26 = 2112;
        v27 = currentViewController2;
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

  currentViewController3 = [(ActionCoordinator *)self currentViewController];
  objc_opt_class();
  v12 = objc_opt_isKindOfClass();

  currentViewController4 = [(ActionCoordinator *)self currentViewController];
  v14 = currentViewController4;
  if (v12)
  {
LABEL_11:
    shouldShowSearchOverlay = [currentViewController4 shouldShowSearchOverlay];

    return shouldShowSearchOverlay;
  }

  objc_opt_class();
  v16 = objc_opt_isKindOfClass();

  if (v16)
  {
    currentViewController4 = [(ActionCoordinator *)self currentViewController];
    v14 = currentViewController4;
    goto LABEL_11;
  }

  v15 = 0;
  return v15 & 1;
}

- (void)refreshCurrentSearch
{
  appCoordinator = [(ActionCoordinator *)self appCoordinator];
  chromeViewController = [appCoordinator chromeViewController];
  topContext = [chromeViewController topContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return;
  }

  v7 = sub_100067540();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    currentViewController = [(ActionCoordinator *)self currentViewController];
    v25 = 138412290;
    v26 = currentViewController;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[ActionCoordinator] Refreshing current search. CurrentVC: %@", &v25, 0xCu);
  }

  resultsViewController = [(ActionCoordinator *)self resultsViewController];
  objc_opt_class();
  v10 = objc_opt_isKindOfClass();

  if ((v10 & 1) == 0)
  {
    resultsViewController2 = [(ActionCoordinator *)self resultsViewController];
    objc_opt_class();
    v21 = objc_opt_isKindOfClass();

    if ((v21 & 1) == 0)
    {
      v23 = sub_100067540();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        currentViewController2 = [(ActionCoordinator *)self currentViewController];
        v25 = 138412290;
        v26 = currentViewController2;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "[ActionCoordinator] Unable to refresh current search. CurrentVC: %@", &v25, 0xCu);
      }

      goto LABEL_17;
    }

    goto LABEL_11;
  }

  if (!MapsFeature_IsEnabled_SearchAndDiscovery())
  {
LABEL_11:
    resultsViewController3 = [(ActionCoordinator *)self resultsViewController];
LABEL_16:
    v23 = resultsViewController3;
    [resultsViewController3 refreshCurrentSearch];
LABEL_17:

    return;
  }

  containerViewController = [(ActionCoordinator *)self containerViewController];
  chromeViewController2 = [containerViewController chromeViewController];
  [chromeViewController2 setNeedsUpdateComponent:@"floatingSearchButton" animated:1];

  currentViewController3 = [(ActionCoordinator *)self currentViewController];
  searchModeViewController = [(ActionCoordinator *)self searchModeViewController];
  v15 = searchModeViewController;
  if (currentViewController3 == searchModeViewController)
  {

LABEL_15:
    resultsViewController3 = [(ActionCoordinator *)self currentViewController];
    goto LABEL_16;
  }

  currentViewController4 = [(ActionCoordinator *)self currentViewController];
  searchCardViewController = self->_searchCardViewController;

  if (currentViewController4 == searchCardViewController)
  {
    goto LABEL_15;
  }

  currentViewController5 = [(ActionCoordinator *)self currentViewController];
  resultsViewController4 = [(ActionCoordinator *)self resultsViewController];

  if (currentViewController5 == resultsViewController4)
  {
    goto LABEL_15;
  }
}

- (void)updateMapApplicationState:(int)state
{
  v3 = *&state;
  containerViewController = [(ActionCoordinator *)self containerViewController];
  chromeViewController = [containerViewController chromeViewController];
  mapView = [chromeViewController mapView];
  [mapView _setApplicationState:v3];
}

- (int)mapApplicationState
{
  containerViewController = [(ActionCoordinator *)self containerViewController];
  chromeViewController = [containerViewController chromeViewController];
  mapView = [chromeViewController mapView];
  _applicationState = [mapView _applicationState];

  return _applicationState;
}

- (void)displayAlertWithTitle:(id)title message:(id)message postAlertSearchType:(unsigned int)type
{
  v5 = *&type;
  messageCopy = message;
  titleCopy = title;
  containerViewController = [(ActionCoordinator *)self containerViewController];
  chromeViewController = [containerViewController chromeViewController];
  interruptionManager = [chromeViewController interruptionManager];
  [interruptionManager displayAlertWithTitle:titleCopy message:messageCopy postAlertSearchType:v5];
}

- (void)setUserTrackingViewUserTrackingMode:(int64_t)mode
{
  mapView = [(ActionCoordinator *)self mapView];
  [mapView setUserTrackingMode:mode];
}

- (void)chromeViewController:(id)controller didUpdateViewMode:(int64_t)mode
{
  controllerCopy = controller;
  containerViewController = [(ActionCoordinator *)self containerViewController];
  chromeViewController = [containerViewController chromeViewController];

  if (chromeViewController == controllerCopy)
  {
    if (![(ActionCoordinator *)self isRoutePlanningPresented]|| !self->_routePlanningDataCoordinator)
    {
      lineSelectionAction = [(ActionCoordinator *)self lineSelectionAction];
      isActive = [lineSelectionAction isActive];

      if (mode != 3 && isActive)
      {
        lineSelectionAction2 = [(ActionCoordinator *)self lineSelectionAction];
        [lineSelectionAction2 deactivateWithContext:0];
      }

      goto LABEL_48;
    }

    routePlanningDataCoordinator = [(ActionCoordinator *)self routePlanningDataCoordinator];
    transportType = [routePlanningDataCoordinator transportType];
    if (!transportType)
    {
      goto LABEL_45;
    }

    v11 = transportType;
    if (mode <= 7)
    {
      if (((1 << mode) & 0x67) != 0)
      {
        if (transportType == 3)
        {
          if (mode == 3)
          {
            goto LABEL_24;
          }

LABEL_19:
          v15 = sub_100798408();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            if (mode < 8 && ((0xEFu >> mode) & 1) != 0)
            {
              mode = *(&off_10162EDE8 + mode);
            }

            else
            {
              mode = [NSString stringWithFormat:@"<Unknown: %ld>", mode];
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
            v37 = mode;
            v38 = 2114;
            v39 = v21;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "view mode %{public}@ isn't supported by transport type %{public}@; will attempt to replace the transport type", buf, 0x16u);
          }

          containerViewController2 = [(ActionCoordinator *)self containerViewController];
          chromeViewController2 = [containerViewController2 chromeViewController];
          defaultTransportTypeFinder = [chromeViewController2 defaultTransportTypeFinder];

          objc_initWeak(buf, self);
          currentDirectionItem = self->_currentDirectionItem;
          v33[0] = _NSConcreteStackBlock;
          v33[1] = 3221225472;
          v33[2] = sub_1009113EC;
          v33[3] = &unk_10162EB60;
          objc_copyWeak(v35, buf);
          v35[1] = mode;
          v34 = routePlanningDataCoordinator;
          [defaultTransportTypeFinder transportTypeForDirectionItem:currentDirectionItem ignoreMapType:0 completion:v33];

          objc_destroyWeak(v35);
          objc_destroyWeak(buf);
        }

LABEL_45:
        settingsController = [(ActionCoordinator *)self settingsController];
        userRequestingViewModeChange = [settingsController userRequestingViewModeChange];

        if (userRequestingViewModeChange)
        {
          [(RoutePlanningMapController *)self->_routePlanningMapController saveOriginalMapViewModeAs:mode];
        }

LABEL_48:
        placeCardViewController = [(ActionCoordinator *)self placeCardViewController];
        [placeCardViewController updateForViewMode:mode];

        goto LABEL_49;
      }

      if (mode == 3)
      {
        if (transportType == 3)
        {
          goto LABEL_45;
        }

LABEL_24:
        if (mode == 3)
        {
          v17 = 3;
        }

        else
        {
          v17 = 1;
        }

        if (mode == -1)
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
          if ((0x1DFu >> (mode + 1)))
          {
            mode2 = *(&off_10162EE28 + mode + 1);
          }

          else
          {
            mode2 = [NSString stringWithFormat:@"<Unknown: %ld>", mode];
          }

          v22 = mode2;
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
        [routePlanningDataCoordinator updateTransportType:v18];
        goto LABEL_45;
      }

      if (mode == 7)
      {
        if (transportType == 1 || transportType == 4)
        {
          goto LABEL_45;
        }

        goto LABEL_24;
      }
    }

    if (mode != -1)
    {
      goto LABEL_19;
    }

    goto LABEL_24;
  }

LABEL_49:
}

- (void)updateViewMode:(int64_t)mode animated:(BOOL)animated
{
  animatedCopy = animated;
  containerViewController = [(ActionCoordinator *)self containerViewController];
  chromeViewController = [containerViewController chromeViewController];
  [chromeViewController updateViewMode:mode animated:animatedCopy preserveMapSelection:1];
}

- (void)setViewMode:(int64_t)mode animated:(BOOL)animated
{
  animatedCopy = animated;
  settingsController = [(ActionCoordinator *)self settingsController];
  v8 = [settingsController bestMapViewModeForViewMode:mode];

  settingsController2 = [(ActionCoordinator *)self settingsController];
  [settingsController2 setMapViewMode:v8 animated:animatedCopy];
}

- (int64_t)displayedViewMode
{
  containerViewController = [(ActionCoordinator *)self containerViewController];
  chromeViewController = [containerViewController chromeViewController];
  displayedViewMode = [chromeViewController displayedViewMode];

  return displayedViewMode;
}

- (void)select3dMode
{
  mapView = [(ActionCoordinator *)self mapView];
  _isPitched = [mapView _isPitched];

  if (!_isPitched)
  {
    if (!+[SettingsController deviceSupportsGlobe])
    {
      displayedViewMode = [(ActionCoordinator *)self displayedViewMode];
      if (displayedViewMode == 1)
      {
        v6 = 5;
        goto LABEL_10;
      }

      if (displayedViewMode == 2)
      {
        v6 = 6;
LABEL_10:
        settingsController = [(ActionCoordinator *)self settingsController];
        [settingsController setMapViewMode:v6 animated:0];
      }
    }

    v8 = +[MKMapService sharedService];
    [v8 captureUserAction:5009 onTarget:-[ActionCoordinator currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];

    mapView2 = [(ActionCoordinator *)self mapView];
    [mapView2 _enter3DMode];

    self->_is3dModeSelected = 1;
    return;
  }

  [(ActionCoordinator *)self exit3dMode];
}

- (void)exit3dMode
{
  *&self->_is3dModeSelected = 256;
  mapView = [(ActionCoordinator *)self mapView];
  [mapView _exit3DMode];

  if (!+[SettingsController deviceSupportsGlobe])
  {
    settingsController = [(ActionCoordinator *)self settingsController];
    in3DMode = [settingsController in3DMode];

    displayedViewMode = [(ActionCoordinator *)self displayedViewMode];
    if (displayedViewMode != 5 || in3DMode)
    {
      if ((displayedViewMode != 6) | in3DMode & 1)
      {
        goto LABEL_8;
      }

      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    settingsController2 = [(ActionCoordinator *)self settingsController];
    [settingsController2 setMapViewMode:v7 animated:0];
  }

LABEL_8:
  v9 = +[MKMapService sharedService];
  [v9 captureUserAction:5010 onTarget:-[ActionCoordinator currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];

  containerViewController = [(ActionCoordinator *)self containerViewController];
  [containerViewController refreshControls];
}

- (void)productViewController:(id)controller didFinishWithResult:(int64_t)result
{
  controllerCopy = controller;
  containerViewController = [(ActionCoordinator *)self containerViewController];
  traitCollection = [containerViewController traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    presentingViewController = [controllerCopy presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    [controllerCopy dismissViewControllerAnimated:1 completion:0];
  }

  clientIdentifier = [controllerCopy clientIdentifier];

  v12 = [clientIdentifier isEqualToString:@"RidesharingStoreProductClientIdentifier"];
  if (result == 4 && v12)
  {
    routePlanningDataCoordinator = [(ActionCoordinator *)self routePlanningDataCoordinator];
    rideOptionStateObserver = [routePlanningDataCoordinator rideOptionStateObserver];
    analyticsBookingSession = [rideOptionStateObserver analyticsBookingSession];
    [analyticsBookingSession setInstalledApp:1];
  }
}

- (void)containeeViewController:(id)controller didCreateKeyboardProxy:(id)proxy
{
  proxyCopy = proxy;
  searchModeViewController = [(ActionCoordinator *)self searchModeViewController];
  [searchModeViewController keyboardProxyViewCreated:proxyCopy];
}

- (void)confirmDeleteSharedTripWithSummary:(id)summary sourceView:(id)view sourceRect:(CGRect)rect completion:(id)completion
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  completionCopy = completion;
  summaryCopy = summary;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  traitCollection = [WeakRetained traitCollection];
  v17 = +[UIAlertController _maps_confirmationAlertControllerForBlockingTripInSummary:userInterfaceIdiom:completion:](UIAlertController, "_maps_confirmationAlertControllerForBlockingTripInSummary:userInterfaceIdiom:completion:", summaryCopy, [traitCollection userInterfaceIdiom], completionCopy);

  if (viewCopy)
  {
    popoverPresentationController = [v17 popoverPresentationController];
    [popoverPresentationController setSourceView:viewCopy];

    popoverPresentationController2 = [v17 popoverPresentationController];
    [popoverPresentationController2 setSourceRect:{x, y, width, height}];
  }

  v20 = objc_loadWeakRetained(&self->_containerViewController);
  [v20 _maps_topMostPresentViewController:v17 animated:1 completion:0];
}

- (void)confirmDeleteCollections:(id)collections sourceItem:(id)item sourceRect:(CGRect)rect completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  collectionsCopy = collections;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  traitCollection = [WeakRetained traitCollection];
  v13 = +[UIAlertController _maps_confirmationAlertControllerForDeletingCollections:userInterfaceIdiom:completion:](UIAlertController, "_maps_confirmationAlertControllerForDeletingCollections:userInterfaceIdiom:completion:", collectionsCopy, [traitCollection userInterfaceIdiom], completionCopy);

  if (itemCopy)
  {
    popoverPresentationController = [v13 popoverPresentationController];
    [popoverPresentationController setSourceItem:itemCopy];
  }

  v15 = objc_loadWeakRetained(&self->_containerViewController);
  [v15 _maps_topMostPresentViewController:v13 animated:1 completion:0];
}

- (void)deleteMarkedLocation:(id)location
{
  searchPinsManager = [(ActionCoordinator *)self searchPinsManager];
  [searchPinsManager clearDroppedPin];

  v4 = +[CustomSearchManager sharedManager];
  [v4 setCustomSearchResult:0 animated:1 shouldSelectOnMap:0 context:@"__internal_MapsDroppedPinContextSwipe"];
}

- (void)presentAutosharingContactSearchWithContacts:(id)contacts selectionHandler:(id)handler
{
  contactsCopy = contacts;
  handlerCopy = handler;
  if ([(ActionCoordinator *)self isRoutePlanningPresented])
  {
    v7 = [[ContactSearchViewController alloc] initWithInitialContacts:contactsCopy selectionHandler:handlerCopy];
    cardPresentationController = [(ContaineeViewController *)v7 cardPresentationController];
    [cardPresentationController setPresentedModally:1];

    [(ContaineeViewController *)v7 setContaineeDelegate:self];
    containerViewController = [(ActionCoordinator *)self containerViewController];
    [containerViewController presentController:v7 animated:1];
  }
}

- (void)closeStopDetail
{
  containerViewController = [(ActionCoordinator *)self containerViewController];
  currentViewController = [containerViewController currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    containerViewController2 = [(ActionCoordinator *)self containerViewController];
    [containerViewController2 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)closeSharedTripDetail
{
  containerViewController = [(ActionCoordinator *)self containerViewController];
  [containerViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)didSelectStopWithMapItem:(id)item
{
  itemCopy = item;
  v5 = [[PlaceCardItem alloc] initWithMapItem:itemCopy];
  containerViewController = [(ActionCoordinator *)self containerViewController];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100912090;
  v9[3] = &unk_101661A40;
  v9[4] = self;
  v10 = itemCopy;
  v11 = v5;
  v7 = v5;
  v8 = itemCopy;
  [containerViewController dismissViewControllerAnimated:1 completion:v9];
}

- (void)didRequestDirectionsForSharedTrip:(id)trip
{
  destinationWaypointMapItem = [trip destinationWaypointMapItem];
  v4 = [MKMapItem _itemWithGeoMapItem:destinationWaypointMapItem];
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
  chromeViewController = [WeakRetained chromeViewController];
  view = [chromeViewController view];
  isUserInteractionEnabled = [view isUserInteractionEnabled];

  if (isUserInteractionEnabled)
  {
    v7 = objc_loadWeakRetained(&self->_containerViewController);
    chromeViewController2 = [v7 chromeViewController];
    view2 = [chromeViewController2 view];
    [view2 setUserInteractionEnabled:0];

    v12 = objc_loadWeakRetained(&self->_containerViewController);
    chromeViewController3 = [v12 chromeViewController];
    view3 = [chromeViewController3 view];
    [view3 setUserInteractionEnabled:1];
  }
}

- (void)exitLookAround
{
  appCoordinator = [(ActionCoordinator *)self appCoordinator];
  [appCoordinator exitLookAround];
}

- (void)enterLookAroundWithEntryPoint:(id)point lookAroundView:(id)view showsFullScreen:(BOOL)screen originFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  screenCopy = screen;
  viewCopy = view;
  pointCopy = point;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  chromeViewController = [WeakRetained chromeViewController];
  v17 = objc_loadWeakRetained(&self->_containerViewController);
  chromeContext = [v17 chromeContext];
  v19 = [chromeViewController isTopContext:chromeContext];

  if (v19)
  {
    [(ActionCoordinator *)self _cancelUserInteractions];
  }

  appCoordinator = [(ActionCoordinator *)self appCoordinator];
  [appCoordinator enterLookAroundWithEntryPoint:pointCopy lookAroundView:viewCopy showsFullScreen:screenCopy originFrame:{x, y, width, height}];
}

- (BOOL)shouldDismissPlaceCardOnClearMapSelection
{
  containerViewController = [(ActionCoordinator *)self containerViewController];
  chromeViewController = [containerViewController chromeViewController];
  topContext = [chromeViewController topContext];

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

- (void)dismissPlaceCardViewController:(id)controller
{
  if (self->_placeCardViewController == controller)
  {
    controllerCopy = controller;
    containerViewController = [(ActionCoordinator *)self containerViewController];
    [containerViewController popLastViewControllerFromViewController:controllerCopy animated:1 useDefaultContaineeLayout:0];

    placeCardViewController = self->_placeCardViewController;
    self->_placeCardViewController = 0;
  }
}

- (BOOL)shouldReusePlaceCardViewController:(id)controller
{
  controllerCopy = controller;
  presentingViewController = [controllerCopy presentingViewController];

  currentViewController = [(ActionCoordinator *)self currentViewController];

  return currentViewController == controllerCopy || presentingViewController == 0;
}

- (void)dismissLastVenuePlaceCard
{
  venueCardCoordinator = [(ActionCoordinator *)self venueCardCoordinator];
  topViewController = [venueCardCoordinator topViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mapSelectionManager = [(ActionCoordinator *)self mapSelectionManager];
    [mapSelectionManager clearSelection];

    containerViewController = [(ActionCoordinator *)self containerViewController];
    [containerViewController removeControllerFromStack:topViewController];

    venueCardCoordinator2 = [(ActionCoordinator *)self venueCardCoordinator];
    [venueCardCoordinator2 popVenueCardItem:0];
  }
}

- (void)closeVenueFloorCardViewController:(id)controller
{
  controllerCopy = controller;
  containerViewController = [(ActionCoordinator *)self containerViewController];
  currentViewController = [containerViewController currentViewController];

  containerViewController2 = [(ActionCoordinator *)self containerViewController];
  if (currentViewController == controllerCopy)
  {
    [containerViewController2 popLastViewControllerFromViewController:controllerCopy animated:1 useDefaultContaineeLayout:0];
  }

  else
  {
    [containerViewController2 removeControllerFromStack:controllerCopy];
  }
}

- (void)viewController:(id)controller presentVenueFloorCardViewController:(id)viewController
{
  viewControllerCopy = viewController;
  containerViewController = [(ActionCoordinator *)self containerViewController];
  [containerViewController presentController:viewControllerCopy animated:1];
}

- (void)closeVenueViewController:(id)controller
{
  controllerCopy = controller;
  venueCardCoordinator = [(ActionCoordinator *)self venueCardCoordinator];
  topViewController = [venueCardCoordinator topViewController];

  if (topViewController == controllerCopy)
  {
    containerViewController = [(ActionCoordinator *)self containerViewController];
    chromeViewController = [containerViewController chromeViewController];
    [chromeViewController setNeedsUpdateComponent:@"lookAroundButton" animated:1];

    mapSelectionManager = [(ActionCoordinator *)self mapSelectionManager];
    [mapSelectionManager clearSelection];

    searchPinsManager = [(ActionCoordinator *)self searchPinsManager];
    [searchPinsManager clearLinkedPlacesAndPolygon];

    venueCardCoordinator2 = [(ActionCoordinator *)self venueCardCoordinator];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100912988;
    v12[3] = &unk_10162EB18;
    v12[4] = self;
    v13 = controllerCopy;
    [venueCardCoordinator2 popVenueCardItem:v12];
  }
}

- (void)viewController:(id)controller presentVenuesClusteredSearchResult:(id)result
{
  resultCopy = result;
  venueCardCoordinator = [(ActionCoordinator *)self venueCardCoordinator];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100912D74;
  v8[3] = &unk_10162EB18;
  v8[4] = self;
  v9 = resultCopy;
  v7 = resultCopy;
  [venueCardCoordinator popVenueCardItem:v8];
}

- (void)viewController:(id)controller selectVenueSearchResult:(id)result source:(unint64_t)source
{
  controllerCopy = controller;
  resultCopy = result;
  currentSearchSession = [(ActionCoordinator *)self currentSearchSession];
  currentResultsSearchInfo = [currentSearchSession currentResultsSearchInfo];
  shouldInjectSearchResults = [currentResultsSearchInfo shouldInjectSearchResults];

  if (shouldInjectSearchResults)
  {
    searchPinsManager = [(ActionCoordinator *)self searchPinsManager];
    [searchPinsManager selectAndShowSearchResult:resultCopy animated:1];
  }

  else
  {
    [(ActionCoordinator *)self viewController:controllerCopy selectSearchResult:resultCopy addToHistory:1 source:source saveSelectionState:1];
    searchPinsManager = [(ActionCoordinator *)self searchPinsManager];
    v15 = resultCopy;
    v14 = [NSArray arrayWithObjects:&v15 count:1];
    [searchPinsManager setSearchPins:v14 selectedPin:resultCopy animated:1];
  }
}

- (void)viewController:(id)controller presentPlacesWithPlacesCardItem:(id)item source:(unint64_t)source
{
  itemCopy = item;
  mapSelectionManager = [(ActionCoordinator *)self mapSelectionManager];
  [mapSelectionManager clearSelection];

  searchPinsManager = [(ActionCoordinator *)self searchPinsManager];
  [searchPinsManager clearLinkedPlacesAndPolygon];

  v9 = [PlaceCategoryItem alloc];
  searchCategory = [itemCopy searchCategory];
  mapItem = [itemCopy mapItem];
  _muid = [mapItem _muid];
  searchCategory2 = [itemCopy searchCategory];

  v15 = -[PlaceCategoryItem initWithSearchCategory:parentMuid:displayMode:](v9, "initWithSearchCategory:parentMuid:displayMode:", searchCategory, _muid, [searchCategory2 displayMode]);
  v14 = [SearchFieldItem searchFieldItemWithObject:v15];
  [(ActionCoordinator *)self viewController:0 doSearchItem:v14 withUserInfo:0];
}

- (void)viewController:(id)controller presentVenueWithVenueCardItem:(id)item source:(unint64_t)source
{
  itemCopy = item;
  if ([itemCopy isVenueItem])
  {
    venueCardCoordinator = [(ActionCoordinator *)self venueCardCoordinator];
    [venueCardCoordinator pushVenueCardItem:itemCopy source:source];

    mapSelectionManager = [(ActionCoordinator *)self mapSelectionManager];
    [mapSelectionManager clearSelection];

    searchPinsManager = [(ActionCoordinator *)self searchPinsManager];
    [searchPinsManager clearLinkedPlacesAndPolygon];

    venueCardCoordinator2 = [(ActionCoordinator *)self venueCardCoordinator];
    v11 = [venueCardCoordinator2 viewControllerForCardItem:itemCopy];

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

- (void)viewController:(id)controller presentVenueForMapItem:(id)item searchCategory:(id)category source:(unint64_t)source
{
  categoryCopy = category;
  itemCopy = item;
  controllerCopy = controller;
  v13 = [[VenueSearchCardItem alloc] initWithMapItem:itemCopy searchCategory:categoryCopy];

  [(ActionCoordinator *)self viewController:controllerCopy presentVenueWithVenueCardItem:v13 source:source];
}

- (void)viewController:(id)controller presentVenueFromAutoCompleteWithVenueIdentifier:(id)identifier searchCategory:(id)category source:(unint64_t)source
{
  categoryCopy = category;
  identifierCopy = identifier;
  controllerCopy = controller;
  v13 = [[VenueAutoCompleteSearchCardItem alloc] initWithVenueIdentifier:identifierCopy searchCategory:categoryCopy];

  [(ActionCoordinator *)self viewController:controllerCopy presentVenueWithVenueCardItem:v13 source:source];
}

- (void)viewController:(id)controller dismissMenuControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained popLastViewControllerFromViewController:controllerCopy animated:animatedCopy useDefaultContaineeLayout:0];
}

- (void)viewController:(id)controller presentMenuController:(id)menuController animated:(BOOL)animated fromChrome:(BOOL)chrome completion:(id)completion
{
  chromeCopy = chrome;
  animatedCopy = animated;
  controllerCopy = controller;
  menuControllerCopy = menuController;
  completionCopy = completion;
  chromeViewController = controllerCopy;
  if (chromeCopy)
  {
    containerViewController = [(ActionCoordinator *)self containerViewController];
    chromeViewController = [containerViewController chromeViewController];
  }

  macMenuPresentationController = [menuControllerCopy macMenuPresentationController];
  [macMenuPresentationController setContainerViewController:chromeViewController];

  if (chromeCopy)
  {
  }

  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained presentController:menuControllerCopy animated:animatedCopy completion:completionCopy];
}

- (void)displayIncidentReportSubmissionWithItem:(id)item report:(id)report
{
  reportCopy = report;
  itemCopy = item;
  v9 = [[NavTrafficIncidentReportSubmissionContaineeViewController alloc] initWithItem:itemCopy report:reportCopy];

  [(ContaineeViewController *)v9 setContaineeDelegate:self];
  [(NavTrafficIncidentReportSubmissionContaineeViewController *)v9 setReportingDelegate:self];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained presentController:v9 animated:1 useDefaultContaineeLayout:1];
}

- (void)incidentReportSubmissionContaineeDidFinish:(id)finish
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained popLastViewControllerAnimated:1];
}

- (void)transitSchedulesViewController:(id)controller wantsToShowInfoForLine:(id)line
{
  lineCopy = line;
  controllerCopy = controller;
  containerViewController = [(ActionCoordinator *)self containerViewController];
  v8 = sub_10000FA08(containerViewController) != 5;

  [(ActionCoordinator *)self viewController:controllerCopy selectTransitLineItem:lineCopy zoomToMapRegion:v8];
}

- (void)viewController:(id)controller displayTransitSchedulesForDepartureSequence:(id)sequence withTimeZone:(id)zone scheduleWindowStartDate:(id)date includeAllDirections:(BOOL)directions
{
  directionsCopy = directions;
  dateCopy = date;
  zoneCopy = zone;
  sequenceCopy = sequence;
  v15 = [[TransitSchedulesViewController alloc] initWithDepartureSequence:sequenceCopy timeZone:zoneCopy scheduleWindowStartDate:dateCopy includeAllDirections:directionsCopy];

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
  containerViewController = [(ActionCoordinator *)self containerViewController];
  currentViewController = [containerViewController currentViewController];
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
  containerStyle = [WeakRetained containerStyle];

  if ((containerStyle & 0xFFFFFFFFFFFFFFFDLL) == 4)
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
  containerViewController2 = [(ActionCoordinator *)self containerViewController];
  [containerViewController2 presentController:v14 animated:1];
}

- (void)viewControllerPresentNearbyTransitDepartures:(id)departures
{
  containerViewController = [(ActionCoordinator *)self containerViewController];
  v5 = sub_10000FA08(containerViewController);

  if (v5 != 5 || ([(ActionCoordinator *)self currentViewController], v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v6, (isKindOfClass & 1) == 0))
  {
    v8 = [_TtC4Maps27NearbyTransitViewController alloc];
    containerViewController2 = [(ActionCoordinator *)self containerViewController];
    chromeViewController = [containerViewController2 chromeViewController];
    mapView = [chromeViewController mapView];
    v13 = [(NearbyTransitViewController *)v8 initWithMapView:mapView viewMode:[(ActionCoordinator *)self displayedViewMode]];

    [(ContaineeViewController *)v13 setContaineeDelegate:self];
    [(NearbyTransitViewController *)v13 setNearbyTransitDelegate:self];
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    [WeakRetained presentController:v13 animated:1 useDefaultContaineeLayout:0];
  }
}

- (void)viewController:(id)controller displayTransitSchedulesForMapItem:(id)item departureSequence:(id)sequence
{
  sequenceCopy = sequence;
  itemCopy = item;
  v10 = [[TransitSchedulesViewController alloc] initWithTransitMapItem:itemCopy departureSequence:sequenceCopy];

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

- (BOOL)clusterIsPartOfVenues:(id)venues
{
  venuesCopy = venues;
  venueCardCoordinator = [(ActionCoordinator *)self venueCardCoordinator];
  venueIdForCurrentCardStack = [venueCardCoordinator venueIdForCurrentCardStack];

  v20 = venueIdForCurrentCardStack;
  if (venueIdForCurrentCardStack)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    clusterFeatureAnnotations = [venuesCopy clusterFeatureAnnotations];
    v8 = [clusterFeatureAnnotations countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v19 = venuesCopy;
      v10 = *v22;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(clusterFeatureAnnotations);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          if ([v12 conformsToProtocol:{&OBJC_PROTOCOL___CustomPOIAnnotation, v19}])
          {
            searchResult = [v12 searchResult];
            mapItem = [searchResult mapItem];
            _venueInfo = [mapItem _venueInfo];
            venueIdentifier = [_venueInfo venueIdentifier];
            venueID = [venueIdentifier venueID];

            if (venueID != v20)
            {
              LOBYTE(venueIdForCurrentCardStack) = 0;
              goto LABEL_13;
            }
          }
        }

        v9 = [clusterFeatureAnnotations countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }

      LOBYTE(venueIdForCurrentCardStack) = 1;
LABEL_13:
      venuesCopy = v19;
    }

    else
    {
      LOBYTE(venueIdForCurrentCardStack) = 1;
    }
  }

  return venueIdForCurrentCardStack;
}

- (void)showVLF
{
  containerViewController = [(ActionCoordinator *)self containerViewController];
  currentViewController = [containerViewController currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    containerViewController2 = [(ActionCoordinator *)self containerViewController];
    currentViewController2 = [containerViewController2 currentViewController];
    [currentViewController2 handleVLFPuckTapped];
  }

  else
  {
    objc_initWeak(&location, self);
    containerViewController3 = [(ActionCoordinator *)self containerViewController];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100913EEC;
    v16[3] = &unk_1016619A8;
    objc_copyWeak(&v17, &location);
    v8 = [containerViewController3 showVLFCrowdsourcingPermissionCardWithContaineeDelegate:self delegate:self completion:v16];

    if ((v8 & 1) == 0)
    {
      containerViewController4 = [(ActionCoordinator *)self containerViewController];
      chromeViewController = [containerViewController4 chromeViewController];
      userLocationView = [chromeViewController userLocationView];

      if ([userLocationView isVLFBannerVisible])
      {
        isVLFPuckVisible = 2;
      }

      else
      {
        isVLFPuckVisible = [userLocationView isVLFPuckVisible];
      }

      v13 = [[VLFContaineeViewController alloc] initWithEntryPoint:isVLFPuckVisible];
      [(ContaineeViewController *)v13 setContaineeDelegate:self];
      containerViewController5 = [(ActionCoordinator *)self containerViewController];
      [containerViewController5 presentController:v13];
    }

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

- (void)viewController:(id)controller presentCluster:(id)cluster
{
  clusterCopy = cluster;
  if ([clusterCopy isCluster])
  {
    clusterFeatureAnnotations = [clusterCopy clusterFeatureAnnotations];
    firstObject = [clusterFeatureAnnotations firstObject];

    if ([(ActionCoordinator *)self clusterIsPartOfVenues:clusterCopy])
    {
      simpleListResultsVC6 = [[LabelMarkerVenueCardItem alloc] initWithLabelMarker:clusterCopy];
      venueCardCoordinator = [(ActionCoordinator *)self venueCardCoordinator];
      topViewController = [venueCardCoordinator topViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        venueCardCoordinator2 = [(ActionCoordinator *)self venueCardCoordinator];
        [venueCardCoordinator2 popVenueCardItem:0];
      }

      venueCardCoordinator3 = [(ActionCoordinator *)self venueCardCoordinator];
      [venueCardCoordinator3 pushVenueCardItem:simpleListResultsVC6 source:5];

      venueCardCoordinator4 = [(ActionCoordinator *)self venueCardCoordinator];
      v14 = [venueCardCoordinator4 viewControllerForCardItem:simpleListResultsVC6];

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
      view = [v17 view];
      currentSearchSession = [(ActionCoordinator *)self currentSearchSession];
      searchInfo = [currentSearchSession searchInfo];
      [v17 setCluster:clusterCopy sortAlphabetically:1 originalSearchInfo:searchInfo];

      [(ActionCoordinator *)self presentSimpleList:v17];
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
LABEL_14:

        goto LABEL_15;
      }

      simpleListResultsVC = [(ActionCoordinator *)self simpleListResultsVC];
      cluster = [simpleListResultsVC cluster];

      if (cluster != clusterCopy)
      {
        simpleListResultsVC2 = [(ActionCoordinator *)self simpleListResultsVC];
        [simpleListResultsVC2 clearCluster];
      }

      simpleListResultsVC3 = [(ActionCoordinator *)self simpleListResultsVC];
      [simpleListResultsVC3 setDisplayDistance:1];

      simpleListResultsVC4 = [(ActionCoordinator *)self simpleListResultsVC];
      currentLocation = [(ResultsViewController *)self->_resultsViewController currentLocation];
      [simpleListResultsVC4 updateCurrentLocation:currentLocation isClusterResult:1];

      simpleListResultsVC5 = [(ActionCoordinator *)self simpleListResultsVC];
      currentSearchSession2 = [(ActionCoordinator *)self currentSearchSession];
      searchInfo2 = [currentSearchSession2 searchInfo];
      [simpleListResultsVC5 setCluster:clusterCopy sortAlphabetically:0 originalSearchInfo:searchInfo2];

      simpleListResultsVC6 = [(ActionCoordinator *)self simpleListResultsVC];
      [(ActionCoordinator *)self presentSimpleList:simpleListResultsVC6];
    }

    goto LABEL_14;
  }

LABEL_15:
}

- (void)viewController:(id)controller openWebsiteForSearchResult:(id)result
{
  controllerCopy = controller;
  resultCopy = result;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100914930;
  v35[3] = &unk_10162EAF0;
  v35[4] = self;
  v8 = controllerCopy;
  v36 = v8;
  v9 = objc_retainBlock(v35);
  mapItem = [resultCopy mapItem];
  v11 = [mapItem url];

  if (!v11)
  {
    if (![resultCopy isAddressBookResult])
    {
      goto LABEL_10;
    }

    address = [resultCopy address];
    contact = [address contact];

    urlAddresses = [contact urlAddresses];
    v15 = [urlAddresses count];

    urlAddresses2 = [contact urlAddresses];
    v17 = [urlAddresses2 count];

    if (v15 == 1)
    {
      urlAddresses3 = [contact urlAddresses];
      lastObject = [urlAddresses3 lastObject];
      value = [lastObject value];
      v21 = [NSURL URLWithString:value];

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
      urlAddresses4 = [contact urlAddresses];
      v29 = _NSConcreteStackBlock;
      v30 = 3221225472;
      v31 = sub_100914940;
      v32 = &unk_10162EAC8;
      v33 = v22;
      v34 = v9;
      v21 = v22;
      [urlAddresses4 enumerateObjectsUsingBlock:&v29];

      v24 = [NSBundle mainBundle:v29];
      v25 = [v24 localizedStringForKey:@"Cancel" value:@"localized string not found" table:0];
      v26 = [UIAlertAction actionWithTitle:v25 style:1 handler:0];
      [v21 addAction:v26];

      containerViewController = [(ActionCoordinator *)self containerViewController];
      chromeViewController = [containerViewController chromeViewController];
      [chromeViewController _maps_topMostPresentViewController:v21 animated:1 completion:0];
    }

    goto LABEL_9;
  }

  (v9[2])(v9, v11);
LABEL_10:
}

- (void)viewController:(id)controller doAudioCallToSearchResult:(id)result
{
  resultCopy = result;
  mapItem = [resultCopy mapItem];
  phoneNumber = [mapItem phoneNumber];

  if (phoneNumber && (v8 = [(NSString *)phoneNumber length]) != 0)
  {
    sub_100914DE0(v8, phoneNumber);
  }

  else if ([resultCopy isAddressBookResult])
  {
    address = [resultCopy address];
    contact = [address contact];

    phoneNumbers = [contact phoneNumbers];
    v12 = [phoneNumbers count];

    phoneNumbers2 = [contact phoneNumbers];
    v14 = [phoneNumbers2 count];

    if (v12 == 1)
    {
      phoneNumbers3 = [contact phoneNumbers];
      lastObject = [phoneNumbers3 lastObject];
      value = [lastObject value];

      stringValue = [value stringValue];
      sub_100914DE0(stringValue, stringValue);
    }

    else if (v14 >= 2)
    {
      v19 = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:0];
      phoneNumbers4 = [contact phoneNumbers];
      v27 = _NSConcreteStackBlock;
      v28 = 3221225472;
      v29 = sub_100914E48;
      v30 = &unk_10162EAC8;
      v31 = v19;
      v32 = &stru_10162EAA0;
      v21 = v19;
      [phoneNumbers4 enumerateObjectsUsingBlock:&v27];

      v22 = [NSBundle mainBundle:v27];
      v23 = [v22 localizedStringForKey:@"Cancel" value:@"localized string not found" table:0];
      v24 = [UIAlertAction actionWithTitle:v23 style:1 handler:0];
      [v21 addAction:v24];

      containerViewController = [(ActionCoordinator *)self containerViewController];
      chromeViewController = [containerViewController chromeViewController];
      [chromeViewController _maps_topMostPresentViewController:v21 animated:1 completion:0];
    }
  }
}

- (void)viewController:(id)controller doShareSheetForShareItem:(id)item completion:(id)completion
{
  completionCopy = completion;
  itemCopy = item;
  view = [controller view];
  v12 = [MUPresentationOptions optionsWithSender:view];

  appCoordinator = [(ActionCoordinator *)self appCoordinator];
  [appCoordinator shareItem:itemCopy presentationOptions:v12 completion:completionCopy];
}

- (void)viewController:(id)controller displayStoreViewControllerForAppWithiTunesIdentifier:(id)identifier clientIdentifier:(id)clientIdentifier
{
  if (identifier)
  {
    clientIdentifierCopy = clientIdentifier;
    identifierCopy = identifier;
    v9 = objc_alloc_init(SKStoreProductViewController);
    [v9 setDelegate:self];
    if (clientIdentifierCopy)
    {
      v10 = clientIdentifierCopy;
    }

    else
    {
      v10 = &stru_1016631F0;
    }

    [v9 setClientIdentifier:v10];

    v14 = SKStoreProductParameterITunesItemIdentifier;
    v15 = identifierCopy;
    v11 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];

    [v9 loadProductWithParameters:v11 completionBlock:&stru_10162EA80];
    containerViewController = [(ActionCoordinator *)self containerViewController];
    chromeViewController = [containerViewController chromeViewController];
    [chromeViewController _maps_topMostPresentViewController:v9 animated:1 completion:0];
  }
}

- (void)viewController:(id)controller editLocationOfMarkedLocation:(id)location
{
  controllerCopy = controller;
  locationCopy = location;
  v8 = [[MarkedLocationRefinementViewController alloc] initWithMarkedLocation:locationCopy];

  [(LocationRefinementViewController *)v8 setDelegate:self];
  [(MarkedLocationRefinementViewController *)v8 setOriginalPresenterViewController:controllerCopy];
  v9 = [[UINavigationController alloc] initWithRootViewController:v8];
  [v9 setModalPresentationStyle:2];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100915380;
  v17 = &unk_101661A90;
  selfCopy = self;
  v10 = v9;
  v19 = v10;
  v11 = objc_retainBlock(&v14);
  if (sub_10000FA08(controllerCopy) == 5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = controllerCopy;
    placeCardDelegate = [v12 placeCardDelegate];
    [placeCardDelegate placeCardViewController:v12 dismissAnimated:1 completion:v11];
  }

  else
  {
    (v11[2])(v11);
  }
}

- (void)viewController:(id)controller createMarkedLocationAtCoordinate:(CLLocationCoordinate2D)coordinate floorOrdinal:(int)ordinal
{
  v5 = *&ordinal;
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  controllerCopy = controller;
  longitude = [SearchResult customSearchResultWithCoordinate:v5 floorOrdinal:latitude, longitude];
  containerViewController = [(ActionCoordinator *)self containerViewController];
  chromeViewController = [containerViewController chromeViewController];
  customSearchManager = [chromeViewController customSearchManager];
  containerViewController2 = [(ActionCoordinator *)self containerViewController];
  chromeViewController2 = [containerViewController2 chromeViewController];
  mapView = [chromeViewController2 mapView];
  [customSearchManager setCustomSearchResult:longitude animated:1 shouldSelectOnMap:mapView];

  if (longitude)
  {
    searchPinsManager = [(ActionCoordinator *)self searchPinsManager];
    [searchPinsManager setDroppedPin:longitude animated:1 shouldSelect:1];

    [(ActionCoordinator *)self viewController:controllerCopy selectSearchResult:longitude addToHistory:0 source:3 saveSelectionState:1];
  }
}

- (void)viewController:(id)controller createDroppedPin:(id)pin
{
  pinCopy = pin;
  controllerCopy = controller;
  if ([pinCopy hasFloorOrdinal])
  {
    floorOrdinal = [pinCopy floorOrdinal];
  }

  else
  {
    floorOrdinal = 0x7FFFFFFFLL;
  }

  [pinCopy coordinate];
  [(ActionCoordinator *)self viewController:controllerCopy createMarkedLocationAtCoordinate:floorOrdinal floorOrdinal:?];
}

- (void)viewController:(id)controller removeDroppedPin:(id)pin
{
  controllerCopy = controller;
  pinCopy = pin;
  if (!controllerCopy)
  {
    currentViewController = [(ActionCoordinator *)self currentViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      currentViewController2 = [(ActionCoordinator *)self currentViewController];
      placeCardItem = [currentViewController2 placeCardItem];
      isDroppedPin = [placeCardItem isDroppedPin];

      if (isDroppedPin)
      {
        controllerCopy = [(ActionCoordinator *)self currentViewController];
      }

      else
      {
        controllerCopy = 0;
      }
    }

    else
    {
      controllerCopy = 0;
    }
  }

  [(ActionCoordinator *)self deleteMarkedLocation:pinCopy];
  [(ActionCoordinator *)self viewControllerClosed:controllerCopy animated:1];
}

- (void)viewControllerClosed:(id)closed animated:(BOOL)animated
{
  animatedCopy = animated;
  closedCopy = closed;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    searchPinsManager = [(ActionCoordinator *)self searchPinsManager];
    [searchPinsManager clearLinkedPlacesAndPolygon];

    v7 = +[MUPlaceEnrichmentAPIController sharedPlaceEnrichmentAPIController];
    [v7 resetConfiguration];

    v8 = +[MUPlaceEnrichmentAPIController sharedPlaceEnrichmentAPIController];
    [v8 cancelFetchingPlaceEnrichment];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mapSelectionManager = [(ActionCoordinator *)self mapSelectionManager];
    [mapSelectionManager clearSelection];

    [(ActionCoordinator *)self clearSearch];
    parkedCarViewController = self->_parkedCarViewController;
    self->_parkedCarViewController = 0;
  }

  [(ActionCoordinator *)self closeSettingsIfNeeded];
  if ([(SearchSessionManager *)self->_searchSessionManager singleResultMode])
  {
    v11 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v11 userInterfaceIdiom];

    if (userInterfaceIdiom != 5)
    {
      [(ActionCoordinator *)self clearSearch];
    }
  }

  if (closedCopy)
  {
    if (self->_placeCardForRoutePlanningViewController == closedCopy)
    {
      [(ActionCoordinator *)self _setRouteSelectionMapState];
    }

    venueCardCoordinator = [(ActionCoordinator *)self venueCardCoordinator];
    topViewController = [venueCardCoordinator topViewController];

    if (topViewController == closedCopy)
    {
      venueCardCoordinator2 = [(ActionCoordinator *)self venueCardCoordinator];
      [venueCardCoordinator2 popVenueCardItem:0];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ActionCoordinator *)self _cleanupRoutePlanningIfNeededAnimated:0];
  }

  containerViewController = [(ActionCoordinator *)self containerViewController];
  [containerViewController popLastViewControllerFromViewController:closedCopy animated:animatedCopy useDefaultContaineeLayout:0];

  containerViewController2 = [(ActionCoordinator *)self containerViewController];
  viewIfLoaded = [containerViewController2 viewIfLoaded];
  [viewIfLoaded endEditing:1];
}

- (void)viewControllerOpenSettings:(id)settings
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  chromeViewController = [WeakRetained chromeViewController];
  v6 = objc_loadWeakRetained(&self->_containerViewController);
  chromeContext = [v6 chromeContext];
  v8 = [chromeViewController isTopContext:chromeContext];

  if (v8)
  {
    [(ActionCoordinator *)self _cancelUserInteractions];
    mapView = [(ActionCoordinator *)self mapView];
    [mapView setCompassEnabled:0];

    v10 = objc_loadWeakRetained(&self->_containerViewController);
    settingsViewController = [(ActionCoordinator *)self settingsViewController];
    [v10 _maps_topMostPresentViewController:settingsViewController animated:1 completion:0];

    v12 = objc_loadWeakRetained(&self->_containerViewController);
    [v12 setUseBackdropFullScreen:1];

    v13 = +[MKMapService sharedService];
    [v13 captureUserAction:5001 onTarget:-[ActionCoordinator currentMapViewTargetForAnalytics](self eventValue:{"currentMapViewTargetForAnalytics"), 0}];
  }
}

- (void)viewControllerOpenNearby:(id)nearby animated:(BOOL)animated
{
  [(ActionCoordinator *)self presentSearchAnimated:animated];
  searchModeViewController = [(ActionCoordinator *)self searchModeViewController];
  [searchModeViewController searchBarBecomeFirstResponder];
}

- (void)viewController:(id)controller selectLastDirectionsDestinationComposedWaypoint:(id)waypoint
{
  controllerCopy = controller;
  waypointCopy = waypoint;
  if (self->_routePlanningDataCoordinator)
  {
    v8 = +[CarDisplayController sharedInstance];
    isCurrentlyConnectedToAnyCarScene = [v8 isCurrentlyConnectedToAnyCarScene];

    if (isCurrentlyConnectedToAnyCarScene)
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

    items = [currentDirectionItem items];
    v15 = [items count];

    if (v15 < 3)
    {
      if (waypointCopy)
      {
        v17 = [[SearchResult alloc] initWithComposedWaypoint:waypointCopy];
      }

      else
      {
        items2 = [self->_currentDirectionItem items];
        lastObject = [items2 lastObject];

        waypoint = [lastObject waypoint];
        v17 = [waypoint pin];
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

        searchPinsManager = [(ActionCoordinator *)self searchPinsManager];
        [searchPinsManager clearDirectionsPins];

        containerViewController = [(ActionCoordinator *)self containerViewController];
        v25 = sub_10000FA08(containerViewController) == 5;

        if (v25)
        {
          v22 = [SearchFieldItem searchFieldItemWithObject:v17];
          [(ActionCoordinator *)self viewController:0 doSearchItem:v22 withUserInfo:0];
        }

        else
        {
          searchPinsManager2 = [(ActionCoordinator *)self searchPinsManager];
          v29 = [searchPinsManager2 canSelectPin:v17];

          searchPinsManager3 = [(ActionCoordinator *)self searchPinsManager];
          v31 = searchPinsManager3;
          if (v29)
          {
            [searchPinsManager3 selectAndShowSearchResult:v17 animated:1];
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
          selfCopy = self;
          v34 = objc_retainBlock(v41);
          lastLocation = [v22 lastLocation];

          if (lastLocation)
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
        items3 = [self->_currentDirectionItem items];
        lastObject2 = [items3 lastObject];
        *buf = 138412290;
        *&buf[4] = lastObject2;
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

- (void)viewControllerDoLastDirectionItem:(id)item
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

- (void)viewController:(id)controller enterRouteCreationWithRoute:(id)route withUserInfo:(id)info
{
  controllerCopy = controller;
  routeCopy = route;
  infoCopy = info;
  objc_initWeak(&location, self);
  newTraits = [(ActionCoordinator *)self newTraits];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100916588;
  v18[3] = &unk_10162EA38;
  v12 = routeCopy;
  v19 = v12;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10091666C;
  v15[3] = &unk_10162EA60;
  objc_copyWeak(&v17, &location);
  v13 = infoCopy;
  v16 = v13;
  v14 = [v12 _maps_convertToNavigableRouteWithTraits:newTraits errorHandler:v18 completionHandler:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)viewController:(id)controller enterRouteCreationWith:(id)with
{
  withCopy = with;
  controllerCopy = controller;
  v9 = [[GEORouteBuilder_PersistentData alloc] initWithPersistentData:withCopy];

  buildRoute = [v9 buildRoute];
  [(ActionCoordinator *)self viewController:controllerCopy enterRouteCreationWithRoute:buildRoute withUserInfo:0];
}

- (void)_promptForEditRequired:(unint64_t)required forWaypointAtIndex:(unint64_t)index inDirectionItem:(id)item userInfo:(id)info
{
  itemCopy = item;
  infoCopy = info;
  if (!required)
  {
    goto LABEL_21;
  }

  containerViewController = [(ActionCoordinator *)self containerViewController];
  v13 = sub_10000FA08(containerViewController);

  if (v13 == 5)
  {
    [(ActionCoordinator *)self _presentMacRouteEditingWithEditRequired:required index:index];
    goto LABEL_21;
  }

  if (required - 2 < 2)
  {
    hasCurrentLocationOnlyAsOriginWaypoint = [itemCopy hasCurrentLocationOnlyAsOriginWaypoint];
    v14 = +[NSBundle mainBundle];
    v15 = v14;
    if (hasCurrentLocationOnlyAsOriginWaypoint)
    {
      v16 = @"Choose Start";
    }

    else
    {
      v16 = @"Set Current Location";
    }
  }

  else if (required == 4)
  {
    v14 = +[NSBundle mainBundle];
    v15 = v14;
    v16 = @"Choose Destination";
  }

  else
  {
    if (required != 1)
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
  items = [itemCopy items];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100916B70;
  v29[3] = &unk_10162EA10;
  v29[4] = self;
  v32 = &v35;
  v30 = itemCopy;
  requiredCopy = required;
  indexCopy = index;
  v31 = infoCopy;
  v21 = [(RouteSearchViewController *)v19 initWithDelegate:self items:items waypointIndex:index selectionHandler:v29];
  v22 = v36[5];
  v36[5] = v21;

  [v36[5] setTitle:v18];
  objc_storeStrong(&self->_routeSearchVC, v36[5]);
  if ([v36[5] modalPresentationStyle] == 7)
  {
    popoverPresentationController = [v36[5] popoverPresentationController];
    delegate = [popoverPresentationController delegate];

    if (!delegate)
    {
      popoverPresentationController2 = [v36[5] popoverPresentationController];
      [popoverPresentationController2 setDelegate:self];
    }

    containerViewController2 = [(ActionCoordinator *)self containerViewController];
    [containerViewController2 _maps_topMostPresentViewController:v36[5] animated:1 completion:0];
  }

  else
  {
    containerViewController2 = [(ActionCoordinator *)self containerViewController];
    v27 = v36[5];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100916D34;
    v28[3] = &unk_101659998;
    v28[4] = &v35;
    v28[5] = index;
    [containerViewController2 presentController:v27 animated:1 completion:v28];
  }

  _Block_object_dispose(&v35, 8);
LABEL_21:
}

- (void)_promptForCurrentLocationConfirmationWithDirectionItem:(id)item userInfo:(id)info
{
  itemCopy = item;
  infoCopy = info;
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
  v14 = infoCopy;
  v35 = v14;
  selfCopy = self;
  v15 = v11;
  v37 = v15;
  v16 = itemCopy;
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
  selfCopy2 = self;
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

- (void)viewController:(id)controller doDirectionItem:(id)item allowToPromptEditing:(BOOL)editing withUserInfo:(id)info
{
  editingCopy = editing;
  controllerCopy = controller;
  itemCopy = item;
  infoCopy = info;
  if (!GEOConfigGetBOOL())
  {
    newTraits = [infoCopy objectForKeyedSubscript:@"SearchSessionTraits"];
    if (!newTraits)
    {
      newTraits = [(ActionCoordinator *)self newTraits];
    }

    v14 = [infoCopy objectForKeyedSubscript:{@"SearchSessionTraitsSource", newTraits}];

    if (v14)
    {
      v15 = [infoCopy objectForKeyedSubscript:@"SearchSessionTraitsSource"];
      [v67 setSource:{objc_msgSend(v15, "integerValue")}];
    }

    items = [itemCopy items];
    v17 = [items copy];

    if ([(ActionCoordinator *)self isRoutePlanningPresented])
    {
      routePlanningDataCoordinator = [(ActionCoordinator *)self routePlanningDataCoordinator];
      directionItemForCurrentSession = [routePlanningDataCoordinator directionItemForCurrentSession];

      if (!directionItemForCurrentSession)
      {
        goto LABEL_13;
      }
    }

    else
    {
      directionItemForCurrentSession = self->_currentDirectionItem;
      if (!directionItemForCurrentSession)
      {
        goto LABEL_13;
      }
    }

    v20 = [infoCopy objectForKeyedSubscript:@"DirectionsAppendContentsOfItem"];
    bOOLValue = [v20 BOOLValue];

    if (bOOLValue)
    {
      items2 = [itemCopy items];
      firstObject = [items2 firstObject];

      [(ActionCoordinator *)self viewController:controllerCopy addStopForSearchFieldItem:firstObject withUserInfo:infoCopy];
LABEL_64:

      goto LABEL_65;
    }

LABEL_13:
    if (([itemCopy isEquivalentAsWaypointToDirectionItem:directionItemForCurrentSession] & 1) == 0)
    {
      [(MKLocationManagerOperation *)self->_locationUpdateOperationForRouting cancel];
      v24 = [itemCopy copy];
      currentDirectionItem = self->_currentDirectionItem;
      self->_currentDirectionItem = v24;

      if ([self->_currentDirectionItem isVenueItem])
      {
        if (![(ActionCoordinator *)self isRoutePlanningPresented])
        {
          venueCardCoordinator = [(ActionCoordinator *)self venueCardCoordinator];
          [venueCardCoordinator pushVenueCardItem:self->_currentDirectionItem source:4];

          searchPinsManager = [(ActionCoordinator *)self searchPinsManager];
          [searchPinsManager clearLinkedPlacesAndPolygon];
        }
      }
    }

    if ([v17 count] == 1)
    {
      v28 = [infoCopy objectForKeyedSubscript:@"DirectionsAppendContentsOfItem"];
      bOOLValue2 = [v28 BOOLValue];

      if ((bOOLValue2 & 1) == 0)
      {
        v30 = sub_100798A3C();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          firstObject2 = [v17 firstObject];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = firstObject2;
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
    persistentData = [itemCopy persistentData];
    if (persistentData)
    {
      persistentData2 = [itemCopy persistentData];
      v34 = ([persistentData2 source] & 0xFFFFFFFFFFFFFFFELL) == 2;
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

    v35 = [infoCopy objectForKeyedSubscript:@"DirectionsAllowApproximateCurrentLocation"];
    [itemCopy setAllowApproximateUserLocation:v35];

    v68 = 0x7FFFFFFFFFFFFFFFLL;
    v36 = [itemCopy editRequired:&v68];
    v37 = v36;
    if (editingCopy && v36)
    {
      if (v36 == 3)
      {
        v38 = [infoCopy objectForKeyedSubscript:@"SearchSessionTraitsSource"];
        if ([v38 integerValue] == 1)
        {

          goto LABEL_40;
        }

        v51 = [infoCopy objectForKeyedSubscript:@"DirectionsSourceKey"];
        v52 = [v51 integerValue] == 2;

        if (v52)
        {
LABEL_40:
          v53 = [infoCopy objectForKeyedSubscript:@"DirectionsAllowApproximateCurrentLocation"];
          v54 = v53 == 0;

          if (v54)
          {
            [(ActionCoordinator *)self _promptForCurrentLocationConfirmationWithDirectionItem:itemCopy userInfo:infoCopy];
            goto LABEL_63;
          }
        }
      }

      [(ActionCoordinator *)self _promptForEditRequired:v37 forWaypointAtIndex:v68 inDirectionItem:itemCopy userInfo:infoCopy];
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
        transportType = [self->_currentDirectionItem transportType];
        v47 = sub_100798A3C();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          if ((transportType - 1) > 4)
          {
            v48 = @"Undefined";
          }

          else
          {
            v48 = *(&off_10162EEB0 + transportType - 1);
          }

          *v72 = 138412290;
          v73 = v48;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Initial transport type from direction item: %@", v72, 0xCu);
        }

        if (transportType)
        {
          if (transportType == 4)
          {
            if (sub_100016C50())
            {
              transportType = 4;
            }

            else
            {
              v55 = sub_100798A3C();
              if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
              {
                *v72 = 0;
                _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "Detected rideshare transport type when ride booking is not enabled; changing to driving", v72, 2u);
              }

              transportType = 1;
            }
          }

          v56 = +[MapsSuggestionsPredictor sharedPredictor];
          v57 = v56;
          if ((transportType - 1) > 4)
          {
            v58 = 4;
          }

          else
          {
            v58 = dword_101216100[transportType - 1];
          }

          [v56 capturePredictedTransportationMode:v58];
        }

        [self->_currentDirectionItem setTransportType:transportType];
        self->_visibleViewModeBeforeDoingDirectionItem = [(ActionCoordinator *)self displayedViewMode];
        v50 = [infoCopy mutableCopy];
        v59 = [infoCopy objectForKeyedSubscript:@"DirectionsSourceKey"];
        v60 = [v59 integerValue] == 5;

        if (v60)
        {
          v61 = 1;
        }

        else if (controllerCopy)
        {
          v61 = self->_routeSearchVC == controllerCopy;
        }

        else
        {
          v61 = 0;
        }

        v62 = [NSNumber numberWithBool:v61];
        [v50 setObject:v62 forKeyedSubscript:@"DisableNotReachableErrorInRoutePlanning"];

        routePlanningDataCoordinator2 = [(ActionCoordinator *)self routePlanningDataCoordinator];
        v64 = self->_currentDirectionItem;
        v65 = [v50 copy];
        [routePlanningDataCoordinator2 startWithDirectionItem:v64 traits:v67 userInfo:v65];

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

  appCoordinator = [(ActionCoordinator *)self appCoordinator];
  [appCoordinator enterRoutePlanningWithDirectionItem:itemCopy allowToPromptEditing:editingCopy withUserInfo:infoCopy];

LABEL_65:
}

- (void)viewController:(id)controller addStopForSearchFieldItem:(id)item withUserInfo:(id)info
{
  controllerCopy = controller;
  itemCopy = item;
  infoCopy = info;
  if (self->_routePlanningDataCoordinator)
  {
    if ([(ActionCoordinator *)self isRoutePlanningPresented]|| ([(RouteSearchViewController *)self->_routeSearchVC presentingViewController], (v11 = objc_claimAutoreleasedReturnValue()) == 0) || (v12 = v11, [(RouteSearchViewController *)self->_routeSearchVC dataCoordinator], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v13))
    {
      routePlanningDataCoordinator = [(ActionCoordinator *)self routePlanningDataCoordinator];
      directionItemForCurrentSession = [routePlanningDataCoordinator directionItemForCurrentSession];

      items = [directionItemForCurrentSession items];
      v17 = [NSMutableArray arrayWithArray:items];

      presentingViewController = [(RouteSearchViewController *)self->_routeSearchVC presentingViewController];
      if (!presentingViewController || (v19 = presentingViewController, v20 = [(RouteSearchViewController *)self->_routeSearchVC _currentlySelectedIndexForAddStop], v19, v20 == 0x7FFFFFFFFFFFFFFFLL))
      {
        transportType = [directionItemForCurrentSession transportType];
        v20 = 0x7FFFFFFFFFFFFFFFLL;
        if (transportType > 1)
        {
          if (transportType == 2)
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

              [v17 addObject:itemCopy];
LABEL_38:
              routePlanningDataCoordinator2 = [(ActionCoordinator *)self routePlanningDataCoordinator];
              transportType2 = [routePlanningDataCoordinator2 transportType];

              v32 = [DirectionItem alloc];
              v33 = [v17 copy];
              v25 = [(DirectionItem *)v32 initWithItems:v33 transportType:transportType2];

              v34 = [infoCopy mutableCopy];
              [v34 setObject:0 forKeyedSubscript:@"DirectionsAppendContentsOfItem"];
              v35 = [v34 copy];
              [(ActionCoordinator *)self viewController:controllerCopy doDirectionItem:v25 withUserInfo:v35];

              [(ActionCoordinator *)self clearSearch];
              goto LABEL_51;
            }
          }

          else if (transportType == 5 && (MapsFeature_IsEnabled_Maps420() & 1) != 0)
          {
            goto LABEL_35;
          }
        }

        else if (transportType)
        {
          if (transportType == 1 && (MapsFeature_IsEnabled_DrivingMultiWaypointRoutes() & 1) != 0)
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

        [v17 replaceObjectAtIndex:v20 withObject:itemCopy];
        goto LABEL_38;
      }

      if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
LABEL_51:

        goto LABEL_52;
      }

      v26 = [v17 count];
      transportType3 = [directionItemForCurrentSession transportType];
      v28 = @"NO";
      if (transportType3 > 1)
      {
        if (transportType3 == 2)
        {
          if (MapsFeature_IsEnabled_Maps182())
          {
LABEL_49:
            v28 = @"YES";
            goto LABEL_50;
          }

          goto LABEL_47;
        }

        if (transportType3 != 5)
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
        if (transportType3)
        {
          if (transportType3 == 1)
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

    [(RouteSearchViewController *)self->_routeSearchVC replaceSelectedFieldWithItem:itemCopy];
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
      directionItemForCurrentSession = sub_10006D178();
      if (!os_log_type_enabled(directionItemForCurrentSession, OS_LOG_TYPE_ERROR))
      {
LABEL_53:

        goto LABEL_54;
      }

      v17 = +[NSThread callStackSymbols];
      v36 = 138412290;
      v37 = v17;
      _os_log_impl(&_mh_execute_header, directionItemForCurrentSession, OS_LOG_TYPE_ERROR, "%@", &v36, 0xCu);
LABEL_52:

      goto LABEL_53;
    }
  }

LABEL_54:
}

- (void)viewController:(id)controller addStopForSearchResult:(id)result withUserInfo:(id)info
{
  controllerCopy = controller;
  infoCopy = info;
  if (self->_routePlanningDataCoordinator)
  {
    v10 = [SearchFieldItem searchFieldItemWithObject:result];
    [(ActionCoordinator *)self viewController:controllerCopy addStopForSearchFieldItem:v10 withUserInfo:infoCopy];
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

- (void)viewController:(id)controller doDirectionIntentWithLocalSearchCompletion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  v8 = objc_alloc_init(DirectionIntentItemProvider);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100918360;
  v10[3] = &unk_10162E950;
  v10[4] = self;
  v11 = controllerCopy;
  v9 = controllerCopy;
  [(DirectionIntentItemProvider *)v8 directionItemWithLocalSearchCompletion:completionCopy completion:v10];
}

- (void)viewController:(id)controller doDirectionIntent:(id)intent withSearchResults:(id)results
{
  controllerCopy = controller;
  resultsCopy = results;
  intentCopy = intent;
  v11 = objc_alloc_init(DirectionIntentItemProvider);
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_1009185E8;
  v22 = &unk_10162E950;
  selfCopy = self;
  v12 = controllerCopy;
  v24 = v12;
  [(DirectionIntentItemProvider *)v11 directionItemWithDirectionIntent:intentCopy searchResults:resultsCopy completion:&v19];

  if (qword_10195DF00 != -1)
  {
    dispatch_once(&qword_10195DF00, &stru_1016303F0);
  }

  v13 = byte_10195DF08;
  v14 = [(ActionCoordinator *)self containerViewController:v19];
  containerViewController = v14;
  if (v13 != 1)
  {
    p_resultsViewController = &self->_resultsViewController;
    goto LABEL_7;
  }

  currentViewController = [v14 currentViewController];
  p_resultsViewController = &self->_resultsViewController;
  resultsViewController = self->_resultsViewController;

  if (currentViewController != resultsViewController)
  {
    containerViewController = [(ActionCoordinator *)self containerViewController];
LABEL_7:
    [containerViewController removeControllerFromStack:*p_resultsViewController];
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
    currentViewController = [WeakRetained currentViewController];
    if (currentViewController)
    {
      v5 = currentViewController;
      v6 = objc_loadWeakRetained(&self->_containerViewController);
      currentViewController2 = [v6 currentViewController];

      v8 = v14;
      if (currentViewController2 != v14)
      {
        goto LABEL_17;
      }

      mapSelectionManager = [(ActionCoordinator *)self mapSelectionManager];
      [mapSelectionManager clearSelectionAnimated:1];

      WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
      if (sub_10000FA08(WeakRetained) == 5)
      {
        currentSearchSession = [(ActionCoordinator *)self currentSearchSession];

        v8 = v14;
        if (currentSearchSession)
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
    routePlanningDataCoordinator = [(ActionCoordinator *)self routePlanningDataCoordinator];
    isSuspended = [routePlanningDataCoordinator isSuspended];

    routePlanningDataCoordinator2 = [(ActionCoordinator *)self routePlanningDataCoordinator];
    routePlanningDataCoordinator3 = routePlanningDataCoordinator2;
    if (isSuspended)
    {
      [routePlanningDataCoordinator2 resume];
LABEL_12:

      return;
    }

    isEnabled = [routePlanningDataCoordinator2 isEnabled];

    if (isEnabled)
    {
      routePlanningDataCoordinator3 = [(ActionCoordinator *)self routePlanningDataCoordinator];
      [routePlanningDataCoordinator3 suspend];
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
    routePlanningDataCoordinator = [(ActionCoordinator *)self routePlanningDataCoordinator];
    canAddStop = [routePlanningDataCoordinator canAddStop];
  }

  else
  {
    canAddStop = [self->_currentDirectionItem canAddStop];
  }

  if (![(ActionCoordinator *)self _isBuildingMultipointRoute]&& ![(ActionCoordinator *)self isPresentingAddStopSearchResults])
  {
    return 0;
  }

  return canAddStop;
}

- (BOOL)_isBuildingMultipointRoute
{
  if (self->_routePlanningDataCoordinator)
  {
    if ([(ActionCoordinator *)self isRoutePlanningPresented]|| ([(RouteSearchViewController *)self->_routeSearchVC presentingViewController], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
    {
      if ([(ActionCoordinator *)self isRoutePlanningPresented])
      {
        routePlanningDataCoordinator = [(ActionCoordinator *)self routePlanningDataCoordinator];
        transportType = [routePlanningDataCoordinator transportType];
      }

      else
      {
        transportType = [self->_currentDirectionItem transportType];
      }

      if ([(ActionCoordinator *)self isRoutePlanningPresented])
      {
        routePlanningDataCoordinator2 = [(ActionCoordinator *)self routePlanningDataCoordinator];
        waypointRequests = [routePlanningDataCoordinator2 waypointRequests];
        v12 = [waypointRequests count];
      }

      else
      {
        routePlanningDataCoordinator2 = [self->_currentDirectionItem items];
        v12 = [routePlanningDataCoordinator2 count];
      }

      LOBYTE(v7) = 0;
      if (transportType > 1)
      {
        if (transportType != 2)
        {
          if (transportType == 5)
          {
            LOBYTE(v7) = MapsFeature_IsEnabled_Maps420();
          }

          goto LABEL_28;
        }
      }

      else
      {
        if (transportType)
        {
          if (transportType == 1)
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

- (void)viewController:(id)controller selectClientResolvedItem:(id)item fromSearchInfo:(id)info withUserInfo:(id)userInfo
{
  controllerCopy = controller;
  itemCopy = item;
  infoCopy = info;
  if (userInfo)
  {
    v13 = [userInfo mutableCopy];
  }

  else
  {
    v13 = +[NSMutableDictionary dictionary];
  }

  v14 = v13;
  [v13 setObject:&__kCFBooleanTrue forKeyedSubscript:@"SearchSessionShouldReuseSearchSession"];
  v15 = [v14 copy];
  v16 = objc_alloc_init(ClientTypeResolver);
  itemType = [itemCopy itemType];
  if (itemType > 3)
  {
    switch(itemType)
    {
      case 4:
        userLocationSearchResult = [(ActionCoordinator *)self userLocationSearchResult];

        if (!userLocationSearchResult)
        {
          goto LABEL_19;
        }

        userLocationSearchResult2 = [(ActionCoordinator *)self userLocationSearchResult];
        results = [SearchFieldItem searchFieldItemWithObject:userLocationSearchResult2];

        [(ActionCoordinator *)self viewController:0 doSearchItem:results withUserInfo:v15];
        break;
      case 5:
        resultIndex = [itemCopy resultIndex];
        results = [infoCopy results];
        if (resultIndex < [results count])
        {
          results2 = [infoCopy results];
          v27 = [results2 objectAtIndexedSubscript:{objc_msgSend(itemCopy, "resultIndex")}];

          if (!v27)
          {
            goto LABEL_19;
          }

          v28 = [SearchFieldItem searchFieldItemWithObject:v27];
          [(ActionCoordinator *)self viewController:0 doSearchItem:v28 withUserInfo:v15];

          results = v27;
        }

        break;
      case 6:
LABEL_11:
        personalizedItemSource = [(ClientTypeResolver *)v16 personalizedItemSource];
        itemType2 = [itemCopy itemType];
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_100919308;
        v31[3] = &unk_10162E928;
        v31[4] = self;
        v32 = v15;
        [personalizedItemSource addressOrLOIWithType:itemType2 completion:v31];

        v19 = v32;
        goto LABEL_12;
      default:
        goto LABEL_19;
    }

    goto LABEL_19;
  }

  if ((itemType - 1) < 2)
  {
    goto LABEL_11;
  }

  if (itemType == 3)
  {
    parkedCarSource = [(ClientTypeResolver *)v16 parkedCarSource];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1009193FC;
    v29[3] = &unk_101658E78;
    v29[4] = self;
    v30 = controllerCopy;
    [parkedCarSource objectWithCompletion:v29];

    v19 = v30;
LABEL_12:
  }

LABEL_19:
}

- (void)viewController:(id)controller doSearchItem:(id)item withUserInfo:(id)info refinementsQuery:(id)query autocompleteSessionData:(id)data
{
  controllerCopy = controller;
  itemCopy = item;
  infoCopy = info;
  queryCopy = query;
  dataCopy = data;
  v17 = sub_100798B6C();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    title = [itemCopy title];
    v35 = 138412802;
    v36 = controllerCopy;
    v37 = 2112;
    v38 = title;
    v39 = 2112;
    v40 = infoCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "doSearchItemWithRefinement viewController: %@ title: %@ userInfo: %@", &v35, 0x20u);
  }

  v19 = [infoCopy objectForKeyedSubscript:@"SearchSessionFromRefinementBar"];
  if (v19)
  {
    v20 = v19;
    v21 = [infoCopy objectForKeyedSubscript:@"SearchSessionIsAutoRedoSearch"];

    if (!v21)
    {
      searchPinsManager = [(ActionCoordinator *)self searchPinsManager];
      [searchPinsManager clearSearchPins];
    }
  }

  if (MapsFeature_IsEnabled_PlaceCardShowcase())
  {
    completion = [itemCopy completion];
    mapItem = [completion mapItem];
    _enrichmentInfo = [mapItem _enrichmentInfo];

    if (_enrichmentInfo)
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
      completion2 = [itemCopy completion];
      mapItem2 = [completion2 mapItem];
      newTraits = [(ActionCoordinator *)self newTraits];
      [(MUPlaceEnrichmentAPIController *)v29 configureWithMapItem:mapItem2 traits:newTraits];

      [(MUPlaceEnrichmentAPIController *)self->_placeEnrichmentAPIController fetchPlaceEnrichment:0];
    }
  }

  searchSessionManager = self->_searchSessionManager;
  if (dataCopy)
  {
    [(SearchSessionManager *)self->_searchSessionManager performSearchForSearchItem:itemCopy withUserInfo:infoCopy refinementsQuery:queryCopy recentAutocompleteSessionData:dataCopy];
  }

  else
  {
    recentAutocompleteSessionData = [(SearchViewController *)self->_searchModeViewController recentAutocompleteSessionData];
    [(SearchSessionManager *)searchSessionManager performSearchForSearchItem:itemCopy withUserInfo:infoCopy refinementsQuery:queryCopy recentAutocompleteSessionData:recentAutocompleteSessionData];
  }
}

- (void)viewController:(id)controller doSearchItem:(id)item withUserInfo:(id)info
{
  controllerCopy = controller;
  itemCopy = item;
  infoCopy = info;
  v11 = [[NSMutableDictionary alloc] initWithDictionary:infoCopy];

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
    title = [itemCopy title];
    v19 = 138412802;
    v20 = controllerCopy;
    v21 = 2112;
    v22 = title;
    v23 = 2112;
    v24 = v11;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "doSearchItem viewController: %@ title: %@ userInfo: %@", &v19, 0x20u);
  }

  searchSessionManager = self->_searchSessionManager;
  recentAutocompleteSessionData = [(SearchViewController *)self->_searchModeViewController recentAutocompleteSessionData];
  [(SearchSessionManager *)searchSessionManager performSearchForSearchItem:itemCopy withUserInfo:v11 recentAutocompleteSessionData:recentAutocompleteSessionData];
}

- (void)viewControllerGoPreviousState:(id)state withSender:(id)sender
{
  stateCopy = state;
  senderCopy = sender;
  if (self->_incidentsVC == stateCopy || self->_routeStepsVC == stateCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    selfCopy2 = self;
    routePlanningOverviewViewController = stateCopy;
LABEL_5:
    [(ActionCoordinator *)selfCopy2 closeRoutePlanningViewController:routePlanningOverviewViewController withSender:senderCopy];
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_10:
    trafficIncidentVC = [(ActionCoordinator *)self trafficIncidentVC];

    if (trafficIncidentVC == stateCopy)
    {
      mapSelectionManager = [(ActionCoordinator *)self mapSelectionManager];
      mapView = [mapSelectionManager mapView];
      [mapView _deselectLabelMarkerAnimated:1];
    }

    if (self->_placeCardViewController == stateCopy || self->_placeCardForRoutePlanningViewController == stateCopy)
    {
      if (self->_isDismissingPlaceCardFromCarPlay)
      {
        self->_isDismissingPlaceCardFromCarPlay = 0;
      }

      else
      {
        v17 = stateCopy;
        v18 = [PlaceCardSynchronizationNotificationInfo alloc];
        placeCardItem = [(RouteIncidentsViewController *)v17 placeCardItem];

        v20 = +[CarDisplayController sharedInstance];
        platformController = [v20 platformController];
        v22 = [(PlaceCardSynchronizationNotificationInfo *)v18 initWithPlaceCardItem:placeCardItem platformController:platformController];

        v23 = +[NSNotificationCenter defaultCenter];
        [v23 postNotificationName:@"IOSBasedPlaceCardDidDismiss" object:v22];
      }

      searchPinsManager = [(ActionCoordinator *)self searchPinsManager];
      [searchPinsManager clearLinkedPlacesAndPolygon];

      v25 = +[MUPlaceEnrichmentAPIController sharedPlaceEnrichmentAPIController];
      [v25 resetConfiguration];

      v26 = +[MUPlaceEnrichmentAPIController sharedPlaceEnrichmentAPIController];
      [v26 cancelFetchingPlaceEnrichment];
    }

    if (self->_lineCardViewController != stateCopy)
    {
      disambiguationVC = [(TransitLineSelectionActionController *)self->_lineSelectionAction disambiguationVC];

      if (disambiguationVC)
      {
        containerViewController = [(ActionCoordinator *)self containerViewController];
        disambiguationVC2 = [(TransitLineSelectionActionController *)self->_lineSelectionAction disambiguationVC];
        [containerViewController removeControllerFromStack:disambiguationVC2];
      }
    }

    venueCardCoordinator = [(ActionCoordinator *)self venueCardCoordinator];
    topViewController = [venueCardCoordinator topViewController];

    if (topViewController == stateCopy)
    {
      [(ActionCoordinator *)self closeVenueViewController:stateCopy];
      goto LABEL_6;
    }

    if (self->_placeCardViewController == stateCopy)
    {
      v32 = +[UIDevice currentDevice];
      if ([v32 userInterfaceIdiom] == 5)
      {
      }

      else
      {
        singleResultMode = [(SearchSessionManager *)self->_searchSessionManager singleResultMode];

        if (singleResultMode)
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
        currentSearchSession = [(ActionCoordinator *)self currentSearchSession];
        isSingleResultToShowAsPlacecard = [currentSearchSession isSingleResultToShowAsPlacecard];

        if (isSingleResultToShowAsPlacecard)
        {
          [(ActionCoordinator *)self clearSearch];
        }
      }

      containerViewController2 = [(ActionCoordinator *)self containerViewController];
      chromeViewController = [containerViewController2 chromeViewController];
      [chromeViewController setNeedsUpdateComponent:@"lookAroundButton" animated:1];
    }

    else
    {
      if (self->_placeCardForRoutePlanningViewController == stateCopy)
      {
        [(ActionCoordinator *)self _setRouteSelectionMapState];
        containerViewController3 = [(ActionCoordinator *)self containerViewController];
        [containerViewController3 popLastViewControllerFromViewController:stateCopy animated:1 useDefaultContaineeLayout:0];

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
      if (routePlanningOverviewViewController == stateCopy)
      {
        selfCopy2 = self;
        goto LABEL_5;
      }

      if (self->_autosharingVC == stateCopy)
      {
        currentSession = [(PlatformController *)self->_platformController currentSession];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v44 = currentSession;
        }

        else
        {
          v44 = 0;
        }

        mapView2 = v44;

        contacts = [(SharedTripAutosharingContaineeViewController *)self->_autosharingVC contacts];
        [mapView2 setAutomaticSharingContacts:contacts];
LABEL_55:

        goto LABEL_46;
      }

      if (self->_lineCardViewController == stateCopy || self->_lineCardForRoutePlanningViewController == stateCopy)
      {
        [(TransitLineSelectionActionController *)self->_lineSelectionAction deactivateWithContext:0];
        goto LABEL_6;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(ActionCoordinator *)self closeVenueFloorCardViewController:stateCopy];
        goto LABEL_6;
      }

      if (self->_simpleListResultsVC != stateCopy)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          containerViewController4 = [(ActionCoordinator *)self containerViewController];
          [containerViewController4 popLastViewControllerFromViewController:stateCopy animated:1 useDefaultContaineeLayout:0];

          [(ActionCoordinator *)self updateRouteAnnotations];
          goto LABEL_6;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          containerViewController5 = [(ActionCoordinator *)self containerViewController];
          [containerViewController5 popLastViewControllerFromViewController:stateCopy animated:1 useDefaultContaineeLayout:0];

          searchPinsManager2 = [(ActionCoordinator *)self searchPinsManager];
          [searchPinsManager2 clearSearchPins];
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
          searchPinsManager2 = [(ActionCoordinator *)self containerViewController];
          [searchPinsManager2 popLastViewControllerFromViewController:stateCopy animated:1 useDefaultContaineeLayout:0];
LABEL_48:

          goto LABEL_6;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_47;
        }

        contacts = [(ActionCoordinator *)self mapSelectionManager];
        mapView2 = [contacts mapView];
        [mapView2 _deselectLabelMarkerAnimated:1];
        goto LABEL_55;
      }
    }

    contacts = [(ActionCoordinator *)self mapSelectionManager];
    [contacts clearSelection];
LABEL_46:

    goto LABEL_47;
  }

  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  _maps_mapsSceneDelegate = [WeakRetained _maps_mapsSceneDelegate];
  topMostPresentedViewController = [_maps_mapsSceneDelegate topMostPresentedViewController];

  if (([(RouteIncidentsViewController *)topMostPresentedViewController conformsToProtocol:&OBJC_PROTOCOL___ContaineeProtocol]& 1) != 0)
  {

    goto LABEL_10;
  }

  if (topMostPresentedViewController != stateCopy)
  {
    presentedViewController = [(RouteIncidentsViewController *)stateCopy presentedViewController];

    if (presentedViewController == topMostPresentedViewController)
    {
      [(RouteIncidentsViewController *)topMostPresentedViewController dismissViewControllerAnimated:1 completion:0];
    }
  }

LABEL_6:
}

- (void)viewController:(id)controller removeMapsSuggestionsEntry:(id)entry sourceView:(id)view sourceRect:(CGRect)rect startBlock:(id)block completionBlock:(id)completionBlock
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  controllerCopy = controller;
  entryCopy = entry;
  viewCopy = view;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_10091A420;
  v57[3] = &unk_10162E8B0;
  v22 = blockCopy;
  v59 = v22;
  v23 = entryCopy;
  v58 = v23;
  v24 = completionBlockCopy;
  v60 = v24;
  v25 = objc_retainBlock(v57);
  availableRemovalBehaviors = [v23 availableRemovalBehaviors];
  v27 = availableRemovalBehaviors;
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x3032000000;
  v55[3] = sub_100907968;
  v55[4] = sub_100907978;
  v56 = 0;
  if (availableRemovalBehaviors > 3)
  {
    if (availableRemovalBehaviors == 4 || availableRemovalBehaviors == 8)
    {
      v28 = 1;
      goto LABEL_7;
    }
  }

  else
  {
    if ((availableRemovalBehaviors - 1) < 2)
    {
      v28 = 0;
LABEL_7:
      (v25[2])(v25, availableRemovalBehaviors, v28);
      goto LABEL_14;
    }

    if (!availableRemovalBehaviors)
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

  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  traitCollection = [WeakRetained traitCollection];
  v32 = [traitCollection userInterfaceIdiom] == 5;

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

  if (viewCopy)
  {
    popoverPresentationController = [v34 popoverPresentationController];
    [popoverPresentationController setSourceView:viewCopy];

    popoverPresentationController2 = [v34 popoverPresentationController];
    [popoverPresentationController2 setSourceRect:{x, y, width, height}];

    popoverPresentationController3 = [v34 popoverPresentationController];
    [popoverPresentationController3 setPermittedArrowDirections:12];
  }

  containerViewController = [(ActionCoordinator *)selfCopy containerViewController];
  [containerViewController _maps_topMostPresentViewController:v34 animated:1 completion:0];

LABEL_14:
  _Block_object_dispose(v55, 8);
}

- (void)viewController:(id)controller selectDroppedPin:(id)pin
{
  controllerCopy = controller;
  pinCopy = pin;
  v7 = pinCopy;
  if (pinCopy && [pinCopy type] == 3)
  {
    mapSelectionManager = [(ActionCoordinator *)self mapSelectionManager];
    [mapSelectionManager selectSearchResult:v7 animated:1];
  }
}

- (void)viewController:(id)controller selectParkedCar:(id)car andPerformAction:(int64_t)action selectPOIOnMap:(BOOL)map
{
  mapCopy = map;
  carCopy = car;
  v10 = +[ParkedCarManager sharedManager];
  [v10 informCoreRoutineOfEngagementWithParkedCar:carCopy];

  parkedCarViewController = self->_parkedCarViewController;
  if (!parkedCarViewController)
  {
    v12 = objc_alloc_init(ParkedCarInfoCardViewController);
    v13 = self->_parkedCarViewController;
    self->_parkedCarViewController = v12;

    [(InfoCardViewController *)self->_parkedCarViewController setContaineeDelegate:self];
    [(ParkedCarInfoCardViewController *)self->_parkedCarViewController setActionDelegate:self];
    appCoordinator = [(ActionCoordinator *)self appCoordinator];
    [(ParkedCarInfoCardViewController *)self->_parkedCarViewController setShareDelegate:appCoordinator];

    parkedCarViewController = self->_parkedCarViewController;
  }

  [(ParkedCarInfoCardViewController *)parkedCarViewController setParkedCar:carCopy];
  containerViewController = [(ActionCoordinator *)self containerViewController];
  currentViewController = [containerViewController currentViewController];
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

  mapView = [(ActionCoordinator *)self mapView];
  [carCopy coordinate];
  v23 = v22;
  v25 = v24;
  [mapView convertCoordinate:mapView toPointToView:?];
  v27 = v26;
  v29 = v28;
  [mapView bounds];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  [mapView _edgeInsets];
  v39 = v38 + v33;
  v42 = v35 - (v40 + v41);
  v69.size.height = v37 - (v38 + v43);
  v69.origin.x = v40 + v31;
  v69.origin.y = v39;
  v69.size.width = v42;
  v68.x = v27;
  v68.y = v29;
  v44 = CGRectContainsPoint(v69, v68);
  [carCopy horizontalAccuracy];
  v45 = 1000.0;
  v46 = 1000.0;
  if (v47 > 1000.0)
  {
    [carCopy horizontalAccuracy];
    v46 = v48;
  }

  [carCopy horizontalAccuracy];
  if (v49 > 1000.0)
  {
    [carCopy horizontalAccuracy];
    v45 = v50;
  }

  v67.latitude = v23;
  v67.longitude = v25;
  MKCoordinateRegionMakeWithDistance(v67, v46, v45);
  MKMapRectForCoordinateRegion();
  [mapView mapRectThatFits:?];
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  [mapView visibleMapRect];
  v61 = fmax(v59, v56) / fmin(v60, v58);
  if (v61 <= 4.0 && v44)
  {
LABEL_17:
    if (!mapCopy)
    {
      goto LABEL_19;
    }

LABEL_18:
    searchPinsManager = [(ActionCoordinator *)self searchPinsManager];
    customPOIsController = [searchPinsManager customPOIsController];
    v65 = +[ParkedCar personalizedItemKey];
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_10091AEE0;
    v66[3] = &unk_10162E860;
    v66[4] = self;
    [customPOIsController customFeatureForKey:v65 completion:v66];

    goto LABEL_19;
  }

  if (v61 <= 4.0)
  {
    [mapView setCenterCoordinate:1 animated:{v23, v25}];
    goto LABEL_17;
  }

  [mapView setVisibleMapRect:1 animated:{v52, v54, v56, v58}];
  if (mapCopy)
  {
    goto LABEL_18;
  }

LABEL_19:
  [(ParkedCarInfoCardViewController *)self->_parkedCarViewController performAction:action];
}

- (void)viewController:(id)controller displayTableBookingFor:(id)for
{
  forCopy = for;
  currentViewController = [(ActionCoordinator *)self currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    currentViewController2 = [(ActionCoordinator *)self currentViewController];
    placeCardItem = [currentViewController2 placeCardItem];
    v9 = [forCopy isEqual:placeCardItem];

    if (v9)
    {
      [currentViewController2 setShouldPresentSecondaryActionWhenReady:1];
      goto LABEL_6;
    }
  }

  currentViewController2 = [(ActionCoordinator *)self placeCardViewController];
  [currentViewController2 resetState];
  [currentViewController2 setPlaceCardItem:forCopy withHistory:1];
  [currentViewController2 setShouldPresentSecondaryActionWhenReady:1];
  [(ActionCoordinator *)self presentPlaceCard:currentViewController2];
  appCoordinator = [(ActionCoordinator *)self appCoordinator];
  [appCoordinator setNeedsUserActivityUpdate];

LABEL_6:
}

- (void)viewController:(id)controller showCollectionWithID:(id)d
{
  dCopy = d;
  controllerCopy = controller;
  v8 = +[CollectionManager sharedManager];
  v9 = [v8 collectionWithIdentifier:dCopy];

  if (v9)
  {
    [(ActionCoordinator *)self viewController:controllerCopy showCollection:v9];
  }

  else
  {
    [(ActionCoordinator *)self viewControllerShowCollections:controllerCopy];
  }
}

- (void)viewController:(id)controller showFavoritesType:(int64_t)type
{
  controllerCopy = controller;
  v7 = +[CollectionManager sharedManager];
  v8 = [v7 collectionForFavoritesType:type];

  if (v8)
  {
    [(ActionCoordinator *)self viewController:controllerCopy showCollection:v8];
  }

  else
  {
    [(ActionCoordinator *)self viewControllerShowCollections:controllerCopy];
  }
}

- (void)viewController:(id)controller presentRelatedMapItems:(id)items withTitle:(id)title originalMapItem:(id)item analyticsDelegate:(id)delegate
{
  controllerCopy = controller;
  itemsCopy = items;
  titleCopy = title;
  itemCopy = item;
  delegateCopy = delegate;
  if (sub_10000FA08(controllerCopy) == 5 && ([itemCopy _venueInfo], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "venueFeatureType"), v17, v18 == 1))
  {
    _browseCategories = [itemCopy _browseCategories];
    firstObject = [_browseCategories firstObject];

    v21 = [[VenueSearchCardItem alloc] initWithMapItem:itemCopy searchCategory:firstObject];
    [(ActionCoordinator *)self viewController:controllerCopy presentVenueWithVenueCardItem:v21 source:4];
  }

  else
  {
    v35 = titleCopy;
    v36 = controllerCopy;
    v22 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [itemsCopy count]);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v23 = itemsCopy;
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
    appCoordinator = [(ActionCoordinator *)self appCoordinator];
    v31 = [(SimpleResultsViewController *)v29 initWithShareDelegate:appCoordinator];

    [(SimpleResultsViewController *)v31 setResultsDelegate:self];
    [(ContaineeViewController *)v31 setContaineeDelegate:self];
    [(SimpleResultsViewController *)v31 setEnableQuickActionMenu:1];
    titleCopy = v35;
    [(SimilarResultsViewController *)v31 setHeaderTitle:v35];
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    [WeakRetained presentController:v31];

    [(SimpleResultsViewController *)v31 setSearchResults:v22];
    [(SimilarResultsViewController *)v31 setOriginalMapItem:itemCopy];
    [(SimilarResultsViewController *)v31 setAnalyticsDelegate:delegateCopy];
    v33 = [SearchInfo searchInfoWithResults:v22];
    searchPinsManager = [(ActionCoordinator *)self searchPinsManager];
    [searchPinsManager setSearchPinsFromSearchInfo:v33 scrollToResults:1 displayPlaceCardForResult:0 animated:1 completion:0];

    controllerCopy = v36;
  }
}

- (void)viewController:(id)controller presentPlacesForMapItem:(id)item searchCategory:(id)category source:(unint64_t)source
{
  categoryCopy = category;
  itemCopy = item;
  controllerCopy = controller;
  v13 = [[PlacesSearchCardItem alloc] initWithMapItem:itemCopy searchCategory:categoryCopy];

  [(ActionCoordinator *)self viewController:controllerCopy presentPlacesWithPlacesCardItem:v13 source:source];
}

- (void)viewController:(id)controller presentParentMapItem:(id)item
{
  itemCopy = item;
  _venueInfo = [itemCopy _venueInfo];

  if (_venueInfo)
  {
    [(ActionCoordinator *)self viewController:0 selectMapItem:itemCopy address:0 addToHistory:1 source:4];
LABEL_5:
    v8 = [[SearchResult alloc] initWithMapItem:itemCopy];
    v12 = v8;
    v9 = [NSArray arrayWithObjects:&v12 count:1];
    v10 = [SearchInfo searchInfoWithResults:v9];

    searchPinsManager = [(ActionCoordinator *)self searchPinsManager];
    [searchPinsManager setSearchPinsFromSearchInfo:v10 scrollToResults:1 displayPlaceCardForResult:v8 animated:1 completion:0];

    goto LABEL_6;
  }

  if (![itemCopy _hasHikeInfo])
  {
    goto LABEL_5;
  }

  appCoordinator = [(ActionCoordinator *)self appCoordinator];
  [appCoordinator enterRouteCreationWithMapItem:itemCopy completion:0];

LABEL_6:
}

- (void)viewController:(id)controller showOfflineMapRegionSelectorForRegion:(id)region name:(id)name route:(id)route muid:(unint64_t)muid shouldUseSessionlessAnalytics:(BOOL)analytics dismissalBlock:(id)block postDismissalBlock:(id)self0
{
  analyticsCopy = analytics;
  controllerCopy = controller;
  regionCopy = region;
  nameCopy = name;
  routeCopy = route;
  blockCopy = block;
  dismissalBlockCopy = dismissalBlock;
  if (GEOSupportsOfflineMaps())
  {
    v18 = analyticsCopy;
    v19 = +[MapsOfflineUIHelper sharedHelper];
    alertControllerForAttemptedRegionDownload = [v19 alertControllerForAttemptedRegionDownload];

    containerViewController = [(ActionCoordinator *)self containerViewController];
    chromeViewController = [containerViewController chromeViewController];
    v23 = chromeViewController;
    if (alertControllerForAttemptedRegionDownload)
    {
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_10091B9BC;
      v34[3] = &unk_10165BA38;
      v35 = blockCopy;
      v36 = dismissalBlockCopy;
      [v23 _maps_topMostPresentViewController:alertControllerForAttemptedRegionDownload animated:1 completion:v34];
    }

    else
    {
      muidCopy = muid;
      topContext = [chromeViewController topContext];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        v26 = [[OfflineRegionSelectorContext alloc] initWithRegion:regionCopy name:nameCopy];
        [(OfflineRegionSelectorContext *)v26 setShouldUseSessionlessAnalytics:v18];
        [(OfflineRegionSelectorContext *)v26 setRoute:routeCopy];
        [(OfflineRegionSelectorContext *)v26 setMuid:muidCopy];
        [(OfflineRegionSelectorContext *)v26 setDismissalBlock:blockCopy];
        [(OfflineRegionSelectorContext *)v26 setPostDismissalBlock:dismissalBlockCopy];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(OfflineRegionSelectorContext *)v26 setDownloadDelegate:controllerCopy];
        }

        containerViewController2 = [(ActionCoordinator *)self containerViewController];
        chromeViewController2 = [containerViewController2 chromeViewController];
        [chromeViewController2 pushContext:v26 animated:1 completion:0];
      }
    }
  }
}

- (void)viewController:(id)controller showOfflineMapRegionSelectorForRegion:(id)region name:(id)name route:(id)route muid:(unint64_t)muid shouldUseSessionlessAnalytics:(BOOL)analytics shouldShowDataManagementAfterDownload:(BOOL)download shouldShowDataManagementAfterDownloadIfRegionDiffers:(BOOL)self0 dismissalBlock:(id)self1
{
  analyticsCopy = analytics;
  controllerCopy = controller;
  regionCopy = region;
  nameCopy = name;
  routeCopy = route;
  blockCopy = block;
  objc_initWeak(&location, self);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10091BBE8;
  v25[3] = &unk_10162E838;
  objc_copyWeak(&v29, &location);
  v21 = blockCopy;
  v28 = v21;
  downloadCopy = download;
  differsCopy = differs;
  v22 = regionCopy;
  v26 = v22;
  v23 = controllerCopy;
  v27 = v23;
  [(ActionCoordinator *)self viewController:v23 showOfflineMapRegionSelectorForRegion:v22 name:nameCopy route:routeCopy muid:muid shouldUseSessionlessAnalytics:analyticsCopy dismissalBlock:v25 postDismissalBlock:0];

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

- (void)_viewControllerShowOfflineMaps:(id)maps completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = +[MapsOfflineUIHelper sharedHelper];
  alertControllerForAttemptedDataManagementDisplay = [v6 alertControllerForAttemptedDataManagementDisplay];

  containerViewController = [(ActionCoordinator *)self containerViewController];
  chromeViewController = [containerViewController chromeViewController];
  v10 = chromeViewController;
  if (alertControllerForAttemptedDataManagementDisplay)
  {
    [chromeViewController _maps_topMostPresentViewController:alertControllerForAttemptedDataManagementDisplay animated:1 completion:0];

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }

  else
  {
    topContext = [chromeViewController topContext];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      if (handlerCopy)
      {
        containerViewController2 = [(ActionCoordinator *)self containerViewController];
        chromeViewController2 = [containerViewController2 chromeViewController];
        topContext2 = [chromeViewController2 topContext];
        (handlerCopy)[2](handlerCopy, topContext2);
      }
    }

    else
    {
      v16 = objc_alloc_init(OfflineMapsManagementContext);
      containerViewController3 = [(ActionCoordinator *)self containerViewController];
      chromeViewController3 = [containerViewController3 chromeViewController];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10091BF44;
      v20[3] = &unk_101661090;
      v21 = v16;
      v22 = handlerCopy;
      v19 = v16;
      [chromeViewController3 pushContext:v19 animated:1 completion:v20];
    }
  }
}

- (void)viewControllerShowPhotoThumbnailGalleryWithMapItem:(id)item albumIndex:(unint64_t)index
{
  itemCopy = item;
  _geoMapItem = [itemCopy _geoMapItem];
  _captionedPhotoAlbums = [_geoMapItem _captionedPhotoAlbums];
  v9 = [_captionedPhotoAlbums count];

  if (v9 < 2)
  {
    [UGCPOIEnrichmentCoordinator photoThumbnailGalleryCoordinatorWithMapItem:itemCopy withStartingIndex:0];
  }

  else
  {
    [UGCPOIEnrichmentCoordinator photoThumbnailGalleryCoordinatorWithMapItem:itemCopy albumIndex:index];
  }
  v11 = ;

  [v11 setDelegate:self];
  containerViewController = [(ActionCoordinator *)self containerViewController];
  [v11 setPresentingViewController:containerViewController];

  [v11 setPresentationContext:1];
  [(ActionCoordinator *)self viewControllerPresentPOIEnrichmentWithCoordinator:v11];
}

- (void)viewControllerShowCitySelectorFromGuideLocation:(id)location
{
  locationCopy = location;
  v5 = [[CitySelectorViewController alloc] initWithSourceGuideLocation:locationCopy];

  newTraits = [(ActionCoordinator *)self newTraits];
  [(CitySelectorViewController *)v5 setTraits:newTraits];

  [(ContaineeViewController *)v5 setContaineeDelegate:self];
  [(CitySelectorViewController *)v5 setActionDelegate:self];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained presentController:v5 animated:1];

  if (self->_citySelectorVC)
  {
    containerViewController = [(ActionCoordinator *)self containerViewController];
    [containerViewController removeControllerFromStack:self->_citySelectorVC];

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
  currentViewController = [WeakRetained currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v6 = objc_alloc_init(AllCollectionsViewController);
    newTraits = [(ActionCoordinator *)self newTraits];
    [(AllCollectionsViewController *)v6 setTraits:newTraits];

    [(ContaineeViewController *)v6 setContaineeDelegate:self];
    [(AllCollectionsViewController *)v6 setActionDelegate:self];
    v8 = objc_loadWeakRetained(&self->_containerViewController);
    [v8 presentController:v6 animated:1];

    if (self->_allCollectionsVC)
    {
      containerViewController = [(ActionCoordinator *)self containerViewController];
      [containerViewController removeControllerFromStack:self->_allCollectionsVC];

      allCollectionsVC = self->_allCollectionsVC;
    }

    else
    {
      allCollectionsVC = 0;
    }

    self->_allCollectionsVC = v6;
  }
}

- (void)viewControllerShowPublisherWithID:(id)d numberOfCollections:(unint64_t)collections replaceViewController:(BOOL)controller
{
  controllerCopy = controller;
  dCopy = d;
  v9 = [PublisherViewController alloc];
  newTraits = [(ActionCoordinator *)self newTraits];
  v11 = [(PublisherViewController *)v9 initWithPublisherId:dCopy numberOfCollections:collections withTraits:newTraits];

  [(ContaineeViewController *)v11 setContaineeDelegate:self];
  [(PublisherViewController *)v11 setActionDelegate:self];
  appCoordinator = [(ActionCoordinator *)self appCoordinator];
  [(PublisherViewController *)v11 setShareDelegate:appCoordinator];

  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v14 = WeakRetained;
  if (controllerCopy)
  {
    [WeakRetained replaceCurrentWithController:v11];
  }

  else
  {
    [WeakRetained presentController:v11 animated:1];
  }

  if (self->_publisherVC)
  {
    containerViewController = [(ActionCoordinator *)self containerViewController];
    [containerViewController removeControllerFromStack:self->_publisherVC];

    publisherVC = self->_publisherVC;
  }

  else
  {
    publisherVC = 0;
  }

  self->_publisherVC = v11;
}

- (void)viewController:(id)controller showGuidesHome:(id)home
{
  controllerCopy = controller;
  homeCopy = home;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && self->_citySelectorVC)
  {
    containerViewController = [(ActionCoordinator *)self containerViewController];
    [containerViewController popLastViewControllerFromViewController:self->_citySelectorVC animated:1 useDefaultContaineeLayout:1];

    containerViewController2 = [(ActionCoordinator *)self containerViewController];
    v9 = [containerViewController2 controllerIsInStack:self->_guideHomeVC];

    if (v9)
    {
      guideHomeVC = self->_guideHomeVC;
LABEL_7:
      [(GuidesHomeViewController *)guideHomeVC setGuideLocation:homeCopy];
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

  [(ActionCoordinator *)self presentGuidesHomeWithGuideLocation:homeCopy];
LABEL_9:
}

- (void)viewControllerShowPublisher:(id)publisher replaceViewController:(BOOL)controller
{
  controllerCopy = controller;
  publisherCopy = publisher;
  v7 = [MKMapItemIdentifier alloc];
  identifier = [publisherCopy identifier];
  v10 = [v7 initWithGEOMapItemIdentifier:identifier];

  totalCollectionCount = [publisherCopy totalCollectionCount];
  [(ActionCoordinator *)self viewControllerShowPublisherWithID:v10 numberOfCollections:totalCollectionCount replaceViewController:controllerCopy];
}

- (void)viewController:(id)controller showCuratedCollectionsList:(id)list usingTitle:(id)title usingCollectionIds:(id)ids completion:(id)completion
{
  completionCopy = completion;
  idsCopy = ids;
  titleCopy = title;
  listCopy = list;
  v15 = [CuratedCollectionsListViewController alloc];
  newTraits = [(ActionCoordinator *)self newTraits];
  v17 = [(CuratedCollectionsListViewController *)v15 initWithCuratedCollections:listCopy usingTitle:titleCopy usingCollectionIds:idsCopy withTraits:newTraits];

  [(ContaineeViewController *)v17 setContaineeDelegate:self];
  [(ControlContaineeViewController *)v17 setDelegate:self];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_10091C720;
  v27 = &unk_101655D58;
  v19 = v17;
  v28 = v19;
  v20 = completionCopy;
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

- (void)showCuratedCollectionViewController:(id)controller replaceViewController:(BOOL)viewController completion:(id)completion
{
  viewControllerCopy = viewController;
  controllerCopy = controller;
  completionCopy = completion;
  [controllerCopy setContaineeDelegate:self];
  [controllerCopy setActionDelegate:self];
  appCoordinator = [(ActionCoordinator *)self appCoordinator];
  [controllerCopy setShareDelegate:appCoordinator];

  [controllerCopy setMapModificationDelegate:self];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v12 = WeakRetained;
  if (viewControllerCopy)
  {
    [WeakRetained replaceCurrentWithController:controllerCopy];

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10091C8B8;
    v13[3] = &unk_10165F438;
    v14 = completionCopy;
    [v12 presentController:controllerCopy animated:1 completion:v13];
  }
}

- (void)viewController:(id)controller showFullyClientizedCuratedCollection:(id)collection replaceViewController:(BOOL)viewController
{
  viewControllerCopy = viewController;
  collectionCopy = collection;
  v8 = [[CuratedCollectionViewController alloc] initWithFullyClientizedPlaceCollection:collectionCopy];

  [(ActionCoordinator *)self showCuratedCollectionViewController:v8 replaceViewController:viewControllerCopy completion:0];
  if (self->_curatedCollectionsVC)
  {
    containerViewController = [(ActionCoordinator *)self containerViewController];
    [containerViewController removeControllerFromStack:self->_curatedCollectionsVC];

    curatedCollectionsVC = self->_curatedCollectionsVC;
  }

  else
  {
    curatedCollectionsVC = 0;
  }

  self->_curatedCollectionsVC = v8;
}

- (void)viewController:(id)controller showCuratedCollectionIdentifier:(id)identifier replaceViewController:(BOOL)viewController completion:(id)completion
{
  viewControllerCopy = viewController;
  completionCopy = completion;
  identifierCopy = identifier;
  v11 = [[CuratedCollectionViewController alloc] initWithCuratedCollectionIdentifier:identifierCopy];

  [(ActionCoordinator *)self showCuratedCollectionViewController:v11 replaceViewController:viewControllerCopy completion:completionCopy];
  if (self->_curatedCollectionsVC)
  {
    containerViewController = [(ActionCoordinator *)self containerViewController];
    [containerViewController removeControllerFromStack:self->_curatedCollectionsVC];

    curatedCollectionsVC = self->_curatedCollectionsVC;
  }

  else
  {
    curatedCollectionsVC = 0;
  }

  self->_curatedCollectionsVC = v11;
}

- (void)viewController:(id)controller showCuratedCollection:(id)collection replaceViewController:(BOOL)viewController completion:(id)completion
{
  viewControllerCopy = viewController;
  completionCopy = completion;
  collectionCopy = collection;
  controllerCopy = controller;
  v13 = [MKMapItemIdentifier alloc];
  collectionIdentifier = [collectionCopy collectionIdentifier];

  v15 = [v13 initWithGEOMapItemIdentifier:collectionIdentifier];
  [(ActionCoordinator *)self viewController:controllerCopy showCuratedCollectionIdentifier:v15 replaceViewController:viewControllerCopy completion:completionCopy];
}

- (void)collectionPickerNewCollection:(id)collection
{
  collectionPicker = self->_collectionPicker;
  self->_collectionPicker = 0;
  collectionCopy = collection;

  editSession = [collectionCopy editSession];

  [(ActionCoordinator *)self viewController:0 createNewCollectionWithSession:editSession];
}

- (void)collectionPickerClosed:(id)closed
{
  collectionPicker = self->_collectionPicker;
  self->_collectionPicker = 0;
}

- (void)viewController:(id)controller presentCollectionPickerContaineeViewController:(id)viewController
{
  viewControllerCopy = viewController;
  [viewControllerCopy setContaineeDelegate:self];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained presentController:viewControllerCopy animated:1 completion:0];
}

- (void)viewController:(id)controller editCollection:(id)collection sourceView:(id)view sourceRect:(CGRect)rect completion:(id)completion
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  controllerCopy = controller;
  collectionCopy = collection;
  viewCopy = view;
  completionCopy = completion;
  collectionEditCoordinator = self->_collectionEditCoordinator;
  if (collectionEditCoordinator)
  {
    [(MacCollectionEditCoordinator *)collectionEditCoordinator dismiss];
  }

  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  view = [WeakRetained view];
  [view convertRect:viewCopy fromView:{x, y, width, height}];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  objc_initWeak(&location, self);
  v30 = [MacCollectionEditCoordinator alloc];
  v31 = objc_loadWeakRetained(&self->_containerViewController);
  view2 = [v31 view];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10091CE3C;
  v36[3] = &unk_101660648;
  objc_copyWeak(&v38, &location);
  v33 = completionCopy;
  v37 = v33;
  v34 = [(MacCollectionEditCoordinator *)v30 initWithCollection:collectionCopy presentingViewController:v31 sourceView:view2 sourceRect:v36 completion:v23, v25, v27, v29];
  v35 = self->_collectionEditCoordinator;
  self->_collectionEditCoordinator = v34;

  [(MacCollectionEditCoordinator *)self->_collectionEditCoordinator present];
  objc_destroyWeak(&v38);
  objc_destroyWeak(&location);
}

- (void)viewController:(id)controller editNameOfMapItem:(id)item saveHandler:(id)handler cancelHandler:(id)cancelHandler
{
  v8 = [UIViewController _maps_viewControllerForRenamingMapItem:item saveHandler:handler cancelHandler:cancelHandler];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained _maps_topMostPresentViewController:v8 animated:1 completion:0];
}

- (void)viewController:(id)controller createNewCollectionWithSession:(id)session
{
  controllerCopy = controller;
  sessionCopy = session;
  v8 = +[MapsOfflineUIHelper sharedHelper];
  alertControllerForAttemptedAddCollection = [v8 alertControllerForAttemptedAddCollection];

  if (!alertControllerForAttemptedAddCollection)
  {
    if (!+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
    {
      WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
      v13 = sub_10000FA08(WeakRetained);

      if (v13 == 5)
      {
        [(ActionCoordinator *)self viewController:controllerCopy addItemsFromACToCollection:sessionCopy];
        goto LABEL_22;
      }
    }

    collection = [sessionCopy collection];
    if ([collection handlerType] == 3)
    {
      v15 = 256;
    }

    else if (self->_searchModeViewController == controllerCopy)
    {
      v15 = 8;
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (controllerCopy)
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

    v18 = [[CollectionCreateViewController alloc] initWithEditSession:sessionCopy];
    [(ContaineeViewController *)v18 setContaineeDelegate:self];
    [(CollectionCreateViewController *)v18 setTarget:v15];
    collectionCreateVCDidDismissHandler = self->_collectionCreateVCDidDismissHandler;
    self->_collectionCreateVCDidDismissHandler = 0;

    mapItem = objc_loadWeakRetained(&self->_containerViewController);
    if (sub_10000FA08(mapItem) == 5)
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

      placeCardItem = [(SearchViewController *)controllerCopy placeCardItem];
      mapItem = [placeCardItem mapItem];

      if (mapItem)
      {
        objc_initWeak(&location, self);
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_10091D1F8;
        v26[3] = &unk_101661340;
        objc_copyWeak(&v28, &location);
        v27 = mapItem;
        v23 = objc_retainBlock(v26);
        v24 = self->_collectionCreateVCDidDismissHandler;
        self->_collectionCreateVCDidDismissHandler = v23;

        objc_destroyWeak(&v28);
        objc_destroyWeak(&location);
      }
    }

    goto LABEL_21;
  }

  containerViewController = [(ActionCoordinator *)self containerViewController];
  chromeViewController = [containerViewController chromeViewController];
  [chromeViewController _maps_topMostPresentViewController:alertControllerForAttemptedAddCollection animated:1 completion:0];

LABEL_22:
}

- (void)viewController:(id)controller pickCollectionWithSession:(id)session sourceView:(id)view sourceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  controllerCopy = controller;
  sessionCopy = session;
  viewCopy = view;
  height = [[CollectionPicker alloc] initWithCollectionEditSession:sessionCopy sourceView:viewCopy sourceRect:x, y, width, height];
  collectionPicker = self->_collectionPicker;
  self->_collectionPicker = height;

  [(CollectionPicker *)self->_collectionPicker setDelegate:self];
  objc_initWeak(&location, self);
  v18 = self->_collectionPicker;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10091D42C;
  v22[3] = &unk_10164F880;
  objc_copyWeak(&v24, &location);
  v19 = controllerCopy;
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

- (void)viewControllerShowAddItemsFromACToLibraryView:(id)view
{
  v4 = +[MapsOfflineUIHelper sharedHelper];
  alertControllerForAttemptedAddCollection = [v4 alertControllerForAttemptedAddCollection];

  if (alertControllerForAttemptedAddCollection)
  {
    containerViewController = [(ActionCoordinator *)self containerViewController];
    WeakRetained = [(LibraryAddCollectionItemViewController *)containerViewController chromeViewController];
    [WeakRetained _maps_topMostPresentViewController:alertControllerForAttemptedAddCollection animated:1 completion:0];
  }

  else
  {
    containerViewController = [[_TtC4Maps38LibraryAddCollectionItemViewController alloc] initWithNibName:0 bundle:0];
    [(ContaineeViewController *)containerViewController setContaineeDelegate:self];
    [(AddFromACViewController *)containerViewController setAddFromACDelegate:self];
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    [WeakRetained presentController:containerViewController animated:1];
  }
}

- (void)viewController:(id)controller addItemsFromACToCollection:(id)collection
{
  collectionCopy = collection;
  if (collectionCopy)
  {
    v10 = collectionCopy;
    v6 = +[MapsOfflineUIHelper sharedHelper];
    alertControllerForAttemptedAddCollection = [v6 alertControllerForAttemptedAddCollection];

    if (alertControllerForAttemptedAddCollection)
    {
      containerViewController = [(ActionCoordinator *)self containerViewController];
      WeakRetained = [(CollectionAddViewController *)containerViewController chromeViewController];
      [WeakRetained _maps_topMostPresentViewController:alertControllerForAttemptedAddCollection animated:1 completion:0];
    }

    else
    {
      containerViewController = [[CollectionAddViewController alloc] initWithNibName:0 bundle:0];
      [(ContaineeViewController *)containerViewController setContaineeDelegate:self];
      [(AddFromACViewController *)containerViewController setAddFromACDelegate:self];
      [(CollectionAddViewController *)containerViewController setEditSession:v10];
      WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
      [WeakRetained presentController:containerViewController animated:1];
    }

    collectionCopy = v10;
  }
}

- (void)viewController:(id)controller editCollection:(id)collection
{
  collectionCopy = collection;
  containerViewController = [(ActionCoordinator *)self containerViewController];
  currentViewController = [containerViewController currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(ActionCoordinator *)self dismissPlaceCardViewController:self->_placeCardViewController];
  }

  [(SearchViewController *)self->_searchModeViewController editCollection:collectionCopy];
}

- (void)viewController:(id)controller showCollection:(id)collection completion:(id)completion
{
  controllerCopy = controller;
  collectionCopy = collection;
  [CATransaction setFrameStallSkipRequest:1];
  if ([collectionCopy handlerType] == 1)
  {
    [(ActionCoordinator *)self viewController:controllerCopy createNewCollectionWithSession:0];
    goto LABEL_20;
  }

  if ([collectionCopy handlerType] != 4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v8 = [[_TtC4Maps23UserGuideViewController alloc] initWithCollectionHandler:collectionCopy];
    [(UserGuideViewController *)v8 setActionDelegate:self];
    [(UserGuideViewController *)v8 setMapModificationDelegate:self];
    appCoordinator = [(ActionCoordinator *)self appCoordinator];
    [(UserGuideViewController *)v8 setShareDelegate:appCoordinator];

    [(UserGuideViewController *)v8 setSortOptionPickerDelegate:self];
    [(ContaineeViewController *)v8 setContaineeDelegate:self];
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    [WeakRetained presentController:v8 animated:1];

    curatedCollectionIdentifier2 = self->_userGuideVC;
    if (curatedCollectionIdentifier2)
    {
      v13 = objc_loadWeakRetained(&self->_containerViewController);
      [v13 removeControllerFromStack:curatedCollectionIdentifier2];
    }

    objc_storeStrong(&self->_userGuideVC, v8);
    showAction = [collectionCopy showAction];
    if (self->_searchModeViewController == controllerCopy)
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

    if ([collectionCopy handlerType] == 3)
    {
      v15 = 256;
    }

    else
    {
      v15 = v15;
    }

    v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [collectionCopy bucketedNumberOfItems]);
    v17 = [NSString stringWithFormat:@"%@", v16];

    [GEOAPPortal captureUserAction:showAction target:v15 value:v17];
    goto LABEL_18;
  }

  v8 = collectionCopy;
  curatedCollectionIdentifier = [(UserGuideViewController *)v8 curatedCollectionIdentifier];

  if (curatedCollectionIdentifier)
  {
    curatedCollectionIdentifier2 = [(UserGuideViewController *)v8 curatedCollectionIdentifier];
    [(ActionCoordinator *)self viewController:controllerCopy showCuratedCollectionIdentifier:curatedCollectionIdentifier2];
LABEL_18:
  }

LABEL_20:
}

- (void)viewControllerShowCollections:(id)collections
{
  [CATransaction setFrameStallSkipRequest:1];
  v6 = [[_TtC4Maps37UserGuidesListContaineeViewController alloc] initWithNibName:0 bundle:0];
  [(ContaineeViewController *)v6 setContaineeDelegate:self];
  [(UserGuidesListContaineeViewController *)v6 setActionDelegate:self];
  appCoordinator = [(ActionCoordinator *)self appCoordinator];
  [(UserGuidesListContaineeViewController *)v6 setShareDelegate:appCoordinator];

  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained presentController:v6 animated:1];
}

- (void)showWarmingSheetViewController:(int64_t)controller
{
  v5 = [[_TtC4Maps36LocationAuthenticationViewController alloc] initWithSheetType:1 actionFlow:controller actionHandler:&stru_10162E7A8];
  v3 = +[UIApplication sharedMapsDelegate];
  chromeViewController = [v3 chromeViewController];
  [chromeViewController _maps_topMostPresentViewController:v5 animated:1 completion:0];
}

- (void)viewControllerShowLibraryPlacesView:(id)view
{
  v6 = [[_TtC4Maps24PlaceItemsViewController alloc] initWithNibName:0 bundle:0];
  [(ContaineeViewController *)v6 setContaineeDelegate:self];
  [(PlaceItemsViewController *)v6 setActionDelegate:self];
  appCoordinator = [(ActionCoordinator *)self appCoordinator];
  [(PlaceItemsViewController *)v6 setShareDelegate:appCoordinator];

  [(PlaceItemsViewController *)v6 setSortOptionPickerDelegate:self];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained presentController:v6 animated:1];
}

- (void)viewControllerShowLibraryRootView:(id)view
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  currentViewController = [WeakRetained currentViewController];
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

- (void)shortcutEditSessionControllerFinished:(id)finished shortcutWasReplacedBy:(id)by
{
  finishedCopy = finished;
  byCopy = by;
  shortcutEditSessionController = self->_shortcutEditSessionController;
  self->_shortcutEditSessionController = 0;

  if (byCopy)
  {
    if (self->_placeCardViewController)
    {
      requestInitiator = [finishedCopy requestInitiator];
      placeCardViewController = self->_placeCardViewController;

      if (requestInitiator == placeCardViewController)
      {
        v10 = [SearchResult searchResultFromFavoriteItem:byCopy];
        mapSelectionManager = [(ActionCoordinator *)self mapSelectionManager];
        [mapSelectionManager injectAndSelectSearchResult:v10];
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

- (void)viewController:(id)controller editShortcut:(id)shortcut sourceView:(id)view sourceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  shortcutCopy = shortcut;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  view = [WeakRetained view];
  [view convertRect:viewCopy fromView:{x, y, width, height}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  shortcutEditSessionController = self->_shortcutEditSessionController;
  self->_shortcutEditSessionController = 0;

  shortcutEditSessionController = [(ActionCoordinator *)self shortcutEditSessionController];
  v25 = objc_loadWeakRetained(&self->_containerViewController);
  view2 = [v25 view];
  [shortcutEditSessionController editShortcut:shortcutCopy sourceView:view2 sourceRect:{v17, v19, v21, v23}];
}

- (void)viewController:(id)controller openTransitLineCard:(id)card sourceView:(id)view sourceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  cardCopy = card;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  view = [WeakRetained view];
  [view convertRect:viewCopy fromView:{x, y, width, height}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = sub_1005B1B14(cardCopy);
  v26 = objc_loadWeakRetained(&self->_containerViewController);
  view2 = [v26 view];
  [(ActionCoordinator *)self presentLineCardForItem:cardCopy loading:v24 sourceView:view2 sourceRect:v17, v19, v21, v23];
}

- (void)viewController:(id)controller removeShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  shortcutEditSessionController = [(ActionCoordinator *)self shortcutEditSessionController];
  [shortcutEditSessionController removeShortcut:shortcutCopy];
}

- (void)viewController:(id)controller editShortcut:(id)shortcut
{
  controllerCopy = controller;
  shortcutCopy = shortcut;
  v7 = +[MapsOfflineUIHelper sharedHelper];
  alertControllerForAttemptedShowMyShortcut = [v7 alertControllerForAttemptedShowMyShortcut];

  if (alertControllerForAttemptedShowMyShortcut)
  {
    containerViewController = [(ActionCoordinator *)self containerViewController];
    chromeViewController = [containerViewController chromeViewController];
    [chromeViewController _maps_topMostPresentViewController:alertControllerForAttemptedShowMyShortcut animated:1 completion:0];
  }

  else
  {
    shortcutEditSessionController = self->_shortcutEditSessionController;
    self->_shortcutEditSessionController = 0;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = controllerCopy;
    }

    else
    {
      v12 = 0;
    }

    shortcutEditSessionController = [(ActionCoordinator *)self shortcutEditSessionController];
    [shortcutEditSessionController setRequestInitiator:v12];

    containerViewController = [(ActionCoordinator *)self shortcutEditSessionController];
    [containerViewController editShortcut:shortcutCopy];
  }
}

- (void)viewController:(id)controller showAddShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  v5 = +[MapsOfflineUIHelper sharedHelper];
  alertControllerForAttemptedAddShortcut = [v5 alertControllerForAttemptedAddShortcut];

  if (alertControllerForAttemptedAddShortcut)
  {
    containerViewController = [(ActionCoordinator *)self containerViewController];
    WeakRetained = [(AddShortcutViewController *)containerViewController chromeViewController];
    [WeakRetained _maps_topMostPresentViewController:alertControllerForAttemptedAddShortcut animated:1 completion:0];
LABEL_5:

    goto LABEL_6;
  }

  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    containerViewController = [[AddShortcutViewController alloc] initWithShortcutEditSession:shortcutCopy];
    [(AddShortcutViewController *)containerViewController setDelegate:self];
    [(ContaineeViewController *)containerViewController setContaineeDelegate:self];
    shortcutEditSessionController = self->_shortcutEditSessionController;
    self->_shortcutEditSessionController = 0;

    shortcutEditSessionController = [(ActionCoordinator *)self shortcutEditSessionController];
    [(AddShortcutViewController *)containerViewController setSessionController:shortcutEditSessionController];

    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    [WeakRetained presentController:containerViewController animated:1];
    goto LABEL_5;
  }

  containerViewController = [(ActionCoordinator *)self shortcutEditSessionController];
  [(AddShortcutViewController *)containerViewController showAddShortcut:shortcutCopy];
LABEL_6:
}

- (void)viewControllerShowMyShortcuts:(id)shortcuts
{
  v6 = [[_TtC4Maps25PinnedItemsViewController alloc] initWithNibName:0 bundle:0];
  [(ContaineeViewController *)v6 setContaineeDelegate:self];
  [(PinnedItemsViewController *)v6 setActionDelegate:self];
  appCoordinator = [(ActionCoordinator *)self appCoordinator];
  [(PinnedItemsViewController *)v6 setShareDelegate:appCoordinator];

  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained presentController:v6 animated:1];
}

- (void)viewControllerShowMyRecents:(id)recents includeRecentSearches:(BOOL)searches
{
  searchesCopy = searches;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  currentViewController = [WeakRetained currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v11 = [[_TtC4Maps32MyRecentsContaineeViewController alloc] initIncludingRecentSearches:searchesCopy];
    [v11 setContaineeDelegate:self];
    appCoordinator = [(ActionCoordinator *)self appCoordinator];
    [v11 setShareDelegate:appCoordinator];

    [v11 setActionDelegate:self];
    v10 = objc_loadWeakRetained(&self->_containerViewController);
    [v10 presentController:v11 animated:1];
  }
}

- (void)viewController:(id)controller enterFlyoverForMapItem:(id)item
{
  itemCopy = item;
  controllerCopy = controller;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 postNotificationName:@"SearchViewPreventAutoPresentingKeyboard_rdar_126940251" object:0];
  }

  appCoordinator = [(ActionCoordinator *)self appCoordinator];
  [appCoordinator enterFlyoverForMapItem:itemCopy];
}

- (void)viewController:(id)controller selectTransitLineItem:(id)item zoomToMapRegion:(BOOL)region preferredLayout:(unint64_t)layout
{
  regionCopy = region;
  itemCopy = item;
  lineCardVC = [(ActionCoordinator *)self lineCardVC];
  labelMarker = [lineCardVC labelMarker];
  [(ActionCoordinator *)self presentLineCardForItem:itemCopy labelMarker:labelMarker loading:sub_1005B1B14(itemCopy) overDisambiguation:0 preferredLayout:layout];
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
  v21 = itemCopy;
  v22 = lineCardVC;
  v23 = labelMarker;
  layoutCopy = layout;
  v17 = labelMarker;
  v18 = lineCardVC;
  v19 = itemCopy;
  [(TransitLineSelectionActionController *)lineSelectionAction selectLine:v19 zoomToMapRegion:regionCopy onActivation:v20];
}

- (void)_presentVenuesPlaceCardItem:(id)item shouldSaveSelectionState:(BOOL)state source:(unint64_t)source resetPlaceCardViewControllerBlock:(id)block
{
  stateCopy = state;
  itemCopy = item;
  blockCopy = block;
  if ([(ActionCoordinator *)self isRoutePlanningPresented])
  {
    currentViewController = [(ActionCoordinator *)self currentViewController];
    venueCardCoordinator = [(ActionCoordinator *)self venueCardCoordinator];
    topViewController = [venueCardCoordinator topViewController];

    if (currentViewController == topViewController)
    {
      venueCardCoordinator2 = [(ActionCoordinator *)self venueCardCoordinator];
      [venueCardCoordinator2 popVenueCardItem:0];
    }
  }

  venueCardCoordinator3 = [(ActionCoordinator *)self venueCardCoordinator];
  v16 = [venueCardCoordinator3 pushVenueCardItem:itemCopy source:source savePlaceCardSelectionState:stateCopy];

  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  if (sub_10000FA08(WeakRetained) == 5 || v16 != 3)
  {
    currentViewController2 = [(ActionCoordinator *)self currentViewController];
    resultsViewController = [(ActionCoordinator *)self resultsViewController];
    v18 = currentViewController2 == resultsViewController;
  }

  else
  {
    v18 = 1;
  }

  if (![(ActionCoordinator *)self _isBuildingMultipointRoute])
  {
    [(ActionCoordinator *)self _exitRoutePlanningIfNeededAnimated:0 restoreStashedMapSelection:0];
  }

  if (source == 4 && stateCopy)
  {
    mapSelectionManager = [(ActionCoordinator *)self mapSelectionManager];
    [mapSelectionManager clearSelection];
  }

  venueCardCoordinator4 = [(ActionCoordinator *)self venueCardCoordinator];
  isCardStackEmpty = [venueCardCoordinator4 isCardStackEmpty];

  if (isCardStackEmpty)
  {
    searchPinsManager = [(ActionCoordinator *)self searchPinsManager];
    [searchPinsManager clearLinkedPlacesAndPolygon];
  }

  v25 = [(ActionCoordinator *)self placeCardForVenuesViewController:itemCopy];
  blockCopy[2](blockCopy, v25);

  [(ActionCoordinator *)self presentPlaceCard:v25 canReplaceCurrentIfNecessary:v18];
}

- (void)_cleanUpVenuesStackForNonVenuePlaceCardItem:(id)item
{
  if (([item isVenueItem] & 1) == 0)
  {
    _isBuildingMultipointRoute = [(ActionCoordinator *)self _isBuildingMultipointRoute];
    venueCardCoordinator = [(ActionCoordinator *)self venueCardCoordinator];
    venueIdForCurrentCardStack = [venueCardCoordinator venueIdForCurrentCardStack];

    if (venueIdForCurrentCardStack)
    {
      if ((_isBuildingMultipointRoute & 1) == 0)
      {
        [(ActionCoordinator *)self _cleanupRoutePlanningIfNeededAnimated:0];
        venueCardCoordinator2 = [(ActionCoordinator *)self venueCardCoordinator];
        [venueCardCoordinator2 removeAllCards];

        [(ActionCoordinator *)self presentSearch];
      }
    }
  }
}

- (int64_t)_excludedContentForPlaceCardItem:(id)item
{
  itemCopy = item;
  if ([(ActionCoordinator *)self isRoutePlanningPresented])
  {
    v5 = 18;
  }

  else
  {
    v5 = 16;
  }

  venuesManager = [(ActionCoordinator *)self venuesManager];
  if (([venuesManager isUserAtVenueWithID:{objc_msgSend(itemCopy, "venueID")}] & 1) == 0)
  {
    venuesManager2 = [(ActionCoordinator *)self venuesManager];
    personalizedItem = [itemCopy personalizedItem];
    [personalizedItem coordinate];
    if (([venuesManager2 isUserAtSameVenueAsCoordinate:?] & 1) == 0)
    {
      chargeStationWaypointInfo = [itemCopy chargeStationWaypointInfo];
      if (!chargeStationWaypointInfo)
      {
        isCurrentLocation = [itemCopy isCurrentLocation];

        if ((isCurrentLocation & 1) == 0)
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

- (void)presentPlaceCardForItem:(id)item addToHistory:(BOOL)history source:(unint64_t)source saveSelectionState:(BOOL)state replaceCurrentCard:(BOOL)card
{
  cardCopy = card;
  stateCopy = state;
  itemCopy = item;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10091EFCC;
  v34[3] = &unk_10162E738;
  v34[4] = self;
  v13 = objc_retainBlock(v34);
  currentViewController = [(ActionCoordinator *)self currentViewController];
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
    v21 = itemCopy;
    v30 = v21;
    selfCopy = self;
    historyCopy = history;
    v22 = objc_retainBlock(v29);
    if ([v21 isVenueItem] && (objc_msgSend(v21, "isDroppedPin") & 1) == 0)
    {
      [(ActionCoordinator *)self _presentVenuesPlaceCardItem:v21 shouldSaveSelectionState:stateCopy source:source resetPlaceCardViewControllerBlock:v22];
LABEL_21:

      currentViewController2 = v32;
      goto LABEL_22;
    }

    [(ActionCoordinator *)self _cleanUpVenuesStackForNonVenuePlaceCardItem:v21];
    if ([(ActionCoordinator *)self isRoutePlanningPresented])
    {
      placeCardForRoutePlanningViewController = [(ActionCoordinator *)self placeCardForRoutePlanningViewController];
    }

    else
    {
      placeCardViewController = self->_placeCardViewController;
      if (placeCardViewController)
      {
        placeCardItem = [(PlaceCardViewController *)placeCardViewController placeCardItem];
        if (v20[2](v20, placeCardItem, v21))
        {
        }

        else
        {
          v26 = [(ActionCoordinator *)self shouldReusePlaceCardViewController:self->_placeCardViewController];

          if ((v26 & 1) == 0)
          {
            _newPlaceCardViewControllerForReuse = [(ActionCoordinator *)self _newPlaceCardViewControllerForReuse];
            v28 = 1;
            goto LABEL_18;
          }
        }
      }

      placeCardForRoutePlanningViewController = [(ActionCoordinator *)self placeCardViewController];
    }

    _newPlaceCardViewControllerForReuse = placeCardForRoutePlanningViewController;
    v28 = 0;
LABEL_18:
    (v22[2])(v22, _newPlaceCardViewControllerForReuse);
    [(ActionCoordinator *)self presentPlaceCard:_newPlaceCardViewControllerForReuse canReplaceCurrentIfNecessary:cardCopy];
    if (v28)
    {
      objc_storeStrong(&self->_placeCardViewController, _newPlaceCardViewControllerForReuse);
    }

    goto LABEL_21;
  }

  currentViewController2 = [(ActionCoordinator *)self currentViewController];
  placeCardItem2 = [currentViewController2 placeCardItem];
  if (!(v13[2])(v13, itemCopy, placeCardItem2))
  {

    goto LABEL_7;
  }

  searchResult = [placeCardItem2 searchResult];
  autocompletePerson = [searchResult autocompletePerson];

  if (!autocompletePerson)
  {
    [(ActionCoordinator *)self ensureMapSelectionVisible];
  }

  [PPTNotificationCenter postNotificationIfNeededWithName:MKPlaceViewControllerDidShowNotification object:currentViewController2 userInfo:0];

LABEL_22:
}

- (void)viewController:(id)controller selectSearchResult:(id)result addToHistory:(BOOL)history source:(unint64_t)source saveSelectionState:(BOOL)state replaceCurrentCard:(BOOL)card
{
  cardCopy = card;
  stateCopy = state;
  historyCopy = history;
  controllerCopy = controller;
  resultCopy = result;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    parkedCar = [resultCopy parkedCar];
    [(ActionCoordinator *)self viewController:0 selectParkedCar:parkedCar andPerformAction:0];
  }

  else
  {
    mapItem = [resultCopy mapItem];
    _hasHikeInfo = [mapItem _hasHikeInfo];

    if (_hasHikeInfo)
    {
      objc_initWeak(&location, self);
      appCoordinator = [(ActionCoordinator *)self appCoordinator];
      mapItem2 = [resultCopy mapItem];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_10091F5D8;
      v33[3] = &unk_10165FBC0;
      objc_copyWeak(v34, &location);
      v34[1] = source;
      [appCoordinator enterRouteCreationWithMapItem:mapItem2 completion:v33];

      objc_destroyWeak(v34);
      objc_destroyWeak(&location);
    }

    else
    {
      v21 = [[PlaceCardItem alloc] initWithSearchResult:resultCopy];
      v22 = +[CustomLocationManager sharedManager];
      newTraits = [(ActionCoordinator *)self newTraits];
      [v22 processSearchResult:resultCopy traits:newTraits];

      if (source == 8)
      {
        currentSearchSession = [(ActionCoordinator *)self currentSearchSession];
        singleResultMode = [currentSearchSession singleResultMode];

        if (singleResultMode)
        {
          searchSessionManager = [(ActionCoordinator *)self searchSessionManager];
          currentSearchSession2 = [searchSessionManager currentSearchSession];
          searchFieldItem = [currentSearchSession2 searchFieldItem];

          punchInDetails = [searchFieldItem punchInDetails];
          completedSearchQuery = [punchInDetails completedSearchQuery];

          searchModeViewController = [(ActionCoordinator *)self searchModeViewController];
          retainedSearchMetadata = [resultCopy retainedSearchMetadata];
          [searchModeViewController retainSpotlightQuery:completedSearchQuery metadata:retainedSearchMetadata];
        }
      }

      [(ActionCoordinator *)self presentPlaceCardForItem:v21 addToHistory:historyCopy source:source saveSelectionState:stateCopy replaceCurrentCard:cardCopy];
    }
  }
}

- (void)viewController:(id)controller selectMapItem:(id)item address:(id)address addToHistory:(BOOL)history source:(unint64_t)source
{
  historyCopy = history;
  addressCopy = address;
  itemCopy = item;
  v13 = [[PlaceCardItem alloc] initWithMapItem:itemCopy address:addressCopy];

  [(ActionCoordinator *)self presentPlaceCardForItem:v13 addToHistory:historyCopy source:source saveSelectionState:1];
}

- (void)viewController:(id)controller selectPersonalizedItem:(id)item source:(unint64_t)source saveSelectionState:(BOOL)state
{
  stateCopy = state;
  itemCopy = item;
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([itemCopy parkedCar], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    [(ActionCoordinator *)self viewController:0 selectParkedCar:v9 andPerformAction:0];
  }

  else if ((objc_opt_respondsToSelector() & 1) != 0 && ([itemCopy incidentReport], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v11;
    v12 = +[MKMapService sharedService];
    incidentType = [(PlaceCardItem *)v10 incidentType];
    if (incidentType >= 0x14)
    {
      v14 = [NSString stringWithFormat:@"(unknown: %i)", incidentType];
    }

    else
    {
      v14 = *(&off_10162ED48 + incidentType);
    }

    [v12 captureUserAction:1031 onTarget:511 eventValue:v14];

    trafficIncidentVC = [(ActionCoordinator *)self trafficIncidentVC];
    [trafficIncidentVC updateWithReport:v10];

    containerViewController = [(ActionCoordinator *)self containerViewController];
    currentViewController = [containerViewController currentViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    containerViewController2 = [(ActionCoordinator *)self containerViewController];
    trafficIncidentVC2 = [(ActionCoordinator *)self trafficIncidentVC];
    if (isKindOfClass)
    {
      [containerViewController2 replaceCurrentWithController:trafficIncidentVC2 moveToContaineeDefaultLayout:1];
    }

    else
    {
      [containerViewController2 presentController:trafficIncidentVC2 animated:1 useDefaultContaineeLayout:1];
    }
  }

  else
  {
    v10 = [[PlaceCardItem alloc] initWithPersonalizedItem:itemCopy];
    address = [itemCopy address];
    [(ActionCoordinator *)self presentPlaceCardForItem:v10 addToHistory:address == 0 source:source saveSelectionState:stateCopy replaceCurrentCard:1];
  }
}

- (void)viewController:(id)controller openSearchResult:(id)result
{
  resultCopy = result;
  resultCopy2 = result;
  v6 = [NSArray arrayWithObjects:&resultCopy count:1];
  resultCopy = [SearchInfo searchInfoWithResults:v6, resultCopy];

  searchPinsManager = [(ActionCoordinator *)self searchPinsManager];
  [searchPinsManager setSearchPinsFromSearchInfo:resultCopy scrollToResults:1 displayPlaceCardForResult:resultCopy2 animated:1 completion:0];
}

- (void)viewController:(id)controller focusSearchResult:(id)result
{
  resultCopy = result;
  mapSelectionManager = [(ActionCoordinator *)self mapSelectionManager];
  mapView = [(ActionCoordinator *)self mapView];
  searchPinsManager = [(ActionCoordinator *)self searchPinsManager];
  customPOIsController = [searchPinsManager customPOIsController];
  personalizedItemKey = [resultCopy personalizedItemKey];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10091FB18;
  v13[3] = &unk_10162E710;
  v14 = mapView;
  v15 = mapSelectionManager;
  selfCopy = self;
  v11 = mapSelectionManager;
  v12 = mapView;
  [customPOIsController customFeatureForKey:personalizedItemKey completion:v13];
}

- (void)viewControllerRemoveSearchResultFocus:(id)focus
{
  mapView = [(ActionCoordinator *)self mapView];
  mapSelectionManager = [(ActionCoordinator *)self mapSelectionManager];
  [mapSelectionManager setIgnoreSelectionChanges:1];

  [mapView _deselectLabelMarkerAnimated:1];
  mapSelectionManager2 = [(ActionCoordinator *)self mapSelectionManager];
  [mapSelectionManager2 setIgnoreSelectionChanges:0];
}

- (void)viewController:(id)controller openTransitIncidents:(id)incidents fromView:(id)view withUserInfo:(id)info
{
  controllerCopy = controller;
  incidentsCopy = incidents;
  viewCopy = view;
  if ([incidentsCopy count])
  {
    containerViewController = [(ActionCoordinator *)self containerViewController];
    traitCollection = [containerViewController traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom == 5)
    {
      if (viewCopy)
      {
        v14 = [[MapsIncidentsViewController alloc] initWithTransitIncidents:incidentsCopy];
        [(MapsIncidentsViewController *)v14 setModalPresentationStyle:7];
        popoverPresentationController = [(MapsIncidentsViewController *)v14 popoverPresentationController];
        [popoverPresentationController setPermittedArrowDirections:12];
        [popoverPresentationController setSourceView:viewCopy];
        WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
        [WeakRetained _maps_topMostPresentViewController:v14 animated:1 completion:0];

LABEL_10:
        goto LABEL_11;
      }

      v14 = [[MapsTransitIncidentsContaineeViewController alloc] initWithTransitIncidents:incidentsCopy];
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        [controllerCopy _maps_topMostPresentViewController:v14 animated:1 completion:0];
        goto LABEL_10;
      }

      v17 = v14;
    }

    else
    {
      v17 = [[MapsTransitIncidentsContaineeViewController alloc] initWithTransitIncidents:incidentsCopy];
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

- (void)viewController:(id)controller openPlainTextFileURL:(id)l
{
  lCopy = l;
  v6 = [UINavigationController alloc];
  v7 = [[PlainTextAttributionViewController alloc] initWithFileURL:lCopy];

  v9 = [v6 initWithRootViewController:v7];
  if (!sub_10000FA08(v9))
  {
    [v9 setModalPresentationStyle:2];
  }

  containerViewController = [(ActionCoordinator *)self containerViewController];
  [containerViewController _maps_topMostPresentViewController:v9 animated:1 completion:0];
}

- (void)viewController:(id)controller openURL:(id)l
{
  controllerCopy = controller;
  lCopy = l;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    cardPresentationController = [controllerCopy cardPresentationController];
    containerViewController = [cardPresentationController containerViewController];
  }

  else
  {
    containerViewController = [(ActionCoordinator *)self containerViewController];
  }

  v9 = [[MapsWebLinkPresenter alloc] initWithPresentingViewController:containerViewController];
  [(MapsWebLinkPresenter *)v9 presentWebURL:lCopy];
}

- (id)_searchResultFromMapsSuggestionsEntry:(id)entry
{
  entryCopy = entry;
  if ([entryCopy type] == 24)
  {
    findMyWaypoint = [entryCopy findMyWaypoint];
    if (!findMyWaypoint)
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

    v5 = [[SearchResult alloc] initWithComposedWaypoint:findMyWaypoint];
  }

  else
  {
    findMyWaypoint = [[MapsLocationOfInterest alloc] initWithMapsSuggestionEntry:entryCopy];
    if (findMyWaypoint)
    {
      v6 = [SearchResult alloc];
      mapItem = [(MapsLocationOfInterest *)findMyWaypoint mapItem];
      v5 = [(SearchResult *)v6 initWithMapItem:mapItem];

      [(SearchResult *)v5 setLocationOfInterest:findMyWaypoint];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)viewController:(id)controller openCommuteEntry:(id)entry
{
  entryCopy = entry;
  controllerCopy = controller;
  v8 = objc_alloc_init(SearchFieldItem);
  v9 = +[SearchResult currentLocationSearchResult];
  [(SearchFieldItem *)v8 setSearchResult:v9];

  v10 = objc_alloc_init(SearchFieldItem);
  v11 = [(ActionCoordinator *)self _searchResultFromMapsSuggestionsEntry:entryCopy];

  [(SearchFieldItem *)v10 setSearchResult:v11];
  v12 = [DirectionItem alloc];
  v18[0] = v8;
  v18[1] = v10;
  v13 = [NSArray arrayWithObjects:v18 count:2];
  v14 = [(DirectionItem *)v12 initWithItems:v13 transportType:1];

  v16 = @"DirectionsSessionInitiatorKey";
  v17 = &off_1016E77F0;
  v15 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  [(ActionCoordinator *)self viewController:controllerCopy doDirectionItem:v14 allowToPromptEditing:0 withUserInfo:v15];
}

- (void)viewController:(id)controller openMapsSuggestionEntry:(id)entry withUserInfo:(id)info
{
  controllerCopy = controller;
  entryCopy = entry;
  infoCopy = info;
  if ([entryCopy containsKey:@"MapsSuggestionsRoutingNotAvailableKey"])
  {
    v115 = [entryCopy BOOLeanForKey:@"MapsSuggestionsRoutingNotAvailableKey"];
  }

  else
  {
    v115 = 0;
  }

  v10 = [entryCopy BOOLeanForKey:@"MapsSuggestionsAlreadyThereKey"];
  v11 = +[MKLocationManager sharedLocationManager];
  isAuthorizedForPreciseLocation = [v11 isAuthorizedForPreciseLocation];

  containerViewController = [(ActionCoordinator *)self containerViewController];
  traitCollection = [containerViewController traitCollection];
  v15 = [traitCollection userInterfaceIdiom] == 1;

  v16 = [infoCopy objectForKeyedSubscript:@"MSGEntryForceShowPlacecardOnTap"];
  bOOLValue = [v16 BOOLValue];

  mKMapItem = [entryCopy MKMapItem];
  v19 = [infoCopy mutableCopy];

  [v19 setObject:&off_1016E77F0 forKeyedSubscript:@"DirectionsSessionInitiatorKey"];
  v114 = v19;
  v20 = [v19 copy];
  v144[0] = _NSConcreteStackBlock;
  v144[1] = 3221225472;
  v144[2] = sub_100921514;
  v144[3] = &unk_10162E698;
  v144[4] = self;
  v21 = controllerCopy;
  v145 = v21;
  v22 = v20;
  v146 = v22;
  v23 = objc_retainBlock(v144);
  v140[0] = _NSConcreteStackBlock;
  v140[1] = 3221225472;
  v140[2] = sub_100921714;
  v140[3] = &unk_10162E6C0;
  v140[4] = self;
  v24 = entryCopy;
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
  v26 = mKMapItem;
  v130 = v26;
  selfCopy = self;
  v135 = v115;
  v136 = v10;
  v137 = isAuthorizedForPreciseLocation;
  v138 = v15;
  v139 = bOOLValue;
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
        _restaurantLink_firstProviderIdentifier = [v26 _restaurantLink_firstProviderIdentifier];
        [v40 setAppID:_restaurantLink_firstProviderIdentifier];

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
          appCoordinator = [(ActionCoordinator *)self appCoordinator];
          [appCoordinator continueRideBookingSessionWithApplicationIdentifier:v42];
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

      firstObject = [v110 firstObject];
      searchResult = [firstObject searchResult];
      isDynamicCurrentLocation = [searchResult isDynamicCurrentLocation];

      if (isDynamicCurrentLocation)
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
          automobileOptions = [v73 automobileOptions];
          v76 = +[NSUserDefaults standardUserDefaults];
          v77 = [(DrivePreferences *)v74 initWithAutomobileOptions:automobileOptions defaults:v76];
          [(DirectionItem *)v111 setDrivePreferences:v77];

          v78 = [TransitPreferences alloc];
          transitOptions = [v73 transitOptions];
          v80 = +[NSUserDefaults standardUserDefaults];
          v81 = [(TransitPreferences *)v78 initWithTransitOptions:transitOptions defaults:v80];
          [(DirectionItem *)v111 setTransitPreferences:v81];

          v82 = [WalkPreferences alloc];
          walkingOptions = [v73 walkingOptions];
          v84 = +[NSUserDefaults standardUserDefaults];
          v85 = [(WalkPreferences *)v82 initWithWalkingOptions:walkingOptions defaults:v84];
          [(DirectionItem *)v111 setWalkPreferences:v85];

          v86 = [CyclePreferences alloc];
          cyclingOptions = [v73 cyclingOptions];
          v88 = +[NSUserDefaults standardUserDefaults];
          v89 = [(CyclePreferences *)v86 initWithCyclingOptions:cyclingOptions defaults:v88];
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
          automobileOptions2 = [v118 automobileOptions];
          v92 = +[NSUserDefaults standardUserDefaults];
          v93 = [(DrivePreferences *)v90 initWithAutomobileOptions:automobileOptions2 defaults:v92];
          [(DirectionItem *)v111 setDrivePreferences:v93];

          v94 = [TransitPreferences alloc];
          transitOptions2 = [v118 transitOptions];
          v96 = +[NSUserDefaults standardUserDefaults];
          v97 = [(TransitPreferences *)v94 initWithTransitOptions:transitOptions2 defaults:v96];
          [(DirectionItem *)v111 setTransitPreferences:v97];

          v98 = [WalkPreferences alloc];
          walkingOptions2 = [v118 walkingOptions];
          v100 = +[NSUserDefaults standardUserDefaults];
          v101 = [(WalkPreferences *)v98 initWithWalkingOptions:walkingOptions2 defaults:v100];
          [(DirectionItem *)v111 setWalkPreferences:v101];

          v102 = [CyclePreferences alloc];
          cyclingOptions2 = [v118 cyclingOptions];
          v104 = +[NSUserDefaults standardUserDefaults];
          v105 = [(CyclePreferences *)v102 initWithCyclingOptions:cyclingOptions2 defaults:v104];
          [(DirectionItem *)v111 setCyclePreferences:v105];

          resumeRouteHandleStorage = [v118 resumeRouteHandleStorage];
          [(SearchFieldItem *)v64 setObject:resumeRouteHandleStorage forKeyedSubscript:@"DirectionsResumeRouteHandleStorage"];
        }

        sharingContacts = [v28 sharingContacts];
        [(SearchFieldItem *)v64 setObject:sharingContacts forKeyedSubscript:@"DirectionsPreviousContactsForTripSharing"];
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
        mKMapItem2 = [v28 MKMapItem];
        v67 = [(SearchResult *)v65 initWithMapItem:mKMapItem2];
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
        searchResult2 = [(SearchFieldItem *)v32 searchResult];
        [searchResult2 setHasIncompleteMetadata:1];

        [(ActionCoordinator *)self viewController:v120 doSearchItem:v32 withUserInfo:v119];
      }

      else
      {
        v34 = [v28 URLForKey:@"MapsSuggestionsAppConnectionMapItemURL"];
        absoluteString = [(SearchResult *)v34 absoluteString];
        v69 = [absoluteString length] == 0;

        if (!v69)
        {
          v117 = [MKMapItem mapItemsFromURL:v34 options:0];
          firstObject2 = [v117 firstObject];
          v71 = [[SearchResult alloc] initWithMapItem:firstObject2];
          [(SearchFieldItem *)v32 setSearchResult:v71];
          searchResult3 = [(SearchFieldItem *)v32 searchResult];
          [searchResult3 setHasIncompleteMetadata:1];
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
      uniqueIdentifier = [v28 uniqueIdentifier];
      v37 = [uniqueIdentifier isEqualToString:@"NearbyTransit"];

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

- (void)viewController:(id)controller openFavoriteItem:(id)item withUserInfo:(id)info
{
  controllerCopy = controller;
  itemCopy = item;
  infoCopy = info;
  mkMapItem = [itemCopy mkMapItem];
  isAlreadyThere = [itemCopy isAlreadyThere];
  v12 = [infoCopy objectForKeyedSubscript:@"MSGEntryForceShowPlacecardOnTap"];
  bOOLValue = [v12 BOOLValue];

  v13 = +[MKLocationManager sharedLocationManager];
  isAuthorizedForPreciseLocation = [v13 isAuthorizedForPreciseLocation];

  containerViewController = [(ActionCoordinator *)self containerViewController];
  traitCollection = [containerViewController traitCollection];
  v16 = [traitCollection userInterfaceIdiom] == 1;

  _canGetDirections = [mkMapItem _canGetDirections];
  v18 = [infoCopy mutableCopy];

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
  v21 = controllerCopy;
  v46 = v21;
  v22 = v19;
  v47 = v22;
  v23 = objc_retainBlock(v45);
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100922A3C;
  v34[3] = &unk_10162E670;
  v24 = mkMapItem;
  v35 = v24;
  selfCopy = self;
  v40 = _canGetDirections;
  v41 = isAlreadyThere;
  v42 = isAuthorizedForPreciseLocation;
  v43 = v16;
  v44 = bOOLValue;
  v25 = v20;
  v38 = v25;
  v26 = itemCopy;
  v37 = v26;
  v27 = v23;
  v39 = v27;
  v28 = objc_retainBlock(v34);
  type = [v26 type];
  if (type >= 4)
  {
    if (type == 6)
    {
      [(ActionCoordinator *)self viewControllerPresentNearbyTransitDepartures:v21];
      [GEOAPPortal captureUserAction:214 target:8 value:0];
      goto LABEL_9;
    }

    if (type != 5)
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

- (void)containerViewControllerDidResignContainee:(id)containee toContainee:(id)toContainee
{
  containeeCopy = containee;
  toContaineeCopy = toContainee;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mapSelectionManager = [(ActionCoordinator *)self mapSelectionManager];
    [mapSelectionManager setIgnoreSelectionChanges:0];
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

- (void)containerViewControllerWillPresentContainee:(id)containee overContainee:(id)overContainee
{
  containeeCopy = containee;
  overContaineeCopy = overContainee;
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
    mapSelectionManager = [(ActionCoordinator *)self mapSelectionManager];
    [mapSelectionManager setIgnoreSelectionChanges:1];
  }

  [(ActionCoordinator *)self updateRouteAnnotations];
}

- (void)presentGuidesHomeWithGuideLocation:(id)location
{
  locationCopy = location;
  v5 = [GuidesHomeViewController alloc];
  newTraits = [(ActionCoordinator *)self newTraits];
  v7 = [(GuidesHomeViewController *)v5 initWithGuideLocation:locationCopy withTraits:newTraits];

  [(ContaineeViewController *)v7 setContaineeDelegate:self];
  [(GuidesHomeViewController *)v7 setActionDelegate:self];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained presentController:v7 animated:1];

  guideHomeVC = self->_guideHomeVC;
  self->_guideHomeVC = v7;
}

- (void)presentVenueCategoryWithVenueCategoryItem:(id)item
{
  itemCopy = item;
  venueCardCoordinator = [(ActionCoordinator *)self venueCardCoordinator];
  topViewController = [venueCardCoordinator topViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = topViewController;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  contentDownloader = [v7 contentDownloader];

  [contentDownloader searchWillStart];
  if ([itemCopy isAutoCompleteCategory])
  {
    venueIdentifier = [itemCopy venueIdentifier];
    searchCategory = [itemCopy searchCategory];
    [(ActionCoordinator *)self viewController:0 presentVenueFromAutoCompleteWithVenueIdentifier:venueIdentifier searchCategory:searchCategory source:2];
  }
}

- (void)presentLoadingResults
{
  resultsViewController = [(ActionCoordinator *)self resultsViewController];
  cardPresentationController = [resultsViewController cardPresentationController];
  [cardPresentationController setHidden:0];

  if (!MapsFeature_IsEnabled_SearchAndDiscovery())
  {
    goto LABEL_14;
  }

  currentViewController = [(ActionCoordinator *)self currentViewController];
  if (!currentViewController)
  {
    if ([(ActionCoordinator *)self isPresentingAddStopSearchResults]|| [(ActionCoordinator *)self isRoutePlanningPresented])
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v6 = currentViewController;
  currentViewController2 = [(ActionCoordinator *)self currentViewController];
  if (currentViewController2 != self->_routeSearchVC && ![(ActionCoordinator *)self isPresentingAddStopSearchResults])
  {
    isRoutePlanningPresented = [(ActionCoordinator *)self isRoutePlanningPresented];

    if (isRoutePlanningPresented)
    {
      goto LABEL_14;
    }

LABEL_10:
    v9 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v9 userInterfaceIdiom];

    if (userInterfaceIdiom == 5)
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
      v20 = resultsViewController;
      [WeakRetained presentController:searchCardViewController animated:1 completion:v19];

      v13 = v20;
    }

    else
    {
      v15 = objc_loadWeakRetained(&self->_containerViewController);
      searchModeViewController = [(ActionCoordinator *)self searchModeViewController];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1009234CC;
      v17[3] = &unk_101661570;
      v17[4] = self;
      v18 = resultsViewController;
      [v15 presentController:searchModeViewController animated:1 completion:v17];

      v13 = v18;
    }

    goto LABEL_15;
  }

LABEL_14:
  v14 = objc_loadWeakRetained(&self->_containerViewController);
  [v14 presentController:resultsViewController];

LABEL_15:
}

- (void)clearSharedTrips
{
  appCoordinator = [(ActionCoordinator *)self appCoordinator];
  [appCoordinator closeSharedTrips];
}

- (void)presentUnsupportedTransportTypeOrProtocolAlertForSharedTrip:(id)trip
{
  tripCopy = trip;
  appCoordinator = [(ActionCoordinator *)self appCoordinator];
  [appCoordinator presentUnsupportedTransportTypeOrProtocolAlertForSharedTrip:tripCopy];
}

- (void)presentChinaAlertForSharedTrip:(id)trip
{
  tripCopy = trip;
  appCoordinator = [(ActionCoordinator *)self appCoordinator];
  [appCoordinator presentChinaAlertForSharedTrip:tripCopy];
}

- (void)presentSharedTrip:(id)trip inPopoverFromView:(id)view
{
  viewCopy = view;
  tripCopy = trip;
  v10 = [[SharedTripContaineeViewController alloc] initWithSharedTrip:tripCopy];

  [(ControlContaineeViewController *)v10 setDelegate:self];
  [(SharedTripContaineeViewController *)v10 setActionDelegate:self];
  [(SharedTripContaineeViewController *)v10 setModalPresentationStyle:7];
  popoverPresentationController = [(SharedTripContaineeViewController *)v10 popoverPresentationController];
  [popoverPresentationController setSourceView:viewCopy];

  [popoverPresentationController setPermittedArrowDirections:12];
  containerViewController = [(ActionCoordinator *)self containerViewController];
  [containerViewController _maps_topMostPresentViewController:v10 animated:1 completion:0];
}

- (void)presentSharedTrip:(id)trip
{
  tripCopy = trip;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v6 = sub_10000FA08(WeakRetained);

  if (v6 == 5)
  {
    [(ActionCoordinator *)self _exitRoutePlanningIfNeededAnimated:1 restoreStashedMapSelection:0];
  }

  appCoordinator = [(ActionCoordinator *)self appCoordinator];
  [appCoordinator openSharedTrip:tripCopy];
}

- (void)presentSharedTrips
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v4 = sub_10000FA08(WeakRetained);

  if (v4 != 5)
  {
    appCoordinator = [(ActionCoordinator *)self appCoordinator];
    [appCoordinator openSharedTrips];
  }
}

- (void)_resetStack
{
  mapSelectionManager = [(ActionCoordinator *)self mapSelectionManager];
  [mapSelectionManager clearSelection];

  searchPinsManager = [(ActionCoordinator *)self searchPinsManager];
  [searchPinsManager clearLinkedPlacesAndPolygon];

  searchPinsManager2 = [(ActionCoordinator *)self searchPinsManager];
  [searchPinsManager2 clearSearchPins];

  [(ActionCoordinator *)self exitRoutePlanningIfNeededAnimated:1];
  containerViewController = [(ActionCoordinator *)self containerViewController];
  [containerViewController setControllerStack:&__NSArray0__struct animated:1 completion:0];

  containerViewController2 = [(ActionCoordinator *)self containerViewController];
  chromeViewController = [containerViewController2 chromeViewController];
  [chromeViewController popToRootContextAnimated:1 completion:0];
}

- (BOOL)_conditionallyPopForContextClass:(Class)class
{
  appCoordinator = [(ActionCoordinator *)self appCoordinator];
  chromeViewController = [appCoordinator chromeViewController];

  contexts = [chromeViewController contexts];
  v6 = [contexts _maps_firstContextOfClass:objc_opt_class()];

  if (v6)
  {
    topContext = [chromeViewController topContext];

    if (v6 == topContext)
    {
      [chromeViewController popToRootContextAnimated:1 completion:0];
    }

    else
    {
      [chromeViewController popToContext:v6 animated:1 completion:0];
    }
  }

  return v6 != 0;
}

- (BOOL)_conditionallyPopForContaineeClass:(Class)class
{
  containerViewController = [(ActionCoordinator *)self containerViewController];
  currentControllerStack = [containerViewController currentControllerStack];

  lastObject = [currentControllerStack lastObject];
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = 1;
  }

  else
  {
    firstObject = [currentControllerStack firstObject];
    v10 = objc_opt_isKindOfClass();

    if (v10)
    {
      WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
      firstObject2 = [currentControllerStack firstObject];
      v15 = firstObject2;
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
  containerViewController = [(ActionCoordinator *)self containerViewController];
  v4 = sub_10000FA08(containerViewController);

  if (v4 == 5 && ![(ActionCoordinator *)self _conditionallyPopForContaineeClass:objc_opt_class()])
  {
    [(ActionCoordinator *)self _resetStack];
    appCoordinator = [(ActionCoordinator *)self appCoordinator];
    chromeViewController = [appCoordinator chromeViewController];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100923C0C;
    v7[3] = &unk_101661B18;
    v7[4] = self;
    [chromeViewController popToRootContextAnimated:1 completion:v7];
  }
}

- (void)toggleTopLevelVisitedPlaces
{
  containerViewController = [(ActionCoordinator *)self containerViewController];
  v4 = sub_10000FA08(containerViewController);

  if (v4 == 5 && ![(ActionCoordinator *)self _conditionallyPopForContextClass:objc_opt_class()])
  {
    [(ActionCoordinator *)self _resetStack];
    appCoordinator = [(ActionCoordinator *)self appCoordinator];
    chromeViewController = [appCoordinator chromeViewController];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100923D60;
    v7[3] = &unk_101661B18;
    v7[4] = self;
    [chromeViewController popToRootContextAnimated:1 completion:v7];
  }
}

- (void)toggleTopLevelSavedRoutes
{
  containerViewController = [(ActionCoordinator *)self containerViewController];
  v4 = sub_10000FA08(containerViewController);

  if (v4 == 5 && ![(ActionCoordinator *)self _conditionallyPopForContaineeClass:objc_opt_class()])
  {
    [(ActionCoordinator *)self _resetStack];
    appCoordinator = [(ActionCoordinator *)self appCoordinator];
    chromeViewController = [appCoordinator chromeViewController];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100923EB4;
    v7[3] = &unk_101661B18;
    v7[4] = self;
    [chromeViewController popToRootContextAnimated:1 completion:v7];
  }
}

- (void)toggleTopLevelGuides
{
  containerViewController = [(ActionCoordinator *)self containerViewController];
  v4 = sub_10000FA08(containerViewController);

  if (v4 == 5 && ![(ActionCoordinator *)self _conditionallyPopForContaineeClass:objc_opt_class()])
  {
    [(ActionCoordinator *)self _resetStack];
    appCoordinator = [(ActionCoordinator *)self appCoordinator];
    chromeViewController = [appCoordinator chromeViewController];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100924008;
    v7[3] = &unk_101661B18;
    v7[4] = self;
    [chromeViewController popToRootContextAnimated:1 completion:v7];
  }
}

- (void)toggleTopLevelPlaces
{
  containerViewController = [(ActionCoordinator *)self containerViewController];
  v4 = sub_10000FA08(containerViewController);

  if (v4 == 5 && ![(ActionCoordinator *)self _conditionallyPopForContaineeClass:objc_opt_class()])
  {
    [(ActionCoordinator *)self _resetStack];
    appCoordinator = [(ActionCoordinator *)self appCoordinator];
    chromeViewController = [appCoordinator chromeViewController];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10092415C;
    v7[3] = &unk_101661B18;
    v7[4] = self;
    [chromeViewController popToRootContextAnimated:1 completion:v7];
  }
}

- (void)toggleTopLevelPinned
{
  containerViewController = [(ActionCoordinator *)self containerViewController];
  v4 = sub_10000FA08(containerViewController);

  if (v4 == 5 && ![(ActionCoordinator *)self _conditionallyPopForContaineeClass:objc_opt_class()])
  {
    [(ActionCoordinator *)self _resetStack];
    appCoordinator = [(ActionCoordinator *)self appCoordinator];
    chromeViewController = [appCoordinator chromeViewController];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1009242B0;
    v7[3] = &unk_101661B18;
    v7[4] = self;
    [chromeViewController popToRootContextAnimated:1 completion:v7];
  }
}

- (void)toggleTopLevelRecents
{
  containerViewController = [(ActionCoordinator *)self containerViewController];
  v4 = sub_10000FA08(containerViewController);

  if (v4 == 5 && ![(ActionCoordinator *)self _conditionallyPopForContaineeClass:objc_opt_class()])
  {
    appCoordinator = [(ActionCoordinator *)self appCoordinator];
    chromeViewController = [appCoordinator chromeViewController];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1009243FC;
    v7[3] = &unk_101661B18;
    v7[4] = self;
    [chromeViewController popToRootContextAnimated:1 completion:v7];
  }
}

- (void)presentSearchAnimated:(BOOL)animated
{
  animatedCopy = animated;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  searchModeViewController = [(ActionCoordinator *)self searchModeViewController];
  [WeakRetained presentController:searchModeViewController animated:animatedCopy useDefaultContaineeLayout:1];
}

- (void)viewControllerPresentSearchEndEditingAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(ActionCoordinator *)self exitRoutePlanningIfNeededAnimated:0];
  [(ActionCoordinator *)self presentSearchAnimated:animatedCopy];
  [(ActionCoordinator *)self clearSearch];
  searchModeViewController = [(ActionCoordinator *)self searchModeViewController];
  [searchModeViewController endEditing];
}

- (void)viewControllerPresentSearchEditing
{
  [(ActionCoordinator *)self exitRoutePlanningIfNeededAnimated:0];
  [(ActionCoordinator *)self clearSearch];
  [(ActionCoordinator *)self presentSearchAnimated:1];
  searchModeViewController = [(ActionCoordinator *)self searchModeViewController];
  [searchModeViewController searchBarBecomeFirstResponder];
}

- (void)ensureMapSelectionVisible
{
  mapView = [(ActionCoordinator *)self mapView];
  [mapView _edgeInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  containerViewController = [(ActionCoordinator *)self containerViewController];
  containerStyle = [containerViewController containerStyle];

  if (containerStyle == 1)
  {
    containerViewController2 = [(ActionCoordinator *)self containerViewController];
    currentViewController = [containerViewController2 currentViewController];
    [currentViewController heightForLayout:2];
    v9 = v16;
  }

  +[LookAroundButtonContainerViewController expandedHeight];
  v18 = v17 + v9;
  mapSelectionManager = [(ActionCoordinator *)self mapSelectionManager];
  labelMarker = [mapSelectionManager labelMarker];

  venuesManager = [(ActionCoordinator *)self venuesManager];
  v25 = 0;
  v26 = 0;
  [venuesManager getMinZoom:&v26 maxZoom:&v25 forDisplayingLabelMarker:labelMarker];
  v22 = v26;
  v23 = v25;

  mapCameraController = [(ActionCoordinator *)self mapCameraController];
  [mapCameraController frameLabelMarker:labelMarker edgeInsets:v22 minZoom:v23 maxZoom:0 completion:{v5, v7, v18, v11}];

  [(VenuesManager *)self->_venuesManager displayFloorForSelectedLabelMarker:labelMarker];
}

- (void)presentLineCardForItem:(id)item labelMarker:(id)marker loading:(BOOL)loading overDisambiguation:(BOOL)disambiguation preferredLayout:(unint64_t)layout
{
  loadingCopy = loading;
  markerCopy = marker;
  itemCopy = item;
  lineCardVC = [(ActionCoordinator *)self lineCardVC];
  [lineCardVC setLineItem:itemCopy labelMarker:markerCopy loading:loadingCopy preferredLayout:layout];

  containerViewController = [(ActionCoordinator *)self containerViewController];
  currentViewController = [containerViewController currentViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_6;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0 && !disambiguation)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  if (isKindOfClass)
  {
LABEL_6:
    containerViewController2 = [(ActionCoordinator *)self containerViewController];
    lineCardVC2 = [(ActionCoordinator *)self lineCardVC];
    [containerViewController2 replaceCurrentWithController:lineCardVC2 moveToContaineeLayout:layout];
  }

  else
  {
    containerViewController2 = [(ActionCoordinator *)self containerViewController];
    lineCardVC2 = [(ActionCoordinator *)self lineCardVC];
    [containerViewController2 presentController:lineCardVC2];
  }
}

- (void)presentLineCardForItem:(id)item loading:(BOOL)loading sourceView:(id)view sourceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  loadingCopy = loading;
  itemCopy = item;
  viewCopy = view;
  lineCardVC = [(ActionCoordinator *)self lineCardVC];
  [lineCardVC setLineItem:itemCopy labelMarker:0 loading:loadingCopy preferredLayout:0];
  lineSelectionAction = self->_lineSelectionAction;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100924A10;
  v21[3] = &unk_10162E5F8;
  v21[4] = self;
  v22 = itemCopy;
  v23 = lineCardVC;
  v17 = lineCardVC;
  v18 = itemCopy;
  [(TransitLineSelectionActionController *)lineSelectionAction selectLine:v18 zoomToMapRegion:0 onActivation:v21];
  [v17 setModalPresentationStyle:7];
  popoverPresentationController = [v17 popoverPresentationController];
  [popoverPresentationController setDelegate:self];
  [popoverPresentationController setSourceView:viewCopy];

  [popoverPresentationController setSourceRect:{x, y, width, height}];
  [popoverPresentationController setPermittedArrowDirections:12];
  containerViewController = [(ActionCoordinator *)self containerViewController];
  [containerViewController _maps_topMostPresentViewController:v17 animated:1 completion:0];
}

- (void)presentPlaceCard:(id)card canReplaceCurrentIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  cardCopy = card;
  containerViewController = [(ActionCoordinator *)self containerViewController];
  currentViewController = [containerViewController currentViewController];

  cardPresentationController = [(ContaineeViewController *)cardCopy cardPresentationController];
  [cardPresentationController setHidden:0];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && self->_placeCardViewController)
  {
    containerViewController2 = [(ActionCoordinator *)self containerViewController];
    [containerViewController2 removeControllerFromStack:self->_placeCardViewController];
  }

  [(ActionCoordinator *)self ensureMapSelectionVisible];
  containerViewController3 = [(ActionCoordinator *)self containerViewController];
  chromeViewController = [containerViewController3 chromeViewController];
  [chromeViewController setNeedsUpdateComponent:@"lookAroundButton" animated:1];

  placeCardViewController = self->_placeCardViewController;
  if (!placeCardViewController || currentViewController != placeCardViewController)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
        [(PlaceCardViewController *)WeakRetained replaceCurrentWithController:cardCopy];
        goto LABEL_21;
      }

      if (!necessaryCopy || ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (-[ActionCoordinator currentSearchSession](self, "currentSearchSession"), v35 = objc_claimAutoreleasedReturnValue(), v36 = [v35 singleResultMode], v35, !v36)) && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (-[ActionCoordinator currentSearchSession](self, "currentSearchSession"), v37 = objc_claimAutoreleasedReturnValue(), v38 = objc_msgSend(v37, "isSingleResultToShowAsPlacecard"), v37, !v38)))
      {
        placeCardItem = [(PlaceCardViewController *)cardCopy placeCardItem];
        if ([placeCardItem isVenueItem])
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

        if (!necessaryCopy || !currentViewController || sub_10000FA08(currentViewController) == 5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
          [(PlaceCardViewController *)WeakRetained presentController:cardCopy];
          goto LABEL_21;
        }
      }

      v14 = objc_loadWeakRetained(&self->_containerViewController);
      WeakRetained = v14;
LABEL_7:
      [(PlaceCardViewController *)v14 replaceCurrentWithController:cardCopy moveToContaineeLayout:2];
LABEL_21:
      v19 = 1;
      goto LABEL_22;
    }

    WeakRetained = currentViewController;
    placeCardItem2 = [(PlaceCardViewController *)cardCopy placeCardItem];
    if ([placeCardItem2 isVenueItem])
    {
    }

    else
    {
      placeCardItem3 = [(PlaceCardViewController *)cardCopy placeCardItem];
      mapItem = [placeCardItem3 mapItem];
      v22 = [(PlaceCardViewController *)WeakRetained containsMapItem:mapItem];

      if (v22)
      {
        v23 = objc_loadWeakRetained(&self->_containerViewController);
        [v23 presentController:cardCopy];
LABEL_20:

        goto LABEL_21;
      }
    }

    v23 = objc_loadWeakRetained(&self->_containerViewController);
    [v23 replaceCurrentWithController:cardCopy moveToContaineeLayout:2];
    goto LABEL_20;
  }

  v14 = objc_loadWeakRetained(&self->_containerViewController);
  WeakRetained = v14;
  if (currentViewController != cardCopy)
  {
    goto LABEL_7;
  }

  [(PlaceCardViewController *)v14 removeControllerFromStack:self->_simpleListResultsVC];

  v17 = objc_loadWeakRetained(&self->_containerViewController);
  containerStyle = [v17 containerStyle];

  if (containerStyle == 1)
  {
    WeakRetained = [(ContaineeViewController *)cardCopy cardPresentationController];
    [(PlaceCardViewController *)WeakRetained wantsLayout:2];
    v19 = 0;
LABEL_22:

    goto LABEL_23;
  }

  v19 = 0;
LABEL_23:
  if ([(TransitLineSelectionActionController *)self->_lineSelectionAction isActive])
  {
    placeCardItem4 = [(PlaceCardViewController *)cardCopy placeCardItem];
    v25 = placeCardItem4;
    if (placeCardItem4)
    {
      v41 = @"ActionControllerDeactivationItemKey";
      v42 = placeCardItem4;
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
    containerViewController4 = [(ActionCoordinator *)self containerViewController];
    chromeViewController2 = [containerViewController4 chromeViewController];
    [chromeViewController2 updateComponentsIfNeeded];
  }

  v29 = [PlaceCardSynchronizationNotificationInfo alloc];
  placeCardItem5 = [(PlaceCardViewController *)cardCopy placeCardItem];
  v31 = +[CarDisplayController sharedInstance];
  platformController = [v31 platformController];
  v33 = [(PlaceCardSynchronizationNotificationInfo *)v29 initWithPlaceCardItem:placeCardItem5 platformController:platformController];

  v34 = +[NSNotificationCenter defaultCenter];
  [v34 postNotificationName:@"IOSBasedPlaceCardDidPresent" object:v33];
}

- (void)presentSimpleList:(id)list
{
  listCopy = list;
  containerViewController = [(ActionCoordinator *)self containerViewController];
  currentViewController = [containerViewController currentViewController];

  if (currentViewController == listCopy)
  {
    containerViewController2 = [(ActionCoordinator *)self containerViewController];
    containeeLayout = [containerViewController2 containeeLayout];

    if (containeeLayout != 1)
    {
      goto LABEL_10;
    }

    cardPresentationController = [listCopy cardPresentationController];
    [cardPresentationController wantsLayout:2];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    currentViewController2 = [WeakRetained currentViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v9 = objc_loadWeakRetained(&self->_containerViewController);
    v10 = v9;
    if (isKindOfClass)
    {
      [v9 replaceCurrentWithController:listCopy moveToContaineeLayout:2];

      [(PlaceCardViewController *)self->_placeCardViewController resetState];
      goto LABEL_10;
    }

    currentViewController3 = [v9 currentViewController];
    objc_opt_class();
    v15 = objc_opt_isKindOfClass();

    v16 = objc_loadWeakRetained(&self->_containerViewController);
    cardPresentationController = v16;
    if (v15)
    {
      [v16 replaceCurrentWithController:listCopy moveToContaineeLayout:2];
    }

    else
    {
      [v16 presentController:listCopy];
    }
  }

LABEL_10:
  [(ActionCoordinator *)self ensureMapSelectionVisible];
}

- (void)setIsRoutePlanningPresented:(BOOL)presented
{
  if (self->_routePlanningDataCoordinator)
  {
    presentedCopy = presented;
    if (self->_isRoutePlanningPresented == presented)
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
      *&v11[6] = presentedCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Changing isRoutePlanningPresented from %d to %d", &v10, 0xEu);
    }

    self->_isRoutePlanningPresented = presentedCopy;
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
    venuesManager = [(ActionCoordinator *)self venuesManager];
    v6 = [(VenueCardCoordinator *)v4 initWithActionCoordinator:self venueChangeNotifier:venuesManager];
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
    routePlanningDataCoordinator = [(ActionCoordinator *)self routePlanningDataCoordinator];
    v5 = [(RoutePlanningRoutingAppsController *)v3 initWithDataCoordination:routePlanningDataCoordinator];

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
      routePlanningDataCoordinator = [(ActionCoordinator *)self routePlanningDataCoordinator];
      v5 = [(RouteIncidentsViewController *)v3 initWithDataCoordination:routePlanningDataCoordinator];
      incidentsVC = self->_incidentsVC;
      self->_incidentsVC = v5;

      [(ContaineeViewController *)self->_incidentsVC setContaineeDelegate:self];
    }

    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    traitCollection = [WeakRetained traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom == 5)
    {
      [(RouteIncidentsViewController *)self->_incidentsVC setModalPresentationStyle:7];
      v10 = objc_loadWeakRetained(&self->_incidentsVCSourceView);
      popoverPresentationController = [(RouteIncidentsViewController *)self->_incidentsVC popoverPresentationController];
      [popoverPresentationController setSourceView:v10];

      v12 = objc_loadWeakRetained(&self->_incidentsVCSourceView);
      [v12 bounds];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      popoverPresentationController2 = [(RouteIncidentsViewController *)self->_incidentsVC popoverPresentationController];
      [popoverPresentationController2 setSourceRect:{v14, v16, v18, v20}];

      popoverPresentationController3 = [(RouteIncidentsViewController *)self->_incidentsVC popoverPresentationController];
      [popoverPresentationController3 setPermittedArrowDirections:12];
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
    containerViewController = [(ActionCoordinator *)self containerViewController];
    v4 = sub_10000FA08(containerViewController);

    if (v4 == 5 && (_UISolariumEnabled() & 1) == 0)
    {
      BOOL = GEOConfigGetBOOL();
    }

    else
    {
      BOOL = 0;
    }

    v10 = [RoutePlanningOptionsViewController alloc];
    routePlanningDataCoordinator = [(ActionCoordinator *)self routePlanningDataCoordinator];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100925FA8;
    v28[3] = &unk_10162E5D0;
    v28[4] = self;
    v9 = [(RoutePlanningOptionsViewController *)v10 initWithDataCoordinator:routePlanningDataCoordinator automaticallySaveChanges:BOOL completionHandler:v28];

    if ((_UISolariumEnabled() & 1) == 0)
    {
      traitCollection = [(RoutePlanningOptionsViewController *)v9 traitCollection];
      userInterfaceIdiom = [traitCollection userInterfaceIdiom];

      if (userInterfaceIdiom == 5)
      {
        routePlanningOverviewViewController = [(ActionCoordinator *)self routePlanningOverviewViewController];
        routeOptionsPopoverSourceView = [routePlanningOverviewViewController routeOptionsPopoverSourceView];

        [(RoutePlanningOptionsViewController *)v9 setModalPresentationStyle:7];
        popoverPresentationController = [(RoutePlanningOptionsViewController *)v9 popoverPresentationController];
        [popoverPresentationController setSourceView:routeOptionsPopoverSourceView];

        [routeOptionsPopoverSourceView bounds];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;
        popoverPresentationController2 = [(RoutePlanningOptionsViewController *)v9 popoverPresentationController];
        [popoverPresentationController2 setSourceRect:{v18, v20, v22, v24}];

        popoverPresentationController3 = [(RoutePlanningOptionsViewController *)v9 popoverPresentationController];
        [popoverPresentationController3 setPermittedArrowDirections:12];
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
    routePlanningDataCoordinator = [(ActionCoordinator *)self routePlanningDataCoordinator];
    routeCollection = [routePlanningDataCoordinator routeCollection];
    currentRoute = [routeCollection currentRoute];

    v6 = [RoutePlanningTimingViewController alloc];
    routePlanningDataCoordinator2 = [(ActionCoordinator *)self routePlanningDataCoordinator];
    timing = [routePlanningDataCoordinator2 timing];
    if (currentRoute)
    {
      shouldShowSchedule = [currentRoute shouldShowSchedule];
    }

    else
    {
      shouldShowSchedule = 0;
    }

    v13 = [(RoutePlanningTimingViewController *)v6 initWithCurrentTiming:timing shouldShowArriveBy:shouldShowSchedule pickerDelegate:self];
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
      routePlanningDataCoordinator = [(ActionCoordinator *)self routePlanningDataCoordinator];
      [(RouteStepsViewController *)self->_routeStepsVC setDataCoordinator:routePlanningDataCoordinator];

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
      routePlanningOverviewViewController = [(ActionCoordinator *)self routePlanningOverviewViewController];
      routeSearchViewController = [routePlanningOverviewViewController routeSearchViewController];

      if (routeSearchViewController)
      {
        routePlanningOverviewViewController2 = [(ActionCoordinator *)self routePlanningOverviewViewController];
        routeSearchViewController2 = [routePlanningOverviewViewController2 routeSearchViewController];
      }

      else
      {
        v13 = [RouteSearchViewController alloc];
        routePlanningOverviewViewController2 = [(ActionCoordinator *)self routePlanningDataCoordinator];
        routeSearchViewController2 = [(RouteSearchViewController *)v13 initWithDelegate:self dataCoordinator:routePlanningOverviewViewController2];
      }

      v14 = self->_routeSearchVC;
      self->_routeSearchVC = routeSearchViewController2;
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
      containerViewController = [(ActionCoordinator *)self containerViewController];
      chromeViewController = [containerViewController chromeViewController];
      v7 = [(RoutePlanningMapController *)v4 initWithChromeViewController:chromeViewController];
      v8 = self->_routePlanningMapController;
      self->_routePlanningMapController = v7;

      [(RoutePlanningMapController *)self->_routePlanningMapController setActionCoordinator:self];
      routePlanningDataCoordinator = [(ActionCoordinator *)self routePlanningDataCoordinator];
      [(RoutePlanningMapController *)self->_routePlanningMapController setDataCoordinator:routePlanningDataCoordinator];

      personalizedItemManager = [(ActionCoordinator *)self personalizedItemManager];
      [(RoutePlanningMapController *)self->_routePlanningMapController setPersonalizedItemManager:personalizedItemManager];

      searchPinsManager = [(ActionCoordinator *)self searchPinsManager];
      [(RoutePlanningMapController *)self->_routePlanningMapController setSearchPinsManager:searchPinsManager];

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
  chromeViewController = [WeakRetained chromeViewController];
  mapView = [chromeViewController mapView];

  return mapView;
}

- (MapCameraFraming)mapCameraController
{
  containerViewController = [(ActionCoordinator *)self containerViewController];
  chromeViewController = [containerViewController chromeViewController];
  mapCameraController = [chromeViewController mapCameraController];

  return mapCameraController;
}

- (MapSelectionManager)mapSelectionManager
{
  containerViewController = [(ActionCoordinator *)self containerViewController];
  chromeViewController = [containerViewController chromeViewController];
  mapSelectionManager = [chromeViewController mapSelectionManager];

  return mapSelectionManager;
}

- (void)setContainerViewController:(id)controller
{
  obj = controller;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);

  if (WeakRetained != obj)
  {
    [(ActionCoordinator *)self removeContainerViewControllerObserver];
    v5 = objc_storeWeak(&self->_containerViewController, obj);
    chromeViewController = [obj chromeViewController];
    [chromeViewController setViewModeDelegate:self];

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
    _newPlaceCardViewControllerForReuse = [(ActionCoordinator *)self _newPlaceCardViewControllerForReuse];
    v5 = self->_placeCardViewController;
    self->_placeCardViewController = _newPlaceCardViewControllerForReuse;

    placeCardViewController = self->_placeCardViewController;
  }

  return placeCardViewController;
}

- (id)placeCardForVenuesViewController:(id)controller
{
  controllerCopy = controller;
  venueCardCoordinator = [(ActionCoordinator *)self venueCardCoordinator];
  v6 = [venueCardCoordinator viewControllerForCardItem:controllerCopy];

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
  chromeViewController = [WeakRetained chromeViewController];
  settingsController = [chromeViewController settingsController];
  [(SettingsViewController *)v3 setSettingsController:settingsController];

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
    mapView = [(ActionCoordinator *)self mapView];
    if (sub_10000FA08(mapView) == 5 && [(ActionCoordinator *)self isRoutePlanningPresented])
    {
      currentSearchSession = [(ActionCoordinator *)self currentSearchSession];

      if (currentSearchSession)
      {
        return 1;
      }
    }

    else
    {
    }

    presentingViewController = [self->_addStopResultsViewController presentingViewController];
    if (presentingViewController)
    {
      items = [self->_currentDirectionItem items];
      v5 = [items count] != 0;
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
    isRoutePlanningPresented = [(ActionCoordinator *)self isRoutePlanningPresented];
    if ((isRoutePlanningPresented & 1) != 0 || ([(RouteSearchViewController *)self->_routeSearchVC presentingViewController], (v2 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      items = [self->_currentDirectionItem items];
      v6 = [items count] != 0;

      if (isRoutePlanningPresented)
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
    appCoordinator = [(ActionCoordinator *)self appCoordinator];
    v6 = [(SimpleResultsViewController *)v4 initWithShareDelegate:appCoordinator];
    v7 = self->_simpleListResultsVC;
    self->_simpleListResultsVC = v6;

    [(SimpleResultsViewController *)self->_simpleListResultsVC setResultsDelegate:self];
    [(ContaineeViewController *)self->_simpleListResultsVC setContaineeDelegate:self];
    [(SimpleResultsViewController *)self->_simpleListResultsVC setEnableQuickActionMenu:1];
    view = [(SimpleResultsViewController *)self->_simpleListResultsVC view];
    simpleListResultsVC = self->_simpleListResultsVC;
  }

  return simpleListResultsVC;
}

- (void)presentRouteLibraryWithAvailableRoutes:(id)routes unavailableRoutes:(id)unavailableRoutes
{
  unavailableRoutesCopy = unavailableRoutes;
  routesCopy = routes;
  v8 = [_TtC4Maps24RouteItemsViewController alloc];
  if (routesCopy)
  {
    v9 = routesCopy;
  }

  else
  {
    v9 = &__NSArray0__struct;
  }

  v11 = [(RouteItemsViewController *)v8 initWithAvailableRoutes:v9 unavailableRoutes:unavailableRoutesCopy isAllSavedRoutes:1];

  [(ContaineeViewController *)v11 setContaineeDelegate:self];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained presentController:v11 animated:1];
}

- (void)viewControllerPresentVirtualGarage:(id)garage
{
  v4 = objc_alloc_init(VehicleListViewController);
  vehicleListVC = self->_vehicleListVC;
  self->_vehicleListVC = v4;

  [(ContaineeViewController *)self->_vehicleListVC setContaineeDelegate:self];
  [(ControlContaineeViewController *)self->_vehicleListVC setDelegate:self];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained presentController:self->_vehicleListVC animated:1];
}

- (void)viewControllerPresentRatingsHistory:(id)history
{
  v5 = [[_TtC4Maps33ARPHistoryContaineeViewController alloc] initWithNibName:0 bundle:0];
  [(ContaineeViewController *)v5 setContaineeDelegate:self];
  [(ARPHistoryContaineeViewController *)v5 setActionDelegate:self];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained presentController:v5 animated:1];
}

- (void)viewControllerPresentUserProfilePreferences:(id)preferences withTabType:(int64_t)type
{
  containerViewController = [(ActionCoordinator *)self containerViewController];
  v7 = sub_10000FA08(containerViewController);

  if (v7 == 5)
  {
    WeakRetained = +[UIApplication sharedMapsDelegate];
    [WeakRetained presentMacPreferencesTabWithType:type];
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

- (void)viewControllerPresentUserProfile:(id)profile
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
      routePlanningDataCoordinator = [(ActionCoordinator *)self routePlanningDataCoordinator];
      v5 = [RoutePlanningOverviewViewController routePlanningOverviewViewControllerWithDataCoordinator:routePlanningDataCoordinator];
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
  searchModeViewController = [(ActionCoordinator *)self searchModeViewController];
  suggestionsItemSource = [searchModeViewController suggestionsItemSource];

  return suggestionsItemSource;
}

- (SettingsController)settingsController
{
  containerViewController = [(ActionCoordinator *)self containerViewController];
  chromeViewController = [containerViewController chromeViewController];
  settingsController = [chromeViewController settingsController];

  return settingsController;
}

- (SearchPinsManager)searchPinsManager
{
  containerViewController = [(ActionCoordinator *)self containerViewController];
  chromeViewController = [containerViewController chromeViewController];
  searchPinsManager = [chromeViewController searchPinsManager];

  return searchPinsManager;
}

- (RouteAnnotationsController)routeAnnotationsController
{
  containerViewController = [(ActionCoordinator *)self containerViewController];
  chromeViewController = [containerViewController chromeViewController];
  routeAnnotationsController = [chromeViewController routeAnnotationsController];

  return routeAnnotationsController;
}

- (UserLocationSearchResult)userLocationSearchResult
{
  mapView = [(ActionCoordinator *)self mapView];
  userLocation = [mapView userLocation];

  annotation = [userLocation annotation];

  return annotation;
}

- (void)getCurrentSceneTitleWithCompletion:(id)completion
{
  completionCopy = completion;
  containerViewController = [(ActionCoordinator *)self containerViewController];
  chromeViewController = [containerViewController chromeViewController];
  errorString = [chromeViewController errorString];

  v8 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v8 userInterfaceIdiom];

  if (errorString)
  {
    completionCopy[2](completionCopy, errorString);
    goto LABEL_23;
  }

  currentMapItem = [(ActionCoordinator *)self currentMapItem];

  if (currentMapItem && userInterfaceIdiom != 5)
  {
    currentMapItem2 = [(ActionCoordinator *)self currentMapItem];
    name = [currentMapItem2 name];
    goto LABEL_6;
  }

  if ([(ActionCoordinator *)self isRoutePlanningPresented]&& userInterfaceIdiom != 5 && self->_routePlanningDataCoordinator)
  {
    endMapItem = [self->_currentDirectionItem endMapItem];
    name2 = [endMapItem name];

    if (name2)
    {
      currentMapItem2 = +[NSBundle mainBundle];
      v16 = [currentMapItem2 localizedStringForKey:@"[App switcher title] Directions to <destination>" value:@"localized string not found" table:0];
      endMapItem2 = [self->_currentDirectionItem endMapItem];
      name3 = [endMapItem2 name];
      v13 = [NSString stringWithFormat:v16, name3];

LABEL_7:
      if (v13)
      {
        completionCopy[2](completionCopy, v13);

        goto LABEL_23;
      }

      goto LABEL_14;
    }

    currentMapItem2 = +[NSBundle mainBundle];
    name = [currentMapItem2 localizedStringForKey:@"[App switcher title] Directions" value:@"localized string not found" table:0];
LABEL_6:
    v13 = name;
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
    userInterfaceIdiom2 = [v20 userInterfaceIdiom];

    if (userInterfaceIdiom2 != 5)
    {
      goto LABEL_23;
    }
  }

  currentSearchSession = [(ActionCoordinator *)self currentSearchSession];

  if (currentSearchSession)
  {
    currentSearchSession2 = [(ActionCoordinator *)self currentSearchSession];
    searchInfo = [currentSearchSession2 searchInfo];
    headerDisplayName = [searchInfo headerDisplayName];
    v26 = headerDisplayName;
    if (headerDisplayName)
    {
      currentSearchSession = headerDisplayName;
    }

    else
    {
      currentSearchSession3 = [(ActionCoordinator *)self currentSearchSession];
      searchFieldItem = [currentSearchSession3 searchFieldItem];
      currentSearchSession = [searchFieldItem title];
    }
  }

  mapView = [(ActionCoordinator *)self mapView];
  [mapView centerCoordinate];
  v31 = v30;
  v33 = v32;

  mapView2 = [(ActionCoordinator *)self mapView];
  [mapView2 visibleMapRect];
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
  v47 = currentSearchSession;
  v48 = completionCopy;
  v49 = v36;
  v50 = v38;
  v51 = v40;
  v52 = v42;
  v45 = currentSearchSession;
  [v43 reverseGeocodeLocation:v44 completionHandler:v46];

LABEL_23:
}

- (void)setCurrentTransitLineItem:(id)item zoomToMapRegion:(BOOL)region preferredLayout:(unint64_t)layout
{
  regionCopy = region;
  itemCopy = item;
  currentTransitLineItem = [(ActionCoordinator *)self currentTransitLineItem];

  v9 = itemCopy;
  if (currentTransitLineItem != itemCopy)
  {
    [(ActionCoordinator *)self viewController:0 selectTransitLineItem:itemCopy zoomToMapRegion:regionCopy preferredLayout:layout];
    v9 = itemCopy;
  }
}

- (void)setCurrentDirectionItem:(id)item withOptions:(id)options
{
  itemCopy = item;
  optionsCopy = options;
  if (self->_routePlanningDataCoordinator)
  {
    if (self->_currentDirectionItem != itemCopy)
    {
      objc_storeStrong(&self->_currentDirectionItem, item);
      if ([self->_currentDirectionItem isVenueItem])
      {
        venueCardCoordinator = [(ActionCoordinator *)self venueCardCoordinator];
        [venueCardCoordinator pushVenueCardItem:self->_currentDirectionItem source:4];
      }

      [(ActionCoordinator *)self viewController:0 doDirectionItem:self->_currentDirectionItem withUserInfo:optionsCopy];
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

- (void)restoreSearchForItem:(id)item withResults:(id)results sessionOrigin:(unint64_t)origin
{
  itemCopy = item;
  resultsCopy = results;
  if (([resultsCopy isSearchAlongRoute] & 1) == 0)
  {
    [(SearchSessionManager *)self->_searchSessionManager restoreSearchForItem:itemCopy withResults:resultsCopy sessionOrigin:origin];
  }
}

- (void)presentSearchAndRestoreSearchItem:(id)item
{
  itemCopy = item;
  [(ActionCoordinator *)self clearSearch];
  [(ActionCoordinator *)self presentSearch];
  searchModeViewController = [(ActionCoordinator *)self searchModeViewController];
  [searchModeViewController restoreSearchItem:itemCopy];
}

- (void)endSearchForTesting
{
  searchModeViewController = [(ActionCoordinator *)self searchModeViewController];
  [searchModeViewController endSearchForTesting];
}

- (void)endSearch
{
  searchModeViewController = [(ActionCoordinator *)self searchModeViewController];
  [searchModeViewController endSearch];
}

- (void)clearSearchPins
{
  searchPinsManager = [(ActionCoordinator *)self searchPinsManager];
  [searchPinsManager clearSearchPins];
}

- (void)clearSearchIfOriginatedFromWaypointEditor
{
  searchSessionManager = [(ActionCoordinator *)self searchSessionManager];
  currentSearchSession = [searchSessionManager currentSearchSession];
  isAddStopFromWaypointEditor = [currentSearchSession isAddStopFromWaypointEditor];

  if (isAddStopFromWaypointEditor)
  {

    [(ActionCoordinator *)self clearSearch];
  }
}

- (void)clearSearch
{
  containerViewController = [(ActionCoordinator *)self containerViewController];
  floatingControlsPresentationController = [containerViewController floatingControlsPresentationController];
  [floatingControlsPresentationController setSearchSession:0];

  [(SearchSessionManager *)self->_searchSessionManager clearSearchSession];
  searchPinsManager = [(ActionCoordinator *)self searchPinsManager];
  [searchPinsManager clearSearchPins];

  searchModeViewController = [(ActionCoordinator *)self searchModeViewController];
  [searchModeViewController cleanSearch];

  v7 = +[MapsOfflineUIHelper sharedHelper];
  LODWORD(floatingControlsPresentationController) = [v7 isUsingOfflineMaps];

  if (floatingControlsPresentationController)
  {
    searchModeViewController2 = [(ActionCoordinator *)self searchModeViewController];
    [searchModeViewController2 resetOfflineTextSearchSupport];
  }
}

- (void)clearMapSelection
{
  mapSelectionManager = [(ActionCoordinator *)self mapSelectionManager];
  [mapSelectionManager clearSelection];
}

- (void)dealloc
{
  v3 = sub_10001CDEC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
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

- (ActionCoordinator)initWithPlatformController:(id)controller
{
  controllerCopy = controller;
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
      v20 = controllerCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Initializing with platform controller: %@", buf, 0x16u);
    }

    objc_storeStrong(&v6->_platformController, controller);
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
  newTraits = [(ActionCoordinator *)self newTraits];

  return newTraits;
}

- (void)simpleResultsViewContoller:(id)contoller didTapOnAddStopWithSearchResult:(id)result
{
  v9 = @"DirectionsSessionInitiatorKey";
  v10 = &off_1016E8048;
  resultCopy = result;
  contollerCopy = contoller;
  v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [(ActionCoordinator *)self viewController:contollerCopy addStopForSearchResult:resultCopy withUserInfo:v8];
}

- (void)simpleResultsViewContoller:(id)contoller showUserGeneratedCollection:(id)collection
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100A284F0;
  v6[3] = &unk_101661A90;
  selfCopy = self;
  contollerCopy = contoller;
  v5 = contollerCopy;
  [(ActionCoordinator *)selfCopy viewController:v5 showCollection:collection completion:v6];
}

- (void)simpleResultsViewContoller:(id)contoller showCuratedCollectionsList:(id)list title:(id)title
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100A285F8;
  v8[3] = &unk_101661A90;
  selfCopy = self;
  contollerCopy = contoller;
  v7 = contollerCopy;
  [(ActionCoordinator *)selfCopy viewController:v7 showCuratedCollectionsList:list usingTitle:title usingCollectionIds:0 completion:v8];
}

- (void)simpleResultsViewContoller:(id)contoller showCuratedCollection:(id)collection
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100A286F8;
  v6[3] = &unk_101661A90;
  selfCopy = self;
  contollerCopy = contoller;
  v5 = contollerCopy;
  [(ActionCoordinator *)selfCopy viewController:v5 showCuratedCollection:collection replaceViewController:0 completion:v6];
}

- (void)simpleResultsViewContoller:(id)contoller selectTappableEntry:(id)entry resultsList:(id)list
{
  listCopy = list;
  entryCopy = entry;
  v11 = [[SearchResult alloc] initWithMapItem:entryCopy];

  v9 = [listCopy arrayByAddingObject:v11];

  searchPinsManager = [(ActionCoordinator *)self searchPinsManager];
  [searchPinsManager setSearchPins:v9 selectedPin:v11 animated:1];
}

- (void)simpleResultsViewContoller:(id)contoller selectContainmentParentMapItem:(id)item resultsList:(id)list
{
  listCopy = list;
  itemCopy = item;
  v11 = [[SearchResult alloc] initWithMapItem:itemCopy];

  v9 = [listCopy arrayByAddingObject:v11];

  searchPinsManager = [(ActionCoordinator *)self searchPinsManager];
  [searchPinsManager setSearchPins:v9 selectedPin:v11 animated:1];
}

- (void)simpleResultsViewContoller:(id)contoller didTapOnFlyoverWithSearchResult:(id)result
{
  contollerCopy = contoller;
  mapItem = [result mapItem];
  [(ActionCoordinator *)self viewController:contollerCopy enterFlyoverForMapItem:mapItem];
}

- (void)simpleResultsViewContoller:(id)contoller didTapOnWebsiteWithSearchResult:(id)result
{
  resultCopy = result;
  v7 = +[UIApplication sharedApplication];
  mapItem = [resultCopy mapItem];

  v6 = [mapItem url];
  [v7 openURL:v6 withCompletionHandler:0];
}

- (void)simpleResultsViewContoller:(id)contoller didTapOnCallWithSearchResult:(id)result
{
  mapItem = [result mapItem];
  phoneNumber = [mapItem phoneNumber];
  v5 = [phoneNumber length];

  if (v5)
  {
    v6 = +[UIApplication sharedApplication];
    phoneNumber2 = [mapItem phoneNumber];
    [v6 callPhoneNumber:phoneNumber2 completion:0];
  }
}

- (void)simpleResultsViewContoller:(id)contoller didTapOnLookAroundWithSearchResult:(id)result
{
  mapItem = [result mapItem];
  if ([mapItem _hasLookAroundStorefront])
  {
    v5 = [MKLookAroundEntryPoint entryPointWithMapItem:mapItem wantsCloseUpView:1];
    [(ActionCoordinator *)self enterLookAroundWithEntryPoint:v5 lookAroundView:0 showsFullScreen:1 originFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  }
}

- (void)simpleResultsViewContoller:(id)contoller selectDirectionItem:(id)item
{
  v9 = @"DirectionsSessionInitiatorKey";
  v10 = &off_1016E8048;
  itemCopy = item;
  contollerCopy = contoller;
  v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [(ActionCoordinator *)self viewController:contollerCopy doDirectionItem:itemCopy withUserInfo:v8];
}

- (void)simpleResultsViewContoller:(id)contoller selectClusteredLabelMarker:(id)marker
{
  markerCopy = marker;
  mapSelectionManager = [(ActionCoordinator *)self mapSelectionManager];
  [mapSelectionManager selectLabelMarker:markerCopy animated:1];
}

- (void)simpleResultsViewContoller:(id)contoller selectSearchResult:(id)result
{
  resultCopy = result;
  contollerCopy = contoller;
  venueCardCoordinator = [(ActionCoordinator *)self venueCardCoordinator];
  topViewController = [venueCardCoordinator topViewController];

  if (topViewController == contollerCopy)
  {
    [(ActionCoordinator *)self viewController:0 presentVenuesClusteredSearchResult:resultCopy];
  }

  else
  {
    mapSelectionManager = [(ActionCoordinator *)self mapSelectionManager];
    [mapSelectionManager selectSearchResult:resultCopy animated:1];
  }
}

- (id)traitsForQuickActionPresenter
{
  newTraits = [(ActionCoordinator *)self newTraits];

  return newTraits;
}

- (id)allSearchResultsForCurrentPinsOnMap
{
  searchPinsManager = [(ActionCoordinator *)self searchPinsManager];
  allSearchResults = [searchPinsManager allSearchResults];

  return allSearchResults;
}

- (void)selectSearchResult:(id)result animated:(BOOL)animated
{
  animatedCopy = animated;
  resultCopy = result;
  mapSelectionManager = [(ActionCoordinator *)self mapSelectionManager];
  [mapSelectionManager selectSearchResult:resultCopy animated:animatedCopy];
}

- (void)enterRouteCreationWithMapItem:(id)item completion:(id)completion
{
  completionCopy = completion;
  itemCopy = item;
  appCoordinator = [(ActionCoordinator *)self appCoordinator];
  [appCoordinator enterRouteCreationWithMapItem:itemCopy completion:completionCopy];
}

- (void)setSearchPins:(id)pins selectedPin:(id)pin animated:(BOOL)animated
{
  animatedCopy = animated;
  pinCopy = pin;
  pinsCopy = pins;
  searchPinsManager = [(ActionCoordinator *)self searchPinsManager];
  [searchPinsManager setSearchPins:pinsCopy selectedPin:pinCopy animated:animatedCopy];
}

- (void)setSearchPinsFromSearchInfo:(id)info scrollToResults:(BOOL)results displayPlaceCardForResult:(id)result animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  resultsCopy = results;
  completionCopy = completion;
  resultCopy = result;
  infoCopy = info;
  searchPinsManager = [(ActionCoordinator *)self searchPinsManager];
  [searchPinsManager setSearchPinsFromSearchInfo:infoCopy scrollToResults:resultsCopy displayPlaceCardForResult:resultCopy animated:animatedCopy completion:completionCopy];
}

- (void)lineCardViewControllerDidAppear:(id)appear
{
  appearCopy = appear;
  lineSelectionAction = [(ActionCoordinator *)self lineSelectionAction];
  lineItem = [appearCopy lineItem];
  v6 = [lineSelectionAction isShowingLineForLineItem:lineItem];

  if ((v6 & 1) == 0)
  {
    lineItem2 = [appearCopy lineItem];
    [(ActionCoordinator *)self viewController:appearCopy selectTransitLineItem:lineItem2 zoomToMapRegion:0];
  }
}

- (void)lineCardViewController:(id)controller displayMapRegion:(id)region
{
  regionCopy = region;
  mapCameraController = [(ActionCoordinator *)self mapCameraController];
  [mapCameraController displayMapRegion:regionCopy animated:1 completion:0];
}

- (void)lineCardViewController:(id)controller selectMapItem:(id)item
{
  itemCopy = item;
  [(ActionCoordinator *)self viewController:controller selectMapItem:itemCopy address:0 addToHistory:1 source:4];
  mapCameraController = [(ActionCoordinator *)self mapCameraController];
  [mapCameraController frameMapItem:itemCopy animated:1 completion:0];
}

- (void)lineCardViewController:(id)controller doDirectionItem:(id)item
{
  v9 = @"DirectionsSessionInitiatorKey";
  v10 = &off_1016EAB08;
  itemCopy = item;
  controllerCopy = controller;
  v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [(ActionCoordinator *)self viewController:controllerCopy doDirectionItem:itemCopy withUserInfo:v8];
}

- (BOOL)chromeShouldAllowSelectingAnnotationView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [viewCopy isVLFPuckVisible])
  {
    platformController = [(ActionCoordinator *)self platformController];
    auxiliaryTasksManager = [platformController auxiliaryTasksManager];
    v7 = [auxiliaryTasksManager auxilaryTaskForClass:objc_opt_class()];

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

- (BOOL)chromeDidSelectOfflineAnnotationMarker:(id)marker
{
  markerCopy = marker;
  x = MKMapRectNull.origin.x;
  y = MKMapRectNull.origin.y;
  v35 = y;
  if ([markerCopy _maps_isOfflineAnnotation])
  {
    featureAnnotation = [markerCopy featureAnnotation];
    subscription = [featureAnnotation subscription];
    region = [subscription region];
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
    if (![markerCopy _maps_isOfflineClusterAnnotation])
    {
      goto LABEL_14;
    }

    featureAnnotation = [markerCopy clusterFeatureAnnotations];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v16 = [featureAnnotation countByEnumeratingWithState:&v36 objects:v40 count:16];
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
            objc_enumerationMutation(featureAnnotation);
          }

          v20 = *(*(&v36 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            subscription2 = [v20 subscription];
            region2 = [subscription2 region];
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

        v17 = [featureAnnotation countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v17);
    }
  }

LABEL_14:
  if (x != MKMapRectNull.origin.x || y != v35)
  {
    mapSelectionManager = [(ActionCoordinator *)self mapSelectionManager];
    mapView = [mapSelectionManager mapView];
    [mapView setVisibleMapRect:1 edgePadding:x animated:{y, width, height, 35.0, 35.0, 35.0, 35.0}];

    mapSelectionManager2 = [(ActionCoordinator *)self mapSelectionManager];
    [mapSelectionManager2 clearSelection];
  }

  return x != MKMapRectNull.origin.x || y != v35;
}

- (BOOL)chromeDidSelectRouteAnnotations:(id)annotations
{
  annotationsCopy = annotations;
  if ([annotationsCopy count])
  {
    firstObject = [annotationsCopy firstObject];
    routeAnnotationVC = [(ActionCoordinator *)self routeAnnotationVC];
    [routeAnnotationVC setRouteAnnotation:firstObject];

    styleAttributes = [firstObject styleAttributes];
    v8 = FeatureStyleAttributesFind();

    if (v8)
    {
      v9 = [NSNumber numberWithInt:0];
    }

    else
    {
      v9 = 0;
    }

    routePlanningDataCoordinator = [(ActionCoordinator *)self routePlanningDataCoordinator];
    transportType = [routePlanningDataCoordinator transportType];

    if (transportType == 5 || transportType == 2)
    {
      if (transportType == 2)
      {
        v12 = 312;
      }

      else
      {
        v12 = 67;
      }

      v13 = +[MKMapService sharedService];
      currentMapViewTargetForAnalytics = [(ActionCoordinator *)self currentMapViewTargetForAnalytics];
      stringValue = [v9 stringValue];
      [v13 captureUserAction:v12 onTarget:currentMapViewTargetForAnalytics eventValue:stringValue];
    }

    containerViewController = [(ActionCoordinator *)self containerViewController];
    currentViewController = [containerViewController currentViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    containerViewController2 = [(ActionCoordinator *)self containerViewController];
    routeAnnotationVC2 = [(ActionCoordinator *)self routeAnnotationVC];
    if (isKindOfClass)
    {
      [containerViewController2 replaceCurrentWithController:routeAnnotationVC2 moveToContaineeDefaultLayout:1];
    }

    else
    {
      [containerViewController2 presentController:routeAnnotationVC2 animated:1 useDefaultContaineeLayout:1];
    }
  }

  return 1;
}

- (BOOL)chromeDidSelectETAMarkerForRoute:(id)route
{
  routeCopy = route;
  routePlanningDataCoordinator = [(ActionCoordinator *)self routePlanningDataCoordinator];
  [routePlanningDataCoordinator updateCurrentRoute:routeCopy];

  [(ActionCoordinator *)self presentRoutePlanningViewType:0];
  v6 = +[MKMapService sharedService];
  currentMapViewTargetForAnalytics = [(ActionCoordinator *)self currentMapViewTargetForAnalytics];
  _maps_routeIndex = [routeCopy _maps_routeIndex];

  [v6 captureUserAction:3015 onTarget:currentMapViewTargetForAnalytics eventValue:0 routeIndex:_maps_routeIndex];
  return 1;
}

- (BOOL)chromeDidSelectTrafficIncident:(id)incident latitude:(id)latitude longitude:(id)longitude
{
  incidentCopy = incident;
  trafficIncidentVC = [(ActionCoordinator *)self trafficIncidentVC];
  [trafficIncidentVC updateWithIncident:incidentCopy];

  containerViewController = [(ActionCoordinator *)self containerViewController];
  currentViewController = [containerViewController currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  containerViewController2 = [(ActionCoordinator *)self containerViewController];
  trafficIncidentVC2 = [(ActionCoordinator *)self trafficIncidentVC];
  if (isKindOfClass)
  {
    [containerViewController2 replaceCurrentWithController:trafficIncidentVC2 moveToContaineeDefaultLayout:1];
  }

  else
  {
    [containerViewController2 presentController:trafficIncidentVC2 animated:1 useDefaultContaineeLayout:1];
  }

  v13 = +[MKMapService sharedService];
  v14 = +[MKTrafficSupport GEOTrafficIncidentTypeForVKTrafficIncidentType:](MKTrafficSupport, "GEOTrafficIncidentTypeForVKTrafficIncidentType:", [incidentCopy type]);
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

- (BOOL)chromeDidSelectTransitLineMarker:(id)marker
{
  markerCopy = marker;
  lineSelectionAction = [(ActionCoordinator *)self lineSelectionAction];

  if (!lineSelectionAction)
  {
    v6 = [TransitLineSelectionActionController alloc];
    containerViewController = [(ActionCoordinator *)self containerViewController];
    v8 = [(TransitLineSelectionActionController *)v6 initWithContainerViewController:containerViewController actionCoordinator:self];
    [(ActionCoordinator *)self setLineSelectionAction:v8];
  }

  lineSelectionAction2 = [(ActionCoordinator *)self lineSelectionAction];
  v10 = [lineSelectionAction2 isShowingLineForLabelMarker:markerCopy];

  if ((v10 & 1) == 0)
  {
    lineCardVC = [(ActionCoordinator *)self lineCardVC];
    _maps_numLines = [markerCopy _maps_numLines];
    v13 = _maps_numLines > 1;
    _maps_loadedLineItems = [markerCopy _maps_loadedLineItems];

    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0;
    v15 = _maps_numLines < 2 && _maps_loadedLineItems == 0;
    v16 = v15;
    if (v15)
    {
      v17 = [[IncompleteTransitLineItem alloc] initWithLabelMarker:markerCopy];
      [(ActionCoordinator *)self presentLineCardForItem:v17 labelMarker:markerCopy loading:1 overDisambiguation:_maps_numLines > 1 preferredLayout:0];

      lineItem = [lineCardVC lineItem];
      muid = [lineItem muid];
      v32[3] = muid;
    }

    lineSelectionAction3 = [(ActionCoordinator *)self lineSelectionAction];
    _maps_lineShouldZoomMapRegionOnSelection = [markerCopy _maps_lineShouldZoomMapRegionOnSelection];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100F7B288;
    v25[3] = &unk_10165EDF8;
    v25[4] = self;
    v29 = v13;
    v22 = markerCopy;
    v26 = v22;
    v23 = lineCardVC;
    v27 = v23;
    v28 = &v31;
    v30 = v16;
    [lineSelectionAction3 selectLineForLabelMarker:v22 zoomToMapRegion:_maps_lineShouldZoomMapRegionOnSelection onActivation:v25];

    [v22 set_maps_lineShouldZoomMapRegionOnSelection:0];
    _Block_object_dispose(&v31, 8);
  }

  return 1;
}

- (BOOL)chromeDidSelectFlyoverTourLabelMarker:(id)marker
{
  flyoverTourIdentifier = [marker flyoverTourIdentifier];
  v5 = +[MKMapService sharedService];
  v11 = flyoverTourIdentifier;
  v6 = [NSArray arrayWithObjects:&v11 count:1];
  newTraits = [(ActionCoordinator *)self newTraits];
  v8 = [v5 ticketForIdentifiers:v6 traits:newTraits];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100F7B54C;
  v10[3] = &unk_101660FB0;
  v10[4] = self;
  [v8 submitWithHandler:v10 networkActivity:0];

  return 1;
}

- (BOOL)chromeDidSelectWaypointMarkerForAddress:(id)address
{
  addressCopy = address;
  objc_initWeak(&location, self);
  contact = [addressCopy contact];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100F7B6D0;
  v7[3] = &unk_10165EDD0;
  objc_copyWeak(&v8, &location);
  [_TtC4Maps22MapsAutocompletePerson autoCompletePersonWithContact:contact completionHandler:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return 1;
}

- (BOOL)chromeDidSelectWaypointMarkerForFindMyHandleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  currentSearchSession = [(ActionCoordinator *)self currentSearchSession];
  searchInfo = [currentSearchSession searchInfo];

  autocompletePerson = [searchInfo autocompletePerson];
  handle = [autocompletePerson handle];
  v8Handle = [handle handle];
  handleIdentifier = [v8Handle handleIdentifier];
  if (![identifierCopy isEqualToString:handleIdentifier])
  {

    goto LABEL_7;
  }

  results = [searchInfo results];
  v12 = [results count];

  if (!v12)
  {
LABEL_7:
    objc_initWeak(buf, self);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100F7BAB0;
    v18[3] = &unk_10165EDA8;
    v19 = identifierCopy;
    objc_copyWeak(&v20, buf);
    [_TtC4Maps22MapsAutocompletePerson autoCompletePersonWithHandleIdentifier:v19 completionHandler:v18];
    objc_destroyWeak(&v20);

    objc_destroyWeak(buf);
    goto LABEL_8;
  }

  searchPinsManager = [(ActionCoordinator *)self searchPinsManager];
  results2 = [searchInfo results];
  firstObject = [results2 firstObject];
  [searchPinsManager setSearchPinsFromSearchInfo:searchInfo scrollToResults:1 displayPlaceCardForResult:firstObject animated:1 completion:0];

  v16 = sub_100798A3C();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Using the same search session to select a waypoint: %@", buf, 0xCu);
  }

LABEL_8:
  return 1;
}

- (BOOL)chromeDidSelectRouteWaypointMarker:(id)marker
{
  markerCopy = marker;
  v5 = [MKMapItemIdentifier alloc];
  featureID = [markerCopy featureID];
  [markerCopy coordinate];
  v8 = v7;
  [markerCopy coordinate];
  v9 = [v5 initWithMUID:featureID resultProviderID:0 coordinate:v8];
  v10 = +[MKMapService sharedService];
  v19 = v9;
  v11 = [NSArray arrayWithObjects:&v19 count:1];
  newTraits = [(ActionCoordinator *)self newTraits];
  v13 = [v10 ticketForIdentifiers:v11 traits:newTraits];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100F7BE24;
  v16[3] = &unk_10165FE18;
  v17 = markerCopy;
  selfCopy = self;
  v14 = markerCopy;
  [v13 submitWithHandler:v16 networkActivity:0];

  return 1;
}

- (BOOL)chromeDidSelectCustomPOIAnnotation:(id)annotation
{
  annotationCopy = annotation;
  parkedCar = [annotationCopy parkedCar];
  if (parkedCar)
  {

    searchResult = 0;
LABEL_3:
    personalizedItem = [annotationCopy personalizedItem];
    [(ActionCoordinator *)self viewController:0 selectPersonalizedItem:personalizedItem source:1 saveSelectionState:0];

    goto LABEL_4;
  }

  searchResult = [annotationCopy searchResult];
  if (!searchResult)
  {
    goto LABEL_3;
  }

  venueCardCoordinator = [(ActionCoordinator *)self venueCardCoordinator];
  topViewController = [venueCardCoordinator topViewController];
  currentViewController = [(ActionCoordinator *)self currentViewController];
  v12 = currentViewController;
  if (topViewController == currentViewController)
  {
    currentViewController2 = [(ActionCoordinator *)self currentViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [(ActionCoordinator *)self viewController:0 presentVenuesClusteredSearchResult:searchResult];
      goto LABEL_4;
    }
  }

  else
  {
  }

  if ([searchResult type] == 3)
  {
    goto LABEL_3;
  }

  currentSearchSession = [(ActionCoordinator *)self currentSearchSession];
  if ([currentSearchSession singleResultMode])
  {
    currentSearchSession2 = [(ActionCoordinator *)self currentSearchSession];
    searchFieldItem = [currentSearchSession2 searchFieldItem];
    searchResult2 = [searchFieldItem searchResult];

    if (searchResult2 == searchResult)
    {
      goto LABEL_4;
    }
  }

  else
  {
  }

  autocompletePerson = [searchResult autocompletePerson];
  if (autocompletePerson)
  {
  }

  else
  {
    findMyHandle = [searchResult findMyHandle];

    if (!findMyHandle)
    {
      v21 = 1;
      goto LABEL_19;
    }
  }

  v21 = 0;
LABEL_19:
  if ([searchResult locationType] == 4)
  {
    v22 = +[MKMapService sharedService];
    [v22 captureUserAction:404 onTarget:502 eventValue:0];
  }

  containerViewController = [(ActionCoordinator *)self containerViewController];
  if (sub_10000FA08(containerViewController) == 5)
  {
    currentViewController3 = [(ActionCoordinator *)self currentViewController];
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

  [(ActionCoordinator *)self viewController:0 selectSearchResult:searchResult addToHistory:v21 source:v26 saveSelectionState:0 replaceCurrentCard:1];
LABEL_4:

  return 1;
}

- (BOOL)chromeDidClearMapSelection
{
  containerViewController = [(ActionCoordinator *)self containerViewController];
  currentOrPendingViewController = [containerViewController currentOrPendingViewController];

  if ([currentOrPendingViewController isMemberOfClass:objc_opt_class()])
  {
    if ([(ActionCoordinator *)self shouldDismissPlaceCardOnClearMapSelection])
    {
      [(ActionCoordinator *)self viewControllerClosed:currentOrPendingViewController animated:1];
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

          if ([currentOrPendingViewController isMemberOfClass:{*(*(&v11 + 1) + 8 * i), v11}])
          {
            [(ActionCoordinator *)self viewControllerClosed:currentOrPendingViewController animated:1];
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

- (BOOL)chromeDidSelectUserLocationAnnotation:(id)annotation
{
  annotation = [annotation annotation];
  [(ActionCoordinator *)self viewController:0 selectSearchResult:annotation addToHistory:0 source:1 saveSelectionState:0];

  return 1;
}

- (BOOL)chromeDidSelectClusteredFeatureAnnotationsMarker:(id)marker
{
  markerCopy = marker;
  if (GEOConfigGetBOOL() && [(ActionCoordinator *)self isPresentingAddStopSearchResults])
  {
    v5 = [_TtC4Maps36ClusteredResultsContextConfiguration alloc];
    currentSearchSession = [(ActionCoordinator *)self currentSearchSession];
    searchInfo = [currentSearchSession searchInfo];
    v8 = [(ClusteredResultsContextConfiguration *)v5 initWithLabelMarker:markerCopy sortAlphabetically:1 displayDistance:1 originalSearchInfo:searchInfo currentLocation:0];

    containerViewController = [(ActionCoordinator *)self containerViewController];
    chromeViewController = [containerViewController chromeViewController];
    topContext = [chromeViewController topContext];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [topContext updateWithConfiguration:v8];
    }

    else
    {
      v12 = [[_TtC4Maps23ClusteredResultsContext alloc] initWithConfiguration:v8];
      containerViewController2 = [(ActionCoordinator *)self containerViewController];
      chromeViewController2 = [containerViewController2 chromeViewController];
      [chromeViewController2 pushContext:v12 animated:1 completion:&stru_10165ED80];
    }
  }

  else
  {
    [(ActionCoordinator *)self viewController:0 presentCluster:markerCopy];
  }

  return 1;
}

- (BOOL)chromeDidSelectClusteredWaypointMarker:(id)marker
{
  markerCopy = marker;
  if ([markerCopy isCluster])
  {
    clusterWaypointInfos = [markerCopy clusterWaypointInfos];
    v6 = [clusterWaypointInfos _maps_compactMap:&stru_10165ED60];

    v7 = [v6 count];
    v8 = v7 != 0;
    if (v7)
    {
      simpleListResultsVC = [(ActionCoordinator *)self simpleListResultsVC];
      cluster = [simpleListResultsVC cluster];

      if (cluster != markerCopy)
      {
        simpleListResultsVC2 = [(ActionCoordinator *)self simpleListResultsVC];
        [simpleListResultsVC2 clearCluster];
      }

      simpleListResultsVC3 = [(ActionCoordinator *)self simpleListResultsVC];
      [simpleListResultsVC3 setDisplayDistance:1];

      simpleListResultsVC4 = [(ActionCoordinator *)self simpleListResultsVC];
      currentSearchSession = [(ActionCoordinator *)self currentSearchSession];
      searchInfo = [currentSearchSession searchInfo];
      [simpleListResultsVC4 setCluster:markerCopy sortAlphabetically:0 originalSearchInfo:searchInfo searchResults:v6];

      simpleListResultsVC5 = [(ActionCoordinator *)self simpleListResultsVC];
      [(ActionCoordinator *)self presentSimpleList:simpleListResultsVC5];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)chromeShouldAllowSelectingLabelMarker:(id)marker
{
  markerCopy = marker;
  if ([markerCopy isTransitLine] && -[ActionCoordinator isRoutePlanningPresented](self, "isRoutePlanningPresented") || (objc_msgSend(markerCopy, "waypointInfo"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "waypoint"), v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v7 = objc_opt_isKindOfClass(), v6, v5, (v7 & 1) != 0))
  {
    v8 = 0;
  }

  else
  {
    containerViewController = [(ActionCoordinator *)self containerViewController];
    currentViewController = [containerViewController currentViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v8 = isKindOfClass ^ 1;
  }

  return v8 & 1;
}

@end