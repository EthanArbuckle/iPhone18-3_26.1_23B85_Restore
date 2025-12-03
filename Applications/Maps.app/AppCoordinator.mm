@interface AppCoordinator
- (ActionCoordination)baseActionCoordinator;
- (AppCoordinator)initWithPlatformController:(id)controller;
- (BOOL)applyPendingActionIfNeeded;
- (BOOL)isNavigationTurnByTurnOrStepping;
- (BOOL)isRoutePlanningPresented;
- (BOOL)pptTestCanResizePlacecard;
- (BOOL)pptTestCanUpdateTrayLayout;
- (BOOL)pptTestHasNextStep;
- (BOOL)pptTestIsTrayType:(int64_t)type;
- (BOOL)pptTestMoveToBoardStep;
- (BOOL)pptTestSupportStepping;
- (BaseModeController)baseModeController;
- (IOSBasedChromeViewController)chromeViewController;
- (IOSTransitNavigationContext)transitNavigationContext;
- (MKMapView)mapViewForPPTTest;
- (MKMapView)mapsActivityMapView;
- (MapsSceneDelegate)mapsSceneDelegate;
- (NavModeController)navModeController;
- (UIScrollView)pptTestScrollView;
- (UIScrollView)pptTestScrollViewForDirectionsDetails;
- (UIScrollView)pptTestScrollViewForProactive;
- (UIViewController)pptTestContaineeForDirectionsDetails;
- (id)_pptChromeTrayCoordinatorForCurrentMode;
- (id)lookAroundActionCoordinator;
- (int)_analyticsPipelineTransportModeForMSPTransportType:(int64_t)type;
- (int64_t)pptTestCurrentStepIndex;
- (void)_displayOrScheduleDisplayOfEnqueuedFixedProblemInvokedAfterWait:(BOOL)wait;
- (void)_navigationSession:(id)session didChangeState:(unint64_t)state;
- (void)_navigationSessionRunning:(id)running;
- (void)_navigationSessionStopped:(id)stopped movingToSession:(id)session;
- (void)_openSharedTrip:(id)trip;
- (void)_popNavModeWithCompletion:(id)completion;
- (void)_popSteppingModeWithCompletion:(id)completion;
- (void)_shareItem:(id)item presentationOptions:(id)options completion:(id)completion;
- (void)addStopWithMapItem:(id)item;
- (void)addStopWithWaypoint:(id)waypoint;
- (void)archiveMapsActivity;
- (void)closeSharedTrips;
- (void)continueRideBookingSessionWithApplicationIdentifier:(id)identifier;
- (void)dismissLastVenuePlaceCard;
- (void)dismissRidesharingSessionAndReturnToRoutePlanning:(BOOL)planning;
- (void)dismissShareIfNeededAnimated:(BOOL)animated;
- (void)displayClusteredResultsWithConfiguration:(id)configuration;
- (void)displayIncidentReportSubmissionWithItem:(id)item report:(id)report;
- (void)displayOrScheduleDisplayOfEnqueuedFixedProblem:(id)problem;
- (void)displayPlaceCardForMapItem:(id)item addToHistory:(BOOL)history presentationActionSource:(unint64_t)source;
- (void)displayPlaceCardWithConfiguration:(id)configuration;
- (void)displayTransitSchedulesForMapItem:(id)item departureSequence:(id)sequence;
- (void)displayTransitSchedulesForRouteStep:(id)step;
- (void)editLocationForParkedCar:(id)car;
- (void)editUserGuide:(id)guide;
- (void)endNavigationAndReturnToRoutePlanning:(BOOL)planning;
- (void)endNavigationWithCompletion:(id)completion;
- (void)enterFlyoverForMapItem:(id)item;
- (void)enterLookAroundWithEntryPoint:(id)point lookAroundView:(id)view showsFullScreen:(BOOL)screen originFrame:(CGRect)frame;
- (void)enterPedestrianARWithRoute:(id)route guidanceObserver:(id)observer;
- (void)enterRouteCreationWithMapItem:(id)item completion:(id)completion;
- (void)enterRouteCreationWithRoute:(id)route originMapItem:(id)item destinationMapItem:(id)mapItem userInfo:(id)info completion:(id)completion;
- (void)enterRoutePlanningWithDirectionItem:(id)item allowToPromptEditing:(BOOL)editing withUserInfo:(id)info;
- (void)exitFlyover;
- (void)exitLookAround;
- (void)exitPedestrianAR;
- (void)getCurrentSceneTitleWithCompletion:(id)completion;
- (void)mapsActivityViewControllerPresentRoutingApps:(id)apps;
- (void)mapsActivityViewControllerPrint:(id)print;
- (void)mapsSession:(id)session didChangeState:(unint64_t)state;
- (void)navigationSession:(id)session didChangeCurrentTransportType:(int64_t)type;
- (void)openAllCuratedCollections;
- (void)openCollection:(id)collection;
- (void)openCuratedCollectionWithIdentifier:(id)identifier;
- (void)openCuratedCollectionsList:(id)list usingTitle:(id)title;
- (void)openCuratedGuideWithCollection:(id)collection;
- (void)openGuidesHomeWithGuideLocation:(id)location;
- (void)openNearbyTransit;
- (void)openParentMapItem:(id)item;
- (void)openPublisherWithIdentifier:(id)identifier;
- (void)openRelatedMapItems:(id)items withTitle:(id)title originalMapItem:(id)item analyticsDelegate:(id)delegate;
- (void)openSearch:(id)search andResults:(id)results;
- (void)openSearch:(id)search userInfo:(id)info;
- (void)openSharedTrip:(id)trip;
- (void)openUserProfile;
- (void)openVehicleList;
- (void)openVisitedPlaces;
- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession;
- (void)platformController:(id)controller willChangeCurrentSessionFromSession:(id)session toSession:(id)toSession;
- (void)pptSelectACSuggestionMatchingAddress:(id)address;
- (void)pptSelectFirstCuratedGuide;
- (void)pptSelectFirstGuidePublisher;
- (void)pptSelectSeeAllCuratedCollections;
- (void)pptTestAutocompleteSearchForFieldItem:(id)item;
- (void)pptTestCreateCustomSearchResultForDroppedPinAtPoint:(CLLocationCoordinate2D)point animated:(BOOL)animated;
- (void)pptTestDismissPlaceCardAnimated:(BOOL)animated;
- (void)pptTestDismissTrayAnimated:(BOOL)animated assertTrayType:(int64_t)type;
- (void)pptTestDoDirectionItem:(id)item;
- (void)pptTestEndNavigation;
- (void)pptTestEnterAR;
- (void)pptTestEnterLookAroundWithEntryPoint:(id)point lookAroundView:(id)view showsFullScreen:(BOOL)screen;
- (void)pptTestEnterSearchMode;
- (void)pptTestExitAR;
- (void)pptTestMaximizePlaceCardAnimated:(BOOL)animated;
- (void)pptTestMediumizePlaceCardAnimated:(BOOL)animated;
- (void)pptTestMinimizePlaceCardAnimated:(BOOL)animated;
- (void)pptTestMoveToNextStep;
- (void)pptTestOpenCollections;
- (void)pptTestOpenFirstCollection;
- (void)pptTestOpenRecents;
- (void)pptTestOpenSettings;
- (void)pptTestPauseRealtimeTransitUpdates;
- (void)pptTestPresentDirectionsDetails;
- (void)pptTestPresentPlaceCardForSearchResult:(id)result animated:(BOOL)animated;
- (void)pptTestPresentPlacecardWithMapItem:(id)item;
- (void)pptTestPresentVenueForMapItem:(id)item searchCategory:(id)category;
- (void)pptTestRefreshSearch;
- (void)pptTestResetForLaunchURL;
- (void)pptTestResumeRealtimeTransitUpdates;
- (void)pptTestSearchCancel;
- (void)pptTestSearchEndEditing;
- (void)pptTestSearchForFieldItem:(id)item;
- (void)pptTestSearchNearbyCategoryWithIndex:(unint64_t)index;
- (void)pptTestSearchRetainQueryForSelectedSearchCompletion:(id)completion;
- (void)pptTestSelectVenueSearchResult:(id)result;
- (void)pptTestStartNavigation;
- (void)pptTestStartTracePlaybackFromPath:(id)path;
- (void)pptTestTransitionBetweenFullAndLightGuidance;
- (void)pptTestUpdateTrayLayout:(unint64_t)layout animated:(BOOL)animated;
- (void)presentAlertForMissingSharedTrip:(id)trip;
- (void)presentChinaAlertForSharedTrip:(id)trip;
- (void)presentPOIEnrichmentWithCoordinator:(id)coordinator;
- (void)presentUnsupportedTransportTypeOrProtocolAlertForSharedTrip:(id)trip;
- (void)setNeedsUserActivityUpdate;
- (void)setObservedNavigationSession:(id)session;
- (void)setPPTTestDirectionsPlan:(id)plan;
- (void)setPPTTestViewMode:(int64_t)mode animated:(BOOL)animated;
- (void)shareItem:(id)item presentationOptions:(id)options completion:(id)completion;
- (void)showFullscreenDirectionsList;
- (void)showOfflineMapRegionSelectorForConfiguration:(id)configuration shouldShowDataManagementAfterDownload:(BOOL)download shouldShowDataManagementAfterDownloadIfRegionDiffers:(BOOL)differs;
- (void)showOfflineMapRegionSelectorForRegion:(id)region name:(id)name pushDataManagementFirst:(BOOL)first;
- (void)startNavigationWithRouteCollection:(id)collection navigationDetailsOptions:(NavigationDetailsOptions *)options;
- (void)startRideBookingSessionWithRideBookingRideOption:(id)option;
- (void)startSearchModeWithCompletion:(id)completion;
- (void)startTableBookingFlowFromMapItem:(id)item;
- (void)toggleRecents;
- (void)toggleRoutePlanning;
- (void)viewControllerShowExpiredOfflineMaps:(id)maps;
- (void)viewControllerShowOfflineMaps:(id)maps;
@end

@implementation AppCoordinator

- (BOOL)isNavigationTurnByTurnOrStepping
{
  observedNavigationSession = [(AppCoordinator *)self observedNavigationSession];
  if (observedNavigationSession)
  {
    currentSession = observedNavigationSession;
  }

  else
  {
    platformController = [(AppCoordinator *)self platformController];
    v7 = +[UIApplication sharedMapsDelegate];
    appSessionController = [v7 appSessionController];
    currentlyNavigatingPlatformController = [appSessionController currentlyNavigatingPlatformController];

    if (platformController != currentlyNavigatingPlatformController)
    {
      currentSession = 0;
      LOBYTE(v5) = 0;
      goto LABEL_14;
    }

    platformController2 = [(AppCoordinator *)self platformController];
    currentSession = [platformController2 currentSession];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = currentSession;
    }

    else
    {
      v11 = 0;
    }

    v5 = v11;

    if (!v5)
    {
      currentSession = 0;
      goto LABEL_14;
    }
  }

  LOBYTE(v5) = [currentSession navigationType] == 3 || objc_msgSend(currentSession, "navigationType") == 2 || objc_msgSend(currentSession, "navigationType") == 4;
LABEL_14:

  return v5;
}

- (BaseModeController)baseModeController
{
  baseModeController = self->_baseModeController;
  if (!baseModeController)
  {
    v4 = [BaseModeController alloc];
    platformController = [(AppCoordinator *)self platformController];
    v6 = [(BaseModeController *)v4 initWithPlatformController:platformController];
    v7 = self->_baseModeController;
    self->_baseModeController = v6;

    baseModeController = self->_baseModeController;
  }

  return baseModeController;
}

- (ActionCoordination)baseActionCoordinator
{
  baseModeController = [(AppCoordinator *)self baseModeController];
  actionCoordinator = [baseModeController actionCoordinator];

  return actionCoordinator;
}

- (IOSBasedChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (MapsSceneDelegate)mapsSceneDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_mapsSceneDelegate);

  return WeakRetained;
}

- (void)pptTestEnterLookAroundWithEntryPoint:(id)point lookAroundView:(id)view showsFullScreen:(BOOL)screen
{
  screenCopy = screen;
  pointCopy = point;
  viewCopy = view;
  iosBasedChromeViewController = [(AppCoordinator *)self iosBasedChromeViewController];
  topContext = [iosBasedChromeViewController topContext];

  if ([topContext conformsToProtocol:&OBJC_PROTOCOL___PPTTestLookAroundProtocol])
  {
    v11 = topContext;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12 || ((-[AppCoordinator baseActionCoordinator](self, "baseActionCoordinator"), topContext = objc_claimAutoreleasedReturnValue(), ![topContext conformsToProtocol:&OBJC_PROTOCOL___PPTTestLookAroundProtocol]) ? (v13 = 0) : (v13 = topContext), v14 = v13, topContext, v14))
  {
    [topContext pptTestEnterLookAroundWithEntryPoint:pointCopy lookAroundView:viewCopy showsFullScreen:screenCopy];
  }
}

- (void)pptTestSelectVenueSearchResult:(id)result
{
  resultCopy = result;
  baseActionCoordinator = [(AppCoordinator *)self baseActionCoordinator];
  if ([baseActionCoordinator conformsToProtocol:&OBJC_PROTOCOL___PPTTestVenuesProtocol])
  {
    [baseActionCoordinator pptTestSelectVenueSearchResult:resultCopy];
  }
}

- (void)pptTestPresentVenueForMapItem:(id)item searchCategory:(id)category
{
  itemCopy = item;
  categoryCopy = category;
  baseActionCoordinator = [(AppCoordinator *)self baseActionCoordinator];
  if ([baseActionCoordinator conformsToProtocol:&OBJC_PROTOCOL___PPTTestVenuesProtocol])
  {
    [baseActionCoordinator pptTestPresentVenueForMapItem:itemCopy searchCategory:categoryCopy];
  }
}

- (void)pptTestPresentPlacecardWithMapItem:(id)item
{
  itemCopy = item;
  baseActionCoordinator = [(AppCoordinator *)self baseActionCoordinator];
  if ([baseActionCoordinator conformsToProtocol:&OBJC_PROTOCOL___PPTTestVenuesProtocol])
  {
    [baseActionCoordinator pptTestPresentPlacecardWithMapItem:itemCopy];
  }
}

- (id)_pptChromeTrayCoordinatorForCurrentMode
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  _isCurrentContainerChromeOwned = [WeakRetained _isCurrentContainerChromeOwned];

  v5 = objc_loadWeakRetained(&self->_chromeViewController);
  v6 = v5;
  if ((_isCurrentContainerChromeOwned & 1) == 0)
  {
    topContext = [v5 topContext];
    baseModeController = self->_baseModeController;

    if (topContext == baseModeController)
    {
      baseActionCoordinator = [(AppCoordinator *)self baseActionCoordinator];
    }

    else
    {
      v9 = objc_loadWeakRetained(&self->_chromeViewController);
      topContext2 = [v9 topContext];
      navModeController = self->_navModeController;

      if (topContext2 == navModeController)
      {
        baseActionCoordinator = [(AppCoordinator *)self navActionCoordinator];
      }

      else
      {
        v12 = objc_loadWeakRetained(&self->_chromeViewController);
        topContext3 = [v12 topContext];
        stepModeController = self->_stepModeController;

        if (topContext3 == stepModeController)
        {
          baseActionCoordinator = [(AppCoordinator *)self stepActionCoordinator];
        }

        else
        {
          v15 = objc_loadWeakRetained(&self->_chromeViewController);
          topContext4 = [v15 topContext];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
            v19 = 0;
            v6 = 0;
            goto LABEL_14;
          }

          baseActionCoordinator = [(AppCoordinator *)self lookAroundActionCoordinator];
        }
      }
    }

    v6 = baseActionCoordinator;
  }

  if (sub_100010C34(v6, &OBJC_PROTOCOL___PPTTestChromeTrayProtocol))
  {
    v19 = v6;
    v6 = v19;
  }

  else
  {
    v19 = 0;
  }

LABEL_14:

  return v19;
}

- (UIScrollView)pptTestScrollView
{
  _pptChromeTrayCoordinatorForCurrentMode = [(AppCoordinator *)self _pptChromeTrayCoordinatorForCurrentMode];
  pptTestScrollView = [_pptChromeTrayCoordinatorForCurrentMode pptTestScrollView];

  return pptTestScrollView;
}

- (void)pptTestDismissTrayAnimated:(BOOL)animated assertTrayType:(int64_t)type
{
  animatedCopy = animated;
  _pptChromeTrayCoordinatorForCurrentMode = [(AppCoordinator *)self _pptChromeTrayCoordinatorForCurrentMode];
  [_pptChromeTrayCoordinatorForCurrentMode pptTestDismissTrayAnimated:animatedCopy assertTrayType:type];
}

- (BOOL)pptTestIsTrayType:(int64_t)type
{
  _pptChromeTrayCoordinatorForCurrentMode = [(AppCoordinator *)self _pptChromeTrayCoordinatorForCurrentMode];
  LOBYTE(type) = [_pptChromeTrayCoordinatorForCurrentMode pptTestIsTrayType:type];

  return type;
}

- (void)pptTestUpdateTrayLayout:(unint64_t)layout animated:(BOOL)animated
{
  animatedCopy = animated;
  _pptChromeTrayCoordinatorForCurrentMode = [(AppCoordinator *)self _pptChromeTrayCoordinatorForCurrentMode];
  [_pptChromeTrayCoordinatorForCurrentMode pptTestUpdateTrayLayout:layout animated:animatedCopy];
}

- (BOOL)pptTestCanUpdateTrayLayout
{
  _pptChromeTrayCoordinatorForCurrentMode = [(AppCoordinator *)self _pptChromeTrayCoordinatorForCurrentMode];
  pptTestCanUpdateTrayLayout = [_pptChromeTrayCoordinatorForCurrentMode pptTestCanUpdateTrayLayout];

  return pptTestCanUpdateTrayLayout;
}

- (void)pptTestOpenFirstCollection
{
  baseActionCoordinator = [(AppCoordinator *)self baseActionCoordinator];
  if ([baseActionCoordinator conformsToProtocol:&OBJC_PROTOCOL___PPTTestCollectionsProtocol])
  {
    [baseActionCoordinator pptTestOpenFirstCollection];
  }
}

- (void)pptTestOpenCollections
{
  baseActionCoordinator = [(AppCoordinator *)self baseActionCoordinator];
  if ([baseActionCoordinator conformsToProtocol:&OBJC_PROTOCOL___PPTTestCollectionsProtocol])
  {
    [baseActionCoordinator pptTestOpenCollections];
  }
}

- (void)pptTestExitAR
{
  baseActionCoordinator = [(AppCoordinator *)self baseActionCoordinator];
  if ([baseActionCoordinator conformsToProtocol:&OBJC_PROTOCOL___PPTTestARProtocol])
  {
    [baseActionCoordinator pptTestExitAR];
  }
}

- (void)pptTestEnterAR
{
  baseActionCoordinator = [(AppCoordinator *)self baseActionCoordinator];
  if ([baseActionCoordinator conformsToProtocol:&OBJC_PROTOCOL___PPTTestARProtocol])
  {
    [baseActionCoordinator pptTestEnterAR];
  }
}

- (void)pptTestOpenRecents
{
  baseActionCoordinator = [(AppCoordinator *)self baseActionCoordinator];
  if ([baseActionCoordinator conformsToProtocol:&OBJC_PROTOCOL___PPTTestRecentsProtocol])
  {
    [baseActionCoordinator pptTestOpenRecents];
  }
}

- (UIScrollView)pptTestScrollViewForProactive
{
  baseActionCoordinator = [(AppCoordinator *)self baseActionCoordinator];
  if ([baseActionCoordinator conformsToProtocol:&OBJC_PROTOCOL___PPTTestProactiveProtocol])
  {
    pptTestScrollViewForProactive = [baseActionCoordinator pptTestScrollViewForProactive];
  }

  else
  {
    pptTestScrollViewForProactive = 0;
  }

  return pptTestScrollViewForProactive;
}

- (void)pptTestOpenSettings
{
  baseActionCoordinator = [(AppCoordinator *)self baseActionCoordinator];
  if ([baseActionCoordinator conformsToProtocol:&OBJC_PROTOCOL___PPTTestSettingsProtocol])
  {
    [baseActionCoordinator pptTestOpenSettings];
  }
}

- (void)pptTestStartTracePlaybackFromPath:(id)path
{
  pathCopy = path;
  chromeViewController = [(AppCoordinator *)self chromeViewController];
  [chromeViewController debugController:0 choseTraceAtPath:pathCopy startNav:1];
}

- (void)pptTestResumeRealtimeTransitUpdates
{
  v2 = +[MNNavigationService sharedService];
  [v2 resumeRealtimeUpdates];
}

- (void)pptTestPauseRealtimeTransitUpdates
{
  v2 = +[MNNavigationService sharedService];
  [v2 pauseRealtimeUpdates];
}

- (BOOL)pptTestMoveToBoardStep
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  transitNavigationContext = [(AppCoordinator *)self transitNavigationContext];
  v5 = [WeakRetained isTopContext:transitNavigationContext];

  if (v5)
  {
    transitNavigationContext2 = [(AppCoordinator *)self transitNavigationContext];
  }

  else
  {
    transitNavigationContext2 = [(AppCoordinator *)self stepActionCoordinator];
    if (![transitNavigationContext2 conformsToProtocol:&OBJC_PROTOCOL___PPTTestGuidanceStepProtocol])
    {
      pptTestMoveToBoardStep = 0;
      goto LABEL_6;
    }
  }

  pptTestMoveToBoardStep = [transitNavigationContext2 pptTestMoveToBoardStep];
LABEL_6:

  return pptTestMoveToBoardStep;
}

- (void)pptTestMoveToNextStep
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  transitNavigationContext = [(AppCoordinator *)self transitNavigationContext];
  v5 = [WeakRetained isTopContext:transitNavigationContext];

  if (v5)
  {
    transitNavigationContext2 = [(AppCoordinator *)self transitNavigationContext];
  }

  else
  {
    stepActionCoordinator = [(AppCoordinator *)self stepActionCoordinator];
    v7 = [stepActionCoordinator conformsToProtocol:&OBJC_PROTOCOL___PPTTestGuidanceStepProtocol];
    transitNavigationContext2 = stepActionCoordinator;
    if (!v7)
    {
      goto LABEL_5;
    }
  }

  v9 = transitNavigationContext2;
  [transitNavigationContext2 pptTestMoveToNextStep];
  transitNavigationContext2 = v9;
LABEL_5:
}

- (BOOL)pptTestHasNextStep
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  transitNavigationContext = [(AppCoordinator *)self transitNavigationContext];
  v5 = [WeakRetained isTopContext:transitNavigationContext];

  if (v5)
  {
    transitNavigationContext2 = [(AppCoordinator *)self transitNavigationContext];
  }

  else
  {
    transitNavigationContext2 = [(AppCoordinator *)self stepActionCoordinator];
    if (![transitNavigationContext2 conformsToProtocol:&OBJC_PROTOCOL___PPTTestGuidanceStepProtocol])
    {
      pptTestHasNextStep = 0;
      goto LABEL_6;
    }
  }

  pptTestHasNextStep = [transitNavigationContext2 pptTestHasNextStep];
LABEL_6:

  return pptTestHasNextStep;
}

- (int64_t)pptTestCurrentStepIndex
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  transitNavigationContext = [(AppCoordinator *)self transitNavigationContext];
  v5 = [WeakRetained isTopContext:transitNavigationContext];

  if (v5)
  {
    transitNavigationContext2 = [(AppCoordinator *)self transitNavigationContext];
  }

  else
  {
    transitNavigationContext2 = [(AppCoordinator *)self stepActionCoordinator];
    if (![transitNavigationContext2 conformsToProtocol:&OBJC_PROTOCOL___PPTTestGuidanceStepProtocol])
    {
      pptTestCurrentStepIndex = 0;
      goto LABEL_6;
    }
  }

  pptTestCurrentStepIndex = [transitNavigationContext2 pptTestCurrentStepIndex];
LABEL_6:

  return pptTestCurrentStepIndex;
}

- (BOOL)pptTestSupportStepping
{
  chromeViewController = [(AppCoordinator *)self chromeViewController];
  if ([chromeViewController isTopContext:self->_stepModeController])
  {
    v4 = 1;
  }

  else
  {
    chromeViewController2 = [(AppCoordinator *)self chromeViewController];
    transitNavigationContext = [(AppCoordinator *)self transitNavigationContext];
    v4 = [chromeViewController2 isTopContext:transitNavigationContext];
  }

  return v4;
}

- (void)pptTestTransitionBetweenFullAndLightGuidance
{
  navActionCoordinator = [(AppCoordinator *)self navActionCoordinator];
  if ([navActionCoordinator conformsToProtocol:&OBJC_PROTOCOL___PPTTestNavigationProtocol])
  {
    [navActionCoordinator pptTestTransitionBetweenFullAndLightGuidance];
  }
}

- (void)pptTestEndNavigation
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  transitNavigationContext = [(AppCoordinator *)self transitNavigationContext];
  v5 = [WeakRetained isTopContext:transitNavigationContext];

  if (v5)
  {
    v6 = +[MNNavigationService sharedService];
    [v6 stopNavigationWithReason:10];
  }

  else
  {
    if ([(AppCoordinator *)self pptTestSupportStepping])
    {
      [(AppCoordinator *)self stepActionCoordinator];
    }

    else
    {
      [(AppCoordinator *)self navActionCoordinator];
    }
    v6 = ;
    if ([v6 conformsToProtocol:&OBJC_PROTOCOL___PPTTestNavigationProtocol])
    {
      [v6 pptTestEndNavigation];
    }
  }
}

- (void)pptTestStartNavigation
{
  baseActionCoordinator = [(AppCoordinator *)self baseActionCoordinator];
  if ([baseActionCoordinator conformsToProtocol:&OBJC_PROTOCOL___PPTTestNavigationProtocol])
  {
    [baseActionCoordinator pptTestStartNavigation];
  }
}

- (void)pptTestDoDirectionItem:(id)item
{
  itemCopy = item;
  baseActionCoordinator = [(AppCoordinator *)self baseActionCoordinator];
  if ([baseActionCoordinator conformsToProtocol:&OBJC_PROTOCOL___PPTTestGuidanceProtocol])
  {
    [baseActionCoordinator pptTestDoDirectionItem:itemCopy];
  }
}

- (UIScrollView)pptTestScrollViewForDirectionsDetails
{
  baseActionCoordinator = [(AppCoordinator *)self baseActionCoordinator];
  if ([baseActionCoordinator conformsToProtocol:&OBJC_PROTOCOL___PPTTestDirectionsDetailsProtocol])
  {
    pptTestScrollViewForDirectionsDetails = [baseActionCoordinator pptTestScrollViewForDirectionsDetails];
  }

  else
  {
    pptTestScrollViewForDirectionsDetails = 0;
  }

  return pptTestScrollViewForDirectionsDetails;
}

- (UIViewController)pptTestContaineeForDirectionsDetails
{
  baseActionCoordinator = [(AppCoordinator *)self baseActionCoordinator];
  if ([baseActionCoordinator conformsToProtocol:&OBJC_PROTOCOL___PPTTestDirectionsDetailsProtocol])
  {
    pptTestContaineeForDirectionsDetails = [baseActionCoordinator pptTestContaineeForDirectionsDetails];
  }

  else
  {
    pptTestContaineeForDirectionsDetails = 0;
  }

  return pptTestContaineeForDirectionsDetails;
}

- (void)pptTestPresentDirectionsDetails
{
  baseActionCoordinator = [(AppCoordinator *)self baseActionCoordinator];
  if ([baseActionCoordinator conformsToProtocol:&OBJC_PROTOCOL___PPTTestDirectionsDetailsProtocol])
  {
    [baseActionCoordinator pptTestPresentDirectionsDetails];
  }
}

- (void)setPPTTestDirectionsPlan:(id)plan
{
  planCopy = plan;
  appStateManager = [(AppCoordinator *)self appStateManager];
  if ([appStateManager conformsToProtocol:&OBJC_PROTOCOL___PPTTestRouteProtocol])
  {
    [appStateManager setPPTTestDirectionsPlan:planCopy];
  }
}

- (void)pptTestCreateCustomSearchResultForDroppedPinAtPoint:(CLLocationCoordinate2D)point animated:(BOOL)animated
{
  animatedCopy = animated;
  longitude = point.longitude;
  latitude = point.latitude;
  baseActionCoordinator = [(AppCoordinator *)self baseActionCoordinator];
  if ([baseActionCoordinator conformsToProtocol:&OBJC_PROTOCOL___PPTTestETAProtocol])
  {
    [baseActionCoordinator pptTestCreateCustomSearchResultForDroppedPinAtPoint:animatedCopy animated:{latitude, longitude}];
  }
}

- (void)pptSelectACSuggestionMatchingAddress:(id)address
{
  addressCopy = address;
  baseActionCoordinator = [(AppCoordinator *)self baseActionCoordinator];
  if ([baseActionCoordinator conformsToProtocol:&OBJC_PROTOCOL___PPTTestSearchProtocol])
  {
    [baseActionCoordinator pptSelectACSuggestionMatchingAddress:addressCopy];
  }
}

- (void)pptSelectFirstGuidePublisher
{
  baseActionCoordinator = [(AppCoordinator *)self baseActionCoordinator];
  if ([baseActionCoordinator conformsToProtocol:&OBJC_PROTOCOL___PPTTestSearchProtocol])
  {
    [baseActionCoordinator pptSelectFirstGuidePublisher];
  }
}

- (void)pptSelectSeeAllCuratedCollections
{
  baseActionCoordinator = [(AppCoordinator *)self baseActionCoordinator];
  if ([baseActionCoordinator conformsToProtocol:&OBJC_PROTOCOL___PPTTestSearchProtocol])
  {
    [baseActionCoordinator pptSelectSeeAllCuratedCollections];
  }
}

- (void)pptSelectFirstCuratedGuide
{
  baseActionCoordinator = [(AppCoordinator *)self baseActionCoordinator];
  if ([baseActionCoordinator conformsToProtocol:&OBJC_PROTOCOL___PPTTestSearchProtocol])
  {
    [baseActionCoordinator pptSelectFirstCuratedGuide];
  }
}

- (void)pptTestSearchCancel
{
  baseActionCoordinator = [(AppCoordinator *)self baseActionCoordinator];
  if ([baseActionCoordinator conformsToProtocol:&OBJC_PROTOCOL___PPTTestSearchProtocol])
  {
    [baseActionCoordinator pptTestSearchCancel];
  }
}

- (void)pptTestEnterSearchMode
{
  baseActionCoordinator = [(AppCoordinator *)self baseActionCoordinator];
  if ([baseActionCoordinator conformsToProtocol:&OBJC_PROTOCOL___PPTTestSearchProtocol])
  {
    [baseActionCoordinator pptTestEnterSearchMode];
  }
}

- (void)pptTestRefreshSearch
{
  baseActionCoordinator = [(AppCoordinator *)self baseActionCoordinator];
  if ([baseActionCoordinator conformsToProtocol:&OBJC_PROTOCOL___PPTTestSearchProtocol])
  {
    [baseActionCoordinator pptTestRefreshSearch];
  }
}

- (void)pptTestSearchForFieldItem:(id)item
{
  itemCopy = item;
  baseActionCoordinator = [(AppCoordinator *)self baseActionCoordinator];
  if ([baseActionCoordinator conformsToProtocol:&OBJC_PROTOCOL___PPTTestSearchProtocol])
  {
    [baseActionCoordinator pptTestSearchForFieldItem:itemCopy];
  }
}

- (void)pptTestSearchEndEditing
{
  baseActionCoordinator = [(AppCoordinator *)self baseActionCoordinator];
  if ([baseActionCoordinator conformsToProtocol:&OBJC_PROTOCOL___PPTTestSearchProtocol])
  {
    [baseActionCoordinator pptTestSearchEndEditing];
  }
}

- (void)pptTestAutocompleteSearchForFieldItem:(id)item
{
  itemCopy = item;
  baseActionCoordinator = [(AppCoordinator *)self baseActionCoordinator];
  if ([baseActionCoordinator conformsToProtocol:&OBJC_PROTOCOL___PPTTestSearchProtocol])
  {
    [baseActionCoordinator pptTestAutocompleteSearchForFieldItem:itemCopy];
  }
}

- (void)pptTestSearchNearbyCategoryWithIndex:(unint64_t)index
{
  baseActionCoordinator = [(AppCoordinator *)self baseActionCoordinator];
  if ([baseActionCoordinator conformsToProtocol:&OBJC_PROTOCOL___PPTTestSearchProtocol])
  {
    [baseActionCoordinator pptTestSearchNearbyCategoryWithIndex:index];
  }
}

- (void)pptTestSearchRetainQueryForSelectedSearchCompletion:(id)completion
{
  completionCopy = completion;
  baseActionCoordinator = [(AppCoordinator *)self baseActionCoordinator];
  if ([baseActionCoordinator conformsToProtocol:&OBJC_PROTOCOL___PPTTestSearchProtocol])
  {
    [baseActionCoordinator pptTestSearchRetainQueryForSelectedSearchCompletion:completionCopy];
  }
}

- (void)pptTestDismissPlaceCardAnimated:(BOOL)animated
{
  animatedCopy = animated;
  baseActionCoordinator = [(AppCoordinator *)self baseActionCoordinator];
  if ([baseActionCoordinator conformsToProtocol:&OBJC_PROTOCOL___PPTTestPlaceCardProtocol])
  {
    [baseActionCoordinator pptTestDismissPlaceCardAnimated:animatedCopy];
  }
}

- (void)pptTestMediumizePlaceCardAnimated:(BOOL)animated
{
  animatedCopy = animated;
  baseActionCoordinator = [(AppCoordinator *)self baseActionCoordinator];
  if ([baseActionCoordinator conformsToProtocol:&OBJC_PROTOCOL___PPTTestPlaceCardProtocol])
  {
    [baseActionCoordinator pptTestMediumizePlaceCardAnimated:animatedCopy];
  }
}

- (void)pptTestMinimizePlaceCardAnimated:(BOOL)animated
{
  animatedCopy = animated;
  baseActionCoordinator = [(AppCoordinator *)self baseActionCoordinator];
  if ([baseActionCoordinator conformsToProtocol:&OBJC_PROTOCOL___PPTTestPlaceCardProtocol])
  {
    [baseActionCoordinator pptTestMinimizePlaceCardAnimated:animatedCopy];
  }
}

- (void)pptTestMaximizePlaceCardAnimated:(BOOL)animated
{
  animatedCopy = animated;
  baseActionCoordinator = [(AppCoordinator *)self baseActionCoordinator];
  if ([baseActionCoordinator conformsToProtocol:&OBJC_PROTOCOL___PPTTestPlaceCardProtocol])
  {
    [baseActionCoordinator pptTestMaximizePlaceCardAnimated:animatedCopy];
  }
}

- (BOOL)pptTestCanResizePlacecard
{
  baseActionCoordinator = [(AppCoordinator *)self baseActionCoordinator];
  if ([baseActionCoordinator conformsToProtocol:&OBJC_PROTOCOL___PPTTestPlaceCardProtocol])
  {
    pptTestCanResizePlacecard = [baseActionCoordinator pptTestCanResizePlacecard];
  }

  else
  {
    pptTestCanResizePlacecard = 0;
  }

  return pptTestCanResizePlacecard;
}

- (void)pptTestPresentPlaceCardForSearchResult:(id)result animated:(BOOL)animated
{
  animatedCopy = animated;
  resultCopy = result;
  baseActionCoordinator = [(AppCoordinator *)self baseActionCoordinator];
  if ([baseActionCoordinator conformsToProtocol:&OBJC_PROTOCOL___PPTTestPlaceCardProtocol])
  {
    [baseActionCoordinator pptTestPresentPlaceCardForSearchResult:resultCopy animated:animatedCopy];
  }
}

- (void)pptTestResetForLaunchURL
{
  chromeViewController = [(AppCoordinator *)self chromeViewController];
  [chromeViewController resetForLaunchURLWithOptions:0];
}

- (void)setPPTTestViewMode:(int64_t)mode animated:(BOOL)animated
{
  animatedCopy = animated;
  chromeViewController = [(AppCoordinator *)self chromeViewController];
  [chromeViewController updateViewMode:mode animated:animatedCopy];
}

- (MKMapView)mapViewForPPTTest
{
  chromeViewController = [(AppCoordinator *)self chromeViewController];
  mapView = [chromeViewController mapView];

  return mapView;
}

- (void)displayClusteredResultsWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  topContext = [WeakRetained topContext];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = topContext;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    [(ClusteredResultsContext *)v7 updateWithConfiguration:configurationCopy];
  }

  else
  {
    topContext = [[_TtC4Maps23ClusteredResultsContext alloc] initWithConfiguration:configurationCopy];
    v8 = objc_loadWeakRetained(&self->_chromeViewController);
    [v8 pushContext:topContext animated:1 completion:0];
  }
}

- (void)displayPlaceCardWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  topContext = [WeakRetained topContext];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = topContext;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    [(PlaceCardContext *)v7 updateConfiguration:configurationCopy];
  }

  else
  {
    topContext = [[_TtC4Maps16PlaceCardContext alloc] initWithConfiguration:configurationCopy];
    v8 = objc_loadWeakRetained(&self->_chromeViewController);
    [v8 pushContext:topContext animated:1 completion:0];
  }
}

- (void)dismissLastVenuePlaceCard
{
  baseActionCoordinator = [(AppCoordinator *)self baseActionCoordinator];
  [baseActionCoordinator dismissLastVenuePlaceCard];
}

- (void)displayPlaceCardForMapItem:(id)item addToHistory:(BOOL)history presentationActionSource:(unint64_t)source
{
  historyCopy = history;
  itemCopy = item;
  baseActionCoordinator = [(AppCoordinator *)self baseActionCoordinator];
  [baseActionCoordinator viewController:0 selectMapItem:itemCopy address:0 addToHistory:historyCopy source:source];
}

- (void)exitPedestrianAR
{
  chromeViewController = [(AppCoordinator *)self chromeViewController];
  topContext = [chromeViewController topContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    chromeViewController2 = [(AppCoordinator *)self chromeViewController];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10062C400;
    v8[3] = &unk_101661B18;
    v8[4] = self;
    [chromeViewController2 popContextAnimated:1 completion:v8];

    chromeViewController3 = [(AppCoordinator *)self chromeViewController];
    [chromeViewController3 commitCoordinatedContextChange];
  }
}

- (void)enterPedestrianARWithRoute:(id)route guidanceObserver:(id)observer
{
  routeCopy = route;
  observerCopy = observer;
  chromeViewController = [(AppCoordinator *)self chromeViewController];
  topContext = [chromeViewController topContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v10 = [PedestrianARContext alloc];
    platformController = [(AppCoordinator *)self platformController];
    v12 = +[MNNavigationService sharedService];
    v13 = [(PedestrianARContext *)v10 initWithRoute:routeCopy platformController:platformController guidanceObserver:observerCopy navigationService:v12];

    chromeViewController2 = [(AppCoordinator *)self chromeViewController];
    [chromeViewController2 pushContext:v13 animated:1 completion:0];

    chromeViewController3 = [(AppCoordinator *)self chromeViewController];
    [chromeViewController3 commitCoordinatedContextChange];
  }
}

- (void)exitLookAround
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  topContext = [WeakRetained topContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = objc_loadWeakRetained(&self->_chromeViewController);
    topContext2 = [v6 topContext];

    v8 = objc_loadWeakRetained(&self->_chromeViewController);
    mapView = [v8 mapView];

    lookAroundView = [topContext2 lookAroundView];
    [lookAroundView setNavigatingEnabled:0];
    [lookAroundView setPanningEnabled:0];
    [lookAroundView setZoomingEnabled:0];
    [lookAroundView setShowsRoadLabels:0];
    [lookAroundView setShowsPointLabels:0];
    if (![lookAroundView hasEnteredLookAround])
    {
      v16 = 0;
LABEL_15:
      v26 = objc_loadWeakRetained(&self->_chromeViewController);
      [v26 popContextAnimated:1 completion:v16];

      actionCoordinator = [topContext2 actionCoordinator];
      [actionCoordinator setAppCoordinator:0];

      return;
    }

    mapItem = [lookAroundView mapItem];
    if (!mapItem)
    {
      [mapView centerCoordinate];
      v18 = v17;
      v20 = v19;
      baseActionCoordinator = [(AppCoordinator *)self baseActionCoordinator];
      [baseActionCoordinator clearSearch];

      baseActionCoordinator2 = [(AppCoordinator *)self baseActionCoordinator];
      [baseActionCoordinator2 presentSearchAnimated:0];

      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_10062C978;
      v33[3] = &unk_1016575B0;
      v34 = mapView;
      v35 = v18;
      v36 = v20;
      v16 = objc_retainBlock(v33);
      _geoMapItem = v34;
LABEL_14:

      goto LABEL_15;
    }

    baseActionCoordinator3 = [(AppCoordinator *)self baseActionCoordinator];
    currentMapItem = [baseActionCoordinator3 currentMapItem];
    _geoMapItem = [currentMapItem _geoMapItem];

    _geoMapItem2 = [mapItem _geoMapItem];
    if (GEOMapItemIsEqualToMapItemForPurpose())
    {
      goto LABEL_5;
    }

    if (sub_10000FA08(mapView) == 5)
    {
      if (sub_10000FA08(mapView) != 5)
      {
LABEL_5:
        [mapItem _coordinate];
        [mapView setCenterCoordinate:1 animated:?];
        v16 = 0;
LABEL_13:

        goto LABEL_14;
      }

      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10062CA00;
      v28[3] = &unk_101661A90;
      v28[4] = self;
      v29 = mapItem;
      v16 = objc_retainBlock(v28);
      v23 = v29;
    }

    else
    {
      [mapView _deselectLabelMarkerAnimated:1];
      baseActionCoordinator4 = [(AppCoordinator *)self baseActionCoordinator];
      [baseActionCoordinator4 clearSearch];

      baseActionCoordinator5 = [(AppCoordinator *)self baseActionCoordinator];
      [baseActionCoordinator5 presentSearchAnimated:0];

      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_10062C98C;
      v30[3] = &unk_101661A90;
      v31 = mapItem;
      selfCopy = self;
      v16 = objc_retainBlock(v30);
      v23 = v31;
    }

    goto LABEL_13;
  }
}

- (void)enterLookAroundWithEntryPoint:(id)point lookAroundView:(id)view showsFullScreen:(BOOL)screen originFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  screenCopy = screen;
  pointCopy = point;
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  topContext = [WeakRetained topContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    height = [[LookAroundModeController alloc] initWithEntryPoint:pointCopy lookAroundView:viewCopy showsFullScreen:screenCopy originFrame:x, y, width, height];
    actionCoordinator = [(LookAroundModeController *)height actionCoordinator];
    [actionCoordinator setAppCoordinator:self];
    v19 = objc_loadWeakRetained(&self->_chromeViewController);
    [v19 pushContext:height animated:1 completion:0];
  }
}

- (id)lookAroundActionCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  topContext = [WeakRetained topContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = objc_loadWeakRetained(&self->_chromeViewController);
    topContext2 = [v6 topContext];

    actionCoordinator = [topContext2 actionCoordinator];
  }

  else
  {
    v9 = sub_100798614();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_loadWeakRetained(&self->_chromeViewController);
      topContext3 = [v10 topContext];
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v15 = 138412290;
      v16 = v13;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Error: lookAroundActionCoordinator requested while topContext=%@", &v15, 0xCu);
    }

    actionCoordinator = 0;
  }

  return actionCoordinator;
}

- (void)presentAlertForMissingSharedTrip:(id)trip
{
  tripCopy = trip;
  v5 = +[NSBundle mainBundle];
  v11 = [v5 localizedStringForKey:@"OK [Alert dismissal]" value:@"localized string not found" table:0];

  alertTitleForDisallowedDetails = [tripCopy alertTitleForDisallowedDetails];
  alertMessageForClosedTrip = [tripCopy alertMessageForClosedTrip];

  v8 = [UIAlertController alertControllerWithTitle:alertTitleForDisallowedDetails message:alertMessageForClosedTrip preferredStyle:1];

  v9 = [UIAlertAction actionWithTitle:v11 style:0 handler:0];
  [v8 addAction:v9];

  chromeViewController = [(AppCoordinator *)self chromeViewController];
  [chromeViewController _maps_topMostPresentViewController:v8 animated:1 completion:0];
}

- (void)presentUnsupportedTransportTypeOrProtocolAlertForSharedTrip:(id)trip
{
  tripCopy = trip;
  v5 = +[NSBundle mainBundle];
  v11 = [v5 localizedStringForKey:@"OK [Alert dismissal]" value:@"localized string not found" table:0];

  alertTitleForDisallowedDetails = [tripCopy alertTitleForDisallowedDetails];
  alertMessageForTransportOrProtocolError = [tripCopy alertMessageForTransportOrProtocolError];

  v8 = [UIAlertController alertControllerWithTitle:alertTitleForDisallowedDetails message:alertMessageForTransportOrProtocolError preferredStyle:1];

  v9 = [UIAlertAction actionWithTitle:v11 style:0 handler:0];
  [v8 addAction:v9];

  chromeViewController = [(AppCoordinator *)self chromeViewController];
  [chromeViewController _maps_topMostPresentViewController:v8 animated:1 completion:0];
}

- (void)presentChinaAlertForSharedTrip:(id)trip
{
  tripCopy = trip;
  v5 = +[NSBundle mainBundle];
  v11 = [v5 localizedStringForKey:@"OK [Alert dismissal]" value:@"localized string not found" table:0];

  alertTitleForDisallowedDetails = [tripCopy alertTitleForDisallowedDetails];
  alertMessageForChinaError = [tripCopy alertMessageForChinaError];

  v8 = [UIAlertController alertControllerWithTitle:alertTitleForDisallowedDetails message:alertMessageForChinaError preferredStyle:1];

  v9 = [UIAlertAction actionWithTitle:v11 style:0 handler:0];
  [v8 addAction:v9];

  chromeViewController = [(AppCoordinator *)self chromeViewController];
  [chromeViewController _maps_topMostPresentViewController:v8 animated:1 completion:0];
}

- (void)closeSharedTrips
{
  chromeViewController = [(AppCoordinator *)self chromeViewController];
  traitCollection = [chromeViewController traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    baseModeController = [(AppCoordinator *)self baseModeController];
    [baseModeController showSharedTrip:0];
  }

  else
  {
    chromeViewController2 = [(AppCoordinator *)self chromeViewController];
    contexts = [chromeViewController2 contexts];
    lastObject = [contexts lastObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      return;
    }

    baseModeController = [(AppCoordinator *)self chromeViewController];
    [baseModeController popContextAnimated:1 completion:0];
  }
}

- (void)openSharedTrip:(id)trip
{
  tripCopy = trip;
  v5 = sub_1000946AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
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
      v9 = [(AppCoordinator *)selfCopy performSelector:"accessibilityIdentifier"];
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
    groupIdentifier = [tripCopy groupIdentifier];
    *buf = 138544386;
    v19 = selfCopy;
    v20 = 2112;
    v21 = groupIdentifier;
    v22 = 2048;
    transportType = [tripCopy transportType];
    v24 = 2048;
    protocolVersion = [tripCopy protocolVersion];
    v26 = 1024;
    referenceFrame = [tripCopy referenceFrame];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Refreshing shared trip: %@, transportType: %lu, protocolVersion: %lu, referenceFrame: %d", buf, 0x30u);
  }

  objc_initWeak(buf, self);
  v13 = +[MSPSharedTripService sharedInstance];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10062D494;
  v15[3] = &unk_101653948;
  v14 = tripCopy;
  v16 = v14;
  objc_copyWeak(&v17, buf);
  [v13 refreshReceivedTripsWithCompletion:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
}

- (void)_openSharedTrip:(id)trip
{
  tripCopy = trip;
  if (MSPSharedTripReceivingAvailable())
  {
    v5 = sub_1000946AC();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
LABEL_12:

      if (tripCopy)
      {
        if ([(__CFString *)tripCopy disallowDetailsForChina])
        {
          v13 = sub_1000946AC();
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
LABEL_48:

            [(AppCoordinator *)self presentChinaAlertForSharedTrip:tripCopy];
            goto LABEL_59;
          }

          selfCopy = self;
          if (!selfCopy)
          {
            selfCopy = @"<nil>";
            goto LABEL_47;
          }

          v15 = objc_opt_class();
          v16 = NSStringFromClass(v15);
          if (objc_opt_respondsToSelector())
          {
            v17 = [(AppCoordinator *)selfCopy performSelector:"accessibilityIdentifier"];
            v18 = v17;
            if (v17 && ![v17 isEqualToString:v16])
            {
              selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v16, selfCopy, v18];

              goto LABEL_21;
            }
          }

          selfCopy = [NSString stringWithFormat:@"%@<%p>", v16, selfCopy];
LABEL_21:

LABEL_47:
          *buf = 138543618;
          v50 = selfCopy;
          v51 = 2112;
          v52 = tripCopy;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[%{public}@] Shared trip is not allowed for China: %@", buf, 0x16u);

          goto LABEL_48;
        }

        if ([(__CFString *)tripCopy disallowDetailsForTransportType])
        {
          v20 = sub_1000946AC();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            selfCopy2 = self;
            if (!selfCopy2)
            {
              selfCopy2 = @"<nil>";
              goto LABEL_51;
            }

            v22 = objc_opt_class();
            v23 = NSStringFromClass(v22);
            if (objc_opt_respondsToSelector())
            {
              v24 = [(AppCoordinator *)selfCopy2 performSelector:"accessibilityIdentifier"];
              v25 = v24;
              if (v24 && ![v24 isEqualToString:v23])
              {
                selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v23, selfCopy2, v25];

                goto LABEL_30;
              }
            }

            selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v23, selfCopy2];
LABEL_30:

LABEL_51:
            v37 = selfCopy2;
            transportType = [(__CFString *)tripCopy transportType];
            if (transportType >= 7)
            {
              v39 = [NSString stringWithFormat:@"(unknown: %i)", transportType];
            }

            else
            {
              v39 = off_1016245D0[transportType];
            }

            UInteger = GEOConfigGetUInteger();
            *buf = 138544130;
            v50 = v37;
            v51 = 2112;
            v52 = v39;
            v53 = 2048;
            transportType2 = UInteger;
            v55 = 2112;
            protocolVersion2 = tripCopy;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "[%{public}@] Shared trip is not allowed for transport type: %@. Allowed transport type bitmask: %lu. Trip: %@", buf, 0x2Au);
          }

LABEL_58:

          [(AppCoordinator *)self presentUnsupportedTransportTypeOrProtocolAlertForSharedTrip:tripCopy];
          goto LABEL_59;
        }

        if ([(__CFString *)tripCopy disallowDetailsForProtocolVersion])
        {
          v20 = sub_1000946AC();
          if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_58;
          }

          selfCopy3 = self;
          if (!selfCopy3)
          {
            selfCopy3 = @"<nil>";
            goto LABEL_57;
          }

          v28 = objc_opt_class();
          v29 = NSStringFromClass(v28);
          if (objc_opt_respondsToSelector())
          {
            v30 = [(AppCoordinator *)selfCopy3 performSelector:"accessibilityIdentifier"];
            v31 = v30;
            if (v30 && ![v30 isEqualToString:v29])
            {
              selfCopy3 = [NSString stringWithFormat:@"%@<%p, %@>", v29, selfCopy3, v31];

              goto LABEL_39;
            }
          }

          selfCopy3 = [NSString stringWithFormat:@"%@<%p>", v29, selfCopy3];
LABEL_39:

LABEL_57:
          protocolVersion = [(__CFString *)tripCopy protocolVersion];
          v42 = GEOConfigGetUInteger();
          *buf = 138544130;
          v50 = selfCopy3;
          v51 = 2048;
          v52 = protocolVersion;
          v53 = 2048;
          transportType2 = v42;
          v55 = 2112;
          protocolVersion2 = tripCopy;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "[%{public}@] Shared trip protocol (%lu) is greater than ours (%lu). Trip: %@", buf, 0x2Au);

          goto LABEL_58;
        }
      }

      chromeViewController = [(AppCoordinator *)self chromeViewController];
      if (sub_10000FA08(chromeViewController) == 5)
      {
        if (!tripCopy)
        {
LABEL_45:

          goto LABEL_59;
        }

        chromeViewController2 = [(AppCoordinator *)self chromeViewController];
        v46[0] = _NSConcreteStackBlock;
        v46[1] = 3221225472;
        v46[2] = sub_10062DD6C;
        v46[3] = &unk_101661A40;
        v46[4] = self;
        v47 = chromeViewController;
        v48 = tripCopy;
        [chromeViewController2 popToRootContextAnimated:1 completion:v46];

        v35 = v47;
      }

      else
      {
        chromeViewController3 = [(AppCoordinator *)self chromeViewController];
        v43[0] = _NSConcreteStackBlock;
        v43[1] = 3221225472;
        v43[2] = sub_10062DF3C;
        v43[3] = &unk_10162FBD8;
        v44 = tripCopy;
        selfCopy4 = self;
        [chromeViewController3 scheduleCoordinatedContextChange:v43 completionHandler:0];

        v35 = v44;
      }

      goto LABEL_45;
    }

    selfCopy5 = self;
    if (!selfCopy5)
    {
      selfCopy5 = @"<nil>";
      goto LABEL_11;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(AppCoordinator *)selfCopy5 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        selfCopy5 = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy5, v10];

        goto LABEL_9;
      }
    }

    selfCopy5 = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy5];
LABEL_9:

LABEL_11:
    groupIdentifier = [(__CFString *)tripCopy groupIdentifier];
    *buf = 138544386;
    v50 = selfCopy5;
    v51 = 2112;
    v52 = groupIdentifier;
    v53 = 2048;
    transportType2 = [(__CFString *)tripCopy transportType];
    v55 = 2048;
    protocolVersion2 = [(__CFString *)tripCopy protocolVersion];
    v57 = 1024;
    referenceFrame = [(__CFString *)tripCopy referenceFrame];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Opening shared trip: %@, transportType: %lu, protocolVersion: %lu, referenceFrame: %d", buf, 0x30u);

    goto LABEL_12;
  }

LABEL_59:
}

- (void)_displayOrScheduleDisplayOfEnqueuedFixedProblemInvokedAfterWait:(BOOL)wait
{
  if (self->_fixedProblemCompletion)
  {
    WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
    topContext = [WeakRetained topContext];
    baseModeController = [(AppCoordinator *)self baseModeController];

    if (topContext == baseModeController)
    {
      v8 = objc_retainBlock(self->_fixedProblemCompletion);
      v9 = objc_loadWeakRetained(&self->_chromeViewController);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10062E1A8;
      v12[3] = &unk_1016610E0;
      v13 = v8;
      waitCopy = wait;
      v10 = v8;
      [v9 dismissAllModalViewsIfPresentAnimated:1 completion:v12];

      fixedProblemCompletion = self->_fixedProblemCompletion;
      self->_fixedProblemCompletion = 0;
    }
  }
}

- (void)displayOrScheduleDisplayOfEnqueuedFixedProblem:(id)problem
{
  v4 = [problem copy];
  fixedProblemCompletion = self->_fixedProblemCompletion;
  self->_fixedProblemCompletion = v4;

  [(AppCoordinator *)self _displayOrScheduleDisplayOfEnqueuedFixedProblemInvokedAfterWait:0];
}

- (void)dismissShareIfNeededAnimated:(BOOL)animated
{
  animatedCopy = animated;
  chromeViewController = [(AppCoordinator *)self chromeViewController];
  presentedViewController = [chromeViewController presentedViewController];
  shareViewController = self->_shareViewController;

  if (presentedViewController == shareViewController)
  {
    chromeViewController2 = [(AppCoordinator *)self chromeViewController];
    [chromeViewController2 dismissViewControllerAnimated:animatedCopy completion:0];
  }

  v9 = self->_shareViewController;
  self->_shareViewController = 0;
}

- (void)mapsActivityViewControllerPresentRoutingApps:(id)apps
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  topContext = [WeakRetained topContext];
  baseModeController = [(AppCoordinator *)self baseModeController];

  if (topContext == baseModeController)
  {
    baseActionCoordinator = [(AppCoordinator *)self baseActionCoordinator];
    [baseActionCoordinator presentRoutePlanningViewType:6];
  }
}

- (void)mapsActivityViewControllerPrint:(id)print
{
  printCopy = print;
  shareItem = [printCopy shareItem];
  if ([shareItem conformsToProtocol:&OBJC_PROTOCOL___ShareItemSource])
  {
    shareItem2 = [printCopy shareItem];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      shareItem3 = [printCopy shareItem];
      routeForPrinting = [shareItem3 routeForPrinting];

      if (routeForPrinting)
      {
        chromeViewController = [(AppCoordinator *)self chromeViewController];
        [chromeViewController printRoute:routeForPrinting];
        goto LABEL_7;
      }
    }
  }

  else
  {
  }

  routeForPrinting = [(AppCoordinator *)self chromeViewController];
  chromeViewController = +[SearchSession currentSearchSession];
  [routeForPrinting printSearchResultFromSession:chromeViewController];
LABEL_7:
}

- (MKMapView)mapsActivityMapView
{
  chromeViewController = [(AppCoordinator *)self chromeViewController];
  mapView = [chromeViewController mapView];

  return mapView;
}

- (void)setNeedsUserActivityUpdate
{
  mapsSceneDelegate = [(AppCoordinator *)self mapsSceneDelegate];
  [mapsSceneDelegate setNeedsUserActivityUpdate];
}

- (void)archiveMapsActivity
{
  mapsSceneDelegate = [(AppCoordinator *)self mapsSceneDelegate];
  [mapsSceneDelegate archiveMapsActivity];
}

- (void)editLocationForParkedCar:(id)car
{
  carCopy = car;
  baseActionCoordinator = [(AppCoordinator *)self baseActionCoordinator];
  [baseActionCoordinator viewController:0 editLocationForParkedCar:carCopy];
}

- (void)startTableBookingFlowFromMapItem:(id)item
{
  itemCopy = item;
  v6 = [[PlaceCardItem alloc] initWithMapItem:itemCopy];

  baseActionCoordinator = [(AppCoordinator *)self baseActionCoordinator];
  [baseActionCoordinator viewController:0 displayTableBookingFor:v6];
}

- (void)_shareItem:(id)item presentationOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  itemCopy = item;
  v11 = [[MapsActivityViewController alloc] initWithShareItem:itemCopy];

  [(MapsActivityViewController *)v11 setMapsActivityDelegate:self];
  objc_storeStrong(&self->_shareViewController, v11);
  sourceView = [optionsCopy sourceView];

  if (sourceView)
  {
    sourceView2 = [optionsCopy sourceView];
    popoverPresentationController = [(MapsActivityViewController *)v11 popoverPresentationController];
    [popoverPresentationController setSourceView:sourceView2];
  }

  else
  {
    sourceItem = [optionsCopy sourceItem];

    if (sourceItem)
    {
      sourceView2 = [optionsCopy sourceItem];
      popoverPresentationController = [(MapsActivityViewController *)v11 popoverPresentationController];
      [popoverPresentationController setSourceItem:sourceView2];
    }

    else
    {
      chromeViewController = [(AppCoordinator *)self chromeViewController];
      sourceView2 = [chromeViewController view];

      [sourceView2 bounds];
      MidX = CGRectGetMidX(v24);
      [sourceView2 bounds];
      MidY = CGRectGetMidY(v25);
      popoverPresentationController2 = [(MapsActivityViewController *)v11 popoverPresentationController];
      [popoverPresentationController2 setSourceView:sourceView2];

      popoverPresentationController = [(MapsActivityViewController *)v11 popoverPresentationController];
      [popoverPresentationController setSourceRect:{MidX, MidY, 1.0, 1.0}];
    }
  }

  chromeViewController2 = [(AppCoordinator *)self chromeViewController];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10062E864;
  v22[3] = &unk_101661760;
  v23 = completionCopy;
  v21 = completionCopy;
  [chromeViewController2 _maps_topMostPresentViewController:v11 animated:1 completion:v22];
}

- (void)shareItem:(id)item presentationOptions:(id)options completion:(id)completion
{
  if (item)
  {

    [AppCoordinator _shareItem:"_shareItem:presentationOptions:completion:" presentationOptions:? completion:?];
  }

  else
  {
    v5 = sub_10006D178();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [NSString stringWithFormat:@"Attempting to share nil share item. Bailing."];
      v9 = 136315906;
      v10 = "[AppCoordinator shareItem:presentationOptions:completion:]";
      v11 = 2080;
      v12 = "AppCoordinator.m";
      v13 = 1024;
      v14 = 1147;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly! '%@'", &v9, 0x26u);
    }

    if (sub_100E03634())
    {
      v7 = sub_10006D178();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = +[NSThread callStackSymbols];
        v9 = 138412290;
        v10 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@", &v9, 0xCu);
      }
    }
  }
}

- (void)exitFlyover
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  topContext = [WeakRetained topContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = objc_loadWeakRetained(&self->_chromeViewController);
    [v6 popContextAnimated:1 completion:0];
  }
}

- (void)enterFlyoverForMapItem:(id)item
{
  itemCopy = item;
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  _currentContainerViewController = [WeakRetained _currentContainerViewController];
  [_currentContainerViewController setContaineesHidden:1];

  v9 = [[FlyoverModeController alloc] initWithMapItem:itemCopy];
  actionCoordinator = [(FlyoverModeController *)v9 actionCoordinator];
  [actionCoordinator setAppCoordinator:self];
  v8 = objc_loadWeakRetained(&self->_chromeViewController);
  [v8 pushContext:v9 animated:1 completion:0];
}

- (void)showFullscreenDirectionsList
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10062EC1C;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)dismissRidesharingSessionAndReturnToRoutePlanning:(BOOL)planning
{
  planningCopy = planning;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10062EDEC;
  v14[3] = &unk_101661B18;
  v14[4] = self;
  v5 = objc_retainBlock(v14);
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v7 = WeakRetained;
  if (planningCopy)
  {
    topContext = [WeakRetained topContext];
    ridesharingModeController = [(AppCoordinator *)self ridesharingModeController];

    if (topContext == ridesharingModeController)
    {
      v11 = objc_loadWeakRetained(&self->_chromeViewController);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10062EEA4;
      v12[3] = &unk_101661760;
      v13 = v5;
      [v11 popContextAnimated:1 completion:v12];
    }

    else
    {
      (v5[2])(v5);
    }
  }

  else
  {
    [WeakRetained popToRootContextAnimated:0 completion:0];

    platformController = [(AppCoordinator *)self platformController];
    [platformController clearSessions];
  }
}

- (void)continueRideBookingSessionWithApplicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[RidesharingModeController alloc] initWithApplicationIdentifier:identifierCopy];

  ridesharingModeController = self->_ridesharingModeController;
  self->_ridesharingModeController = v5;
  v7 = v5;

  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  [WeakRetained pushContext:v7 animated:1 completion:0];
}

- (void)startRideBookingSessionWithRideBookingRideOption:(id)option
{
  optionCopy = option;
  v5 = [[RidesharingModeController alloc] initWithRideOption:optionCopy];

  ridesharingModeController = self->_ridesharingModeController;
  self->_ridesharingModeController = v5;
  v7 = v5;

  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  [WeakRetained pushContext:v7 animated:1 completion:0];
}

- (void)displayIncidentReportSubmissionWithItem:(id)item report:(id)report
{
  reportCopy = report;
  itemCopy = item;
  baseActionCoordinator = [(AppCoordinator *)self baseActionCoordinator];
  [baseActionCoordinator displayIncidentReportSubmissionWithItem:itemCopy report:reportCopy];
}

- (void)displayTransitSchedulesForRouteStep:(id)step
{
  stepCopy = step;
  v6 = [[_TtC4Maps23TransitSchedulesContext alloc] initWithRouteStep:stepCopy];

  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  [WeakRetained pushContext:v6 animated:1 completion:0];
}

- (void)displayTransitSchedulesForMapItem:(id)item departureSequence:(id)sequence
{
  sequenceCopy = sequence;
  itemCopy = item;
  v9 = [[_TtC4Maps23TransitSchedulesContext alloc] initWithMapItem:itemCopy departureSequence:sequenceCopy];

  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  [WeakRetained pushContext:v9 animated:1 completion:0];
}

- (void)_popSteppingModeWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_100035E6C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
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
      v9 = [(AppCoordinator *)selfCopy performSelector:"accessibilityIdentifier"];
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
    *buf = 138543362;
    v36 = selfCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Popping step mode", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  topContext = [WeakRetained topContext];
  v14 = topContext;
  if (topContext == self->_stepModeController)
  {

    goto LABEL_22;
  }

  v15 = objc_loadWeakRetained(&self->_chromeViewController);
  topContext2 = [v15 topContext];
  transitNavigationContext = self->_transitNavigationContext;

  if (topContext2 == transitNavigationContext)
  {
LABEL_22:
    stepActionCoordinator = [(AppCoordinator *)self stepActionCoordinator];
    [stepActionCoordinator setAppCoordinator:0];

    stepModeController = self->_stepModeController;
    self->_stepModeController = 0;

    v29 = self->_transitNavigationContext;
    self->_transitNavigationContext = 0;

    v30 = objc_loadWeakRetained(&self->_chromeViewController);
    [v30 updateThemeForVisualEffectStyle:0];

    v31 = objc_loadWeakRetained(&self->_chromeViewController);
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10062F60C;
    v33[3] = &unk_101661090;
    v33[4] = self;
    v34 = completionCopy;
    [v31 popContextAnimated:1 completion:v33];

    v32 = objc_loadWeakRetained(&self->_chromeViewController);
    [v32 commitCoordinatedContextChange];

    goto LABEL_23;
  }

  v18 = sub_100035E6C();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    selfCopy2 = self;
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    if (objc_opt_respondsToSelector())
    {
      v22 = [(AppCoordinator *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v23 = v22;
      if (v22 && ![v22 isEqualToString:v21])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v21, selfCopy2, v23];

        goto LABEL_19;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v21, selfCopy2];
LABEL_19:

    v25 = objc_loadWeakRetained(&self->_chromeViewController);
    topContext3 = [v25 topContext];
    *buf = 138543618;
    v36 = selfCopy2;
    v37 = 2112;
    v38 = topContext3;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "[%{public}@] The top mode is currently not the step mode nor the transit mode (%@); will apply pending action and return", buf, 0x16u);
  }

  [(AppCoordinator *)self applyPendingActionIfNeeded];
LABEL_23:
}

- (void)_popNavModeWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_100035E6C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
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
      v9 = [(AppCoordinator *)selfCopy performSelector:"accessibilityIdentifier"];
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
    *buf = 138543362;
    v36 = selfCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Popping nav mode", buf, 0xCu);
  }

  chromeViewController = [(AppCoordinator *)self chromeViewController];
  mapsActionController = [chromeViewController mapsActionController];
  pendingAction = [mapsActionController pendingAction];

  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  [WeakRetained updateThemeForVisualEffectStyle:0];

  v16 = self->_navModeController;
  v17 = objc_loadWeakRetained(&self->_chromeViewController);
  view = [v17 view];
  window = [view window];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  objc_initWeak(buf, self);
  v21 = objc_loadWeakRetained(&self->_chromeViewController);
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10062FA4C;
  v31[3] = &unk_101624568;
  v34 = isKindOfClass & 1;
  v22 = v16;
  v32 = v22;
  objc_copyWeak(&v33, buf);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10062FB74;
  v28[3] = &unk_101624590;
  objc_copyWeak(&v30, buf);
  v23 = completionCopy;
  v29 = v23;
  [v21 scheduleCoordinatedContextChange:v31 completionHandler:v28];

  if ((pendingAction & 1) == 0)
  {
    baseActionCoordinator = [(AppCoordinator *)self baseActionCoordinator];
    v25 = [baseActionCoordinator visibleViewModeBeforeDoingDirectionItem] == 3;

    if (v25)
    {
      baseActionCoordinator2 = [(AppCoordinator *)self baseActionCoordinator];
      [baseActionCoordinator2 updateViewMode:3 animated:0];
    }
  }

  navModeController = self->_navModeController;
  self->_navModeController = 0;

  objc_destroyWeak(&v30);
  objc_destroyWeak(&v33);

  objc_destroyWeak(buf);
}

- (BOOL)applyPendingActionIfNeeded
{
  chromeViewController = [(AppCoordinator *)self chromeViewController];
  mapsActionController = [chromeViewController mapsActionController];
  pendingAction = [mapsActionController pendingAction];

  if (pendingAction)
  {
    chromeViewController2 = [(AppCoordinator *)self chromeViewController];
    mapsActionController2 = [chromeViewController2 mapsActionController];
    [mapsActionController2 navigationEnded];
  }

  return pendingAction;
}

- (void)endNavigationAndReturnToRoutePlanning:(BOOL)planning
{
  planningCopy = planning;
  v5 = sub_100035E6C();
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    goto LABEL_11;
  }

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
    v9 = [(AppCoordinator *)selfCopy performSelector:"accessibilityIdentifier"];
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
  *buf = 138543618;
  v48 = selfCopy;
  v49 = 1024;
  v50 = planningCopy;
  _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] endNavigationAndReturnToRoutePlanning: %d", buf, 0x12u);

LABEL_11:
  platformController = [(AppCoordinator *)self platformController];
  currentSession = [platformController currentSession];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = currentSession;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  if (v15)
  {
    platformController2 = [(AppCoordinator *)self platformController];
    sessionStack = [platformController2 sessionStack];
    v18 = sub_100030774(sessionStack, &stru_101624500);

    dismissNavigationCompletion = self->_dismissNavigationCompletion;
    self->_dismissNavigationCompletion = 0;

    platformController3 = [(AppCoordinator *)self platformController];
    route = platformController3;
    if (planningCopy)
    {
      [platformController3 popUntil:&stru_101624520];
LABEL_33:

      goto LABEL_34;
    }

    [platformController3 clearSessions];

    WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
    contexts = [WeakRetained contexts];
    v24 = [contexts count];

    if (!v24)
    {
LABEL_34:

      goto LABEL_35;
    }

    currentRouteCollection = [v15 currentRouteCollection];
    currentRoute = [currentRouteCollection currentRoute];
    destination = [currentRoute destination];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = destination;
    }

    else
    {
      v28 = 0;
    }

    v29 = v28;

    if (v29)
    {
      route = [v29 route];
    }

    else
    {
      currentRouteCollection2 = [v15 currentRouteCollection];
      route = [currentRouteCollection2 currentRoute];
    }

    v31 = [route source] & 0xFFFFFFFFFFFFFFFELL;
    v32 = objc_loadWeakRetained(&self->_chromeViewController);
    v33 = v32;
    if (v31 == 2)
    {
      contexts2 = [v32 contexts];
      v35 = [contexts2 indexOfObjectPassingTest:&stru_101624540];

      if (v35 != 0x7FFFFFFFFFFFFFFFLL)
      {
        firstObject = objc_loadWeakRetained(&self->_chromeViewController);
        contexts3 = [(MapsCustomRouteViewContext *)firstObject contexts];
        v39Contexts = [contexts3 _maps_subarrayToIndex:v35];
        [(MapsCustomRouteViewContext *)firstObject setContexts:v39Contexts animated:1 completion:0];
        v38 = firstObject;
        goto LABEL_32;
      }

      configuration = [v18 configuration];
      source = [configuration source];

      if (source == 1)
      {
        v38 = [[MapsCustomRouteViewContext alloc] initWithExistingRoute:route];
        contexts3 = objc_loadWeakRetained(&self->_chromeViewController);
        v39Contexts = [contexts3 contexts];
        firstObject = [v39Contexts firstObject];
        v46[0] = firstObject;
        v46[1] = v38;
        v42 = [NSArray arrayWithObjects:v46 count:2];
        [contexts3 setContexts:v42 animated:1 completion:0];

LABEL_32:
        goto LABEL_33;
      }

      v38 = objc_loadWeakRetained(&self->_chromeViewController);
      contexts3 = [(MapsCustomRouteViewContext *)v38 contexts];
      v39Contexts = [contexts3 firstObject];
      v45 = v39Contexts;
      v43 = &v45;
    }

    else
    {
      v38 = v32;
      contexts3 = [(MapsCustomRouteViewContext *)v38 contexts];
      v39Contexts = [contexts3 firstObject];
      v44 = v39Contexts;
      v43 = &v44;
    }

    firstObject = [NSArray arrayWithObjects:v43 count:1];
    [(MapsCustomRouteViewContext *)v38 setContexts:firstObject animated:1 completion:0];

    goto LABEL_32;
  }

LABEL_35:
}

- (void)endNavigationWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1006303DC;
  v7[3] = &unk_101660648;
  objc_copyWeak(&v9, &location);
  v5 = completionCopy;
  v8 = v5;
  v6 = objc_retainBlock(v7);
  if (+[NSThread isMainThread])
  {
    (v6[2])(v6);
  }

  else
  {
    dispatch_async(&_dispatch_main_q, v6);
  }

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)startNavigationWithRouteCollection:(id)collection navigationDetailsOptions:(NavigationDetailsOptions *)options
{
  collectionCopy = collection;
  objc_initWeak(&location, self);
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100630AB4;
  v40[3] = &unk_1016244B8;
  objc_copyWeak(&v43, &location);
  v7 = collectionCopy;
  v41 = v7;
  selfCopy = self;
  v8 = *&options->guidanceType;
  v44 = *&options->shouldSimulateLocations;
  v45 = v8;
  v46 = *&options->isReconnecting;
  navigationModeContext = options->navigationModeContext;
  v9 = objc_retainBlock(v40);
  v10 = +[UIApplication sharedMapsDelegate];
  appSessionController = [v10 appSessionController];
  currentlyNavigatingPlatformController = [appSessionController currentlyNavigatingPlatformController];

  if (currentlyNavigatingPlatformController)
  {
    platformController = [(AppCoordinator *)self platformController];
    v14 = currentlyNavigatingPlatformController == platformController;

    if (!v14)
    {
      v15 = sub_100035E6C();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
LABEL_14:

        v22 = +[NSBundle mainBundle];
        v33 = [v22 localizedStringForKey:@"Route in Progress" value:@"localized string not found" table:0];

        v23 = +[NSBundle mainBundle];
        v32 = [v23 localizedStringForKey:@"Are you sure you want to end navigation?" value:@"localized string not found" table:0];

        v24 = [UIAlertController alertControllerWithTitle:v33 message:v32 preferredStyle:1];
        v25 = +[NSBundle mainBundle];
        v26 = [v25 localizedStringForKey:@"Cancel" value:@"localized string not found" table:0];
        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_1006312B0;
        v38[3] = &unk_101658AF0;
        objc_copyWeak(&v39, &location);
        v27 = [UIAlertAction actionWithTitle:v26 style:1 handler:v38];
        [v24 addAction:v27];

        v28 = +[NSBundle mainBundle];
        v29 = [v28 localizedStringForKey:@"End Navigation" value:@"localized string not found" table:0];
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_10063143C;
        v34[3] = &unk_1016244E0;
        objc_copyWeak(&v37, &location);
        v35 = currentlyNavigatingPlatformController;
        v36 = v9;
        v30 = [UIAlertAction actionWithTitle:v29 style:0 handler:v34];
        [v24 addAction:v30];

        chromeViewController = [(AppCoordinator *)self chromeViewController];
        [chromeViewController _maps_topMostPresentViewController:v24 animated:1 completion:0];

        objc_destroyWeak(&v37);
        objc_destroyWeak(&v39);

        goto LABEL_15;
      }

      selfCopy2 = self;
      if (!selfCopy2)
      {
        selfCopy2 = @"<nil>";
        goto LABEL_13;
      }

      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      if (objc_opt_respondsToSelector())
      {
        v19 = [(AppCoordinator *)selfCopy2 performSelector:"accessibilityIdentifier"];
        v20 = v19;
        if (v19 && ([v19 isEqualToString:v18] & 1) == 0)
        {
          selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v18, selfCopy2, v20];

          goto LABEL_10;
        }
      }

      selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v18, selfCopy2];
LABEL_10:

LABEL_13:
      *buf = 138543362;
      v50 = selfCopy2;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[%{public}@] Ask for kMapsInterruptionMaybeEndNavigation", buf, 0xCu);

      goto LABEL_14;
    }
  }

  (v9[2])(v9);
LABEL_15:

  objc_destroyWeak(&v43);
  objc_destroyWeak(&location);
}

- (IOSTransitNavigationContext)transitNavigationContext
{
  transitNavigationContext = self->_transitNavigationContext;
  if (!transitNavigationContext)
  {
    v4 = objc_alloc_init(IOSTransitNavigationContext);
    v5 = self->_transitNavigationContext;
    self->_transitNavigationContext = v4;

    transitNavigationContext = self->_transitNavigationContext;
  }

  return transitNavigationContext;
}

- (NavModeController)navModeController
{
  navModeController = self->_navModeController;
  if (!navModeController)
  {
    v4 = [NavModeController alloc];
    platformController = [(AppCoordinator *)self platformController];
    v6 = [(NavModeController *)v4 initWithPlatformController:platformController];
    v7 = self->_navModeController;
    self->_navModeController = v6;

    navModeController = self->_navModeController;
  }

  return navModeController;
}

- (void)toggleRecents
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100631B8C;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [WeakRetained popToRootContextAnimated:1 completion:v4];
}

- (void)showOfflineMapRegionSelectorForConfiguration:(id)configuration shouldShowDataManagementAfterDownload:(BOOL)download shouldShowDataManagementAfterDownloadIfRegionDiffers:(BOOL)differs
{
  configurationCopy = configuration;
  baseActionCoordinator = [(AppCoordinator *)self baseActionCoordinator];
  region = [configurationCopy region];
  name = [configurationCopy name];
  route = [configurationCopy route];
  shouldUseSessionlessAnalytics = [configurationCopy shouldUseSessionlessAnalytics];
  dismissalBlock = [configurationCopy dismissalBlock];

  BYTE1(v14) = differs;
  LOBYTE(v14) = download;
  [baseActionCoordinator viewController:0 showOfflineMapRegionSelectorForRegion:region name:name route:route muid:0 shouldUseSessionlessAnalytics:shouldUseSessionlessAnalytics shouldShowDataManagementAfterDownload:v14 shouldShowDataManagementAfterDownloadIfRegionDiffers:dismissalBlock dismissalBlock:?];
}

- (void)showOfflineMapRegionSelectorForRegion:(id)region name:(id)name pushDataManagementFirst:(BOOL)first
{
  regionCopy = region;
  nameCopy = name;
  if (GEOSupportsOfflineMaps())
  {
    WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100631E10;
    v11[3] = &unk_101651258;
    firstCopy = first;
    v11[4] = self;
    v12 = regionCopy;
    v13 = nameCopy;
    [WeakRetained popToRootContextAnimated:1 completion:v11];
  }
}

- (void)viewControllerShowExpiredOfflineMaps:(id)maps
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100631F34;
  v5[3] = &unk_101661B18;
  v5[4] = self;
  [WeakRetained popToRootContextAnimated:1 completion:v5];
}

- (void)viewControllerShowOfflineMaps:(id)maps
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100632008;
  v5[3] = &unk_101661B18;
  v5[4] = self;
  [WeakRetained popToRootContextAnimated:1 completion:v5];
}

- (void)openNearbyTransit
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  topContext = [WeakRetained topContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v7 = objc_alloc_init(_TtC4Maps20NearbyTransitContext);
    v6 = objc_loadWeakRetained(&self->_chromeViewController);
    [v6 pushContext:v7 animated:1 completion:0];
  }
}

- (void)openVisitedPlaces
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1006321AC;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [WeakRetained popToRootContextAnimated:1 completion:v4];
}

- (void)openVehicleList
{
  v3 = +[VGVirtualGarageService sharedService];
  [v3 virtualGarageForceFetchAllVehicles];

  baseActionCoordinator = [(AppCoordinator *)self baseActionCoordinator];
  [baseActionCoordinator viewControllerPresentVirtualGarage:0];
}

- (void)openUserProfile
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10063233C;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [WeakRetained popToRootContextAnimated:1 completion:v4];
}

- (void)presentPOIEnrichmentWithCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  baseActionCoordinator = [(AppCoordinator *)self baseActionCoordinator];
  [baseActionCoordinator viewControllerPresentPOIEnrichmentWithCoordinator:coordinatorCopy];
}

- (void)openCuratedGuideWithCollection:(id)collection
{
  collectionCopy = collection;
  baseActionCoordinator = [(AppCoordinator *)self baseActionCoordinator];
  [baseActionCoordinator viewController:0 showCuratedCollection:collectionCopy];
}

- (void)openCuratedCollectionsList:(id)list usingTitle:(id)title
{
  listCopy = list;
  titleCopy = title;
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100632520;
  v11[3] = &unk_101661A40;
  v11[4] = self;
  v12 = listCopy;
  v13 = titleCopy;
  v9 = titleCopy;
  v10 = listCopy;
  [WeakRetained popToRootContextAnimated:1 completion:v11];
}

- (void)openAllCuratedCollections
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10063260C;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [WeakRetained popToRootContextAnimated:1 completion:v4];
}

- (void)openPublisherWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100632704;
  v7[3] = &unk_101661A90;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  [WeakRetained popToRootContextAnimated:1 completion:v7];
}

- (void)openGuidesHomeWithGuideLocation:(id)location
{
  locationCopy = location;
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10063280C;
  v7[3] = &unk_101661A90;
  v7[4] = self;
  v8 = locationCopy;
  v6 = locationCopy;
  [WeakRetained popToRootContextAnimated:1 completion:v7];
}

- (void)openCuratedCollectionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100632918;
  v7[3] = &unk_101661A90;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  [WeakRetained popToRootContextAnimated:1 completion:v7];
}

- (void)openRelatedMapItems:(id)items withTitle:(id)title originalMapItem:(id)item analyticsDelegate:(id)delegate
{
  itemsCopy = items;
  titleCopy = title;
  itemCopy = item;
  delegateCopy = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100632A94;
  v19[3] = &unk_101653D50;
  v19[4] = self;
  v20 = itemsCopy;
  v21 = titleCopy;
  v22 = itemCopy;
  v23 = delegateCopy;
  v15 = delegateCopy;
  v16 = itemCopy;
  v17 = titleCopy;
  v18 = itemsCopy;
  [WeakRetained popToRootContextAnimated:1 completion:v19];
}

- (void)openParentMapItem:(id)item
{
  itemCopy = item;
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100632BA4;
  v7[3] = &unk_101661A90;
  v7[4] = self;
  v8 = itemCopy;
  v6 = itemCopy;
  [WeakRetained popToRootContextAnimated:1 completion:v7];
}

- (void)enterRouteCreationWithRoute:(id)route originMapItem:(id)item destinationMapItem:(id)mapItem userInfo:(id)info completion:(id)completion
{
  routeCopy = route;
  itemCopy = item;
  mapItemCopy = mapItem;
  infoCopy = info;
  completionCopy = completion;
  if (![(AppCoordinator *)self isPresentingRouteCreation])
  {
    [(AppCoordinator *)self setIsPresentingRouteCreation:1];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100632EAC;
    v26[3] = &unk_101661090;
    v26[4] = self;
    v27 = completionCopy;
    v17 = objc_retainBlock(v26);
    v18 = sub_1007989A4();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
    if (routeCopy)
    {
      if (v19)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Presenting route editing", buf, 2u);
      }

      v20 = [infoCopy objectForKeyedSubscript:@"DirectionsRouteUUIDKey"];
      v21 = [[MapsCustomRouteViewContext alloc] initWithExistingRoute:routeCopy];
      [(MapsCustomRouteViewContext *)v21 setHistoryUUID:v20];
    }

    else
    {
      if (v19)
      {
        *buf = 138477827;
        v30 = itemCopy;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Presenting route creation with mapItem: %{private}@", buf, 0xCu);
      }

      if (mapItemCopy)
      {
        v22 = [[SearchResult alloc] initWithMapItem:mapItemCopy];
        WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
        mapSelectionManager = [WeakRetained mapSelectionManager];
        [mapSelectionManager injectPreviouslySelectedSearchResult:v22];
      }

      if (itemCopy)
      {
        v28 = itemCopy;
        v20 = [NSArray arrayWithObjects:&v28 count:1];
      }

      else
      {
        v20 = 0;
      }

      v21 = [[MapsRouteCreationContext alloc] initWithExistingMapItems:v20];
    }

    v25 = objc_loadWeakRetained(&self->_chromeViewController);
    [v25 pushContext:v21 animated:1 completion:v17];
  }
}

- (void)enterRouteCreationWithMapItem:(id)item completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  objc_initWeak(&location, self);
  _hikeAssociatedInfo = [itemCopy _hikeAssociatedInfo];
  encryptedTourMuid = [_hikeAssociatedInfo encryptedTourMuid];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100633050;
  v12[3] = &unk_10165DCA0;
  objc_copyWeak(&v15, &location);
  v10 = itemCopy;
  v13 = v10;
  v11 = completionCopy;
  v14 = v11;
  [MapsSavedRoutesManager fetchSavedRoutesWithTourMuid:encryptedTourMuid completion:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)enterRoutePlanningWithDirectionItem:(id)item allowToPromptEditing:(BOOL)editing withUserInfo:(id)info
{
  itemCopy = item;
  infoCopy = info;
  BOOL = GEOConfigGetBOOL();
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  if (BOOL)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1006334D8;
    v21[3] = &unk_101624468;
    editingCopy = editing;
    v22 = itemCopy;
    v23 = infoCopy;
    selfCopy = self;
    v12 = infoCopy;
    v13 = itemCopy;
    [WeakRetained scheduleCoordinatedContextChange:v21 completionHandler:0];

    v14 = v22;
  }

  else
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1006335DC;
    v17[3] = &unk_101651258;
    v17[4] = self;
    v18 = itemCopy;
    editingCopy2 = editing;
    v19 = infoCopy;
    v15 = infoCopy;
    v16 = itemCopy;
    [WeakRetained popToRootContextAnimated:1 completion:v17];

    v14 = v18;
  }
}

- (void)toggleRoutePlanning
{
  if (GEOConfigGetBOOL())
  {
    stashedRoutePlanningContext = self->_stashedRoutePlanningContext;
    if (stashedRoutePlanningContext)
    {
      v4 = stashedRoutePlanningContext;
      v5 = self->_stashedRoutePlanningContext;
      self->_stashedRoutePlanningContext = 0;

      WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100633830;
      v14[3] = &unk_10162FBD8;
      v14[4] = self;
      v15 = v4;
      v7 = v4;
      [WeakRetained scheduleCoordinatedContextChange:v14 completionHandler:0];
    }

    else
    {
      v9 = objc_loadWeakRetained(&self->_chromeViewController);
      contexts = [v9 contexts];
      obj = [contexts _maps_firstContextOfClass:objc_opt_class()];

      if (obj)
      {
        objc_storeStrong(&self->_stashedRoutePlanningContext, obj);
        v11 = objc_loadWeakRetained(&self->_chromeViewController);
        [v11 popContext:obj animated:1 completion:0];
      }

      else
      {
        [(AppCoordinator *)self enterRoutePlanningWithDirectionItem:0 allowToPromptEditing:0 withUserInfo:0];
      }
    }
  }

  else
  {
    v8 = objc_loadWeakRetained(&self->_chromeViewController);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1006338D0;
    v13[3] = &unk_101661B18;
    v13[4] = self;
    [v8 popToRootContextAnimated:1 completion:v13];
  }
}

- (BOOL)isRoutePlanningPresented
{
  if (GEOConfigGetBOOL())
  {
    WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
    contexts = [WeakRetained contexts];
    v5 = [contexts _maps_firstContextOfClass:objc_opt_class()];
    isRoutePlanningPresented = v5 != 0;
  }

  else
  {
    WeakRetained = [(AppCoordinator *)self baseActionCoordinator];
    isRoutePlanningPresented = [WeakRetained isRoutePlanningPresented];
  }

  return isRoutePlanningPresented;
}

- (void)editUserGuide:(id)guide
{
  guideCopy = guide;
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  topContext = [WeakRetained topContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    chromeViewController = [(AppCoordinator *)self chromeViewController];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100633ADC;
    v10[3] = &unk_101661A90;
    v10[4] = self;
    v11 = guideCopy;
    [chromeViewController popToRootContextAnimated:1 completion:v10];
  }

  else
  {
    baseActionCoordinator = [(AppCoordinator *)self baseActionCoordinator];
    [baseActionCoordinator viewController:0 editCollection:guideCopy];
  }
}

- (void)openCollection:(id)collection
{
  collectionCopy = collection;
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100633BE8;
  v7[3] = &unk_101661A90;
  v7[4] = self;
  v8 = collectionCopy;
  v6 = collectionCopy;
  [WeakRetained popToRootContextAnimated:1 completion:v7];
}

- (void)addStopWithWaypoint:(id)waypoint
{
  waypointCopy = waypoint;
  v5 = sub_100035E6C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
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
      v9 = [(AppCoordinator *)selfCopy performSelector:"accessibilityIdentifier"];
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
    uniqueID = [waypointCopy uniqueID];
    *buf = 138543618;
    v15 = selfCopy;
    v16 = 2112;
    v17 = uniqueID;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] adding stop with waypoint: %@", buf, 0x16u);
  }

  navActionCoordinator = [(AppCoordinator *)self navActionCoordinator];
  [navActionCoordinator detourToWaypoint:waypointCopy];
}

- (void)addStopWithMapItem:(id)item
{
  itemCopy = item;
  v5 = sub_100035E6C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
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
      v9 = [(AppCoordinator *)selfCopy performSelector:"accessibilityIdentifier"];
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
    name = [itemCopy name];
    *buf = 138543618;
    v15 = selfCopy;
    v16 = 2112;
    v17 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] adding stop with MapItem: %@", buf, 0x16u);
  }

  navActionCoordinator = [(AppCoordinator *)self navActionCoordinator];
  [navActionCoordinator detourToMapItem:itemCopy];
}

- (void)openSearch:(id)search andResults:(id)results
{
  searchCopy = search;
  resultsCopy = results;
  if ([resultsCopy isSearchAlongRoute])
  {
    v8 = +[CarDisplayController sharedInstance];
    isCarAppSceneHostingNavigation = [v8 isCarAppSceneHostingNavigation];

    if (isCarAppSceneHostingNavigation)
    {
      navActionCoordinator = +[CarDisplayController sharedInstance];
      v13 = @"Source";
      v14 = &off_1016E6590;
      v11 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      v12 = [navActionCoordinator processSearchFieldItem:searchCopy searchInfo:resultsCopy userInfo:v11];
    }

    else
    {
      navActionCoordinator = [(AppCoordinator *)self navActionCoordinator];
      [navActionCoordinator setCurrentSearchInfo:resultsCopy];
    }
  }

  else
  {
    [(AppCoordinator *)self startSearchModeWithCompletion:0];
    navActionCoordinator = [(AppCoordinator *)self baseActionCoordinator];
    [navActionCoordinator restoreSearchForItem:searchCopy withResults:resultsCopy sessionOrigin:2];
  }
}

- (void)openSearch:(id)search userInfo:(id)info
{
  infoCopy = info;
  searchCopy = search;
  [(AppCoordinator *)self startSearchModeWithCompletion:0];
  baseActionCoordinator = [(AppCoordinator *)self baseActionCoordinator];
  [baseActionCoordinator viewController:0 doSearchItem:searchCopy withUserInfo:infoCopy];
}

- (void)startSearchModeWithCompletion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  topContext = [WeakRetained topContext];
  baseModeController = [(AppCoordinator *)self baseModeController];

  if (topContext != baseModeController)
  {
    baseActionCoordinator = [(AppCoordinator *)self baseActionCoordinator];
    [baseActionCoordinator setAppCoordinator:self];

    v8 = objc_loadWeakRetained(&self->_chromeViewController);
    baseModeController2 = [(AppCoordinator *)self baseModeController];
    [v8 pushContext:baseModeController2 animated:0 completion:completionCopy];
  }
}

- (void)getCurrentSceneTitleWithCompletion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  topIOSBasedContext = [WeakRetained topIOSBasedContext];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_chromeViewController);
    topIOSBasedContext2 = [v7 topIOSBasedContext];
    [topIOSBasedContext2 getCurrentSceneTitleWithCompletion:completionCopy];
  }
}

- (int)_analyticsPipelineTransportModeForMSPTransportType:(int64_t)type
{
  if ((type - 1) < 5)
  {
    return type;
  }

  else
  {
    return 0;
  }
}

- (void)_navigationSessionStopped:(id)stopped movingToSession:(id)session
{
  stoppedCopy = stopped;
  sessionCopy = session;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = sessionCopy;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v11 = sessionCopy;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v10 = isKindOfClass & (v11 != 0);
  }

  objc_initWeak(&location, self);
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100634834;
  v34[3] = &unk_101632728;
  objc_copyWeak(&v36, &location);
  v37 = v10;
  v13 = stoppedCopy;
  v35 = v13;
  v14 = objc_retainBlock(v34);
  navigationType = [v13 navigationType];
  if (navigationType == 2)
  {
    goto LABEL_10;
  }

  if (navigationType != 3)
  {
    if (navigationType != 4)
    {
      goto LABEL_36;
    }

LABEL_10:
    v16 = sub_100035E6C();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
LABEL_28:

      if ([UIApplication _maps_isAnySceneForegroundForRole:_UIWindowSceneSessionTypeCoverSheet])
      {
        v30 = +[UIApplication _maps_lockScreenSceneDelegate];
        [v30 mapsAppCoordinatorWillEndLockscreenSession];
      }

      [(AppCoordinator *)self _popSteppingModeWithCompletion:v14];
      goto LABEL_36;
    }

    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_27;
    }

    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    if (objc_opt_respondsToSelector())
    {
      v20 = [(AppCoordinator *)selfCopy performSelector:"accessibilityIdentifier"];
      v21 = v20;
      if (v20 && ([v20 isEqualToString:v19] & 1) == 0)
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v19, selfCopy, v21];

        goto LABEL_17;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v19, selfCopy];
LABEL_17:

LABEL_27:
    *buf = 138543362;
    v40 = selfCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[%{public}@] Stepping navigation stopped; will pop step mode", buf, 0xCu);

    goto LABEL_28;
  }

  v23 = sub_100035E6C();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    selfCopy2 = self;
    if (!selfCopy2)
    {
      selfCopy2 = @"<nil>";
      goto LABEL_32;
    }

    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    if (objc_opt_respondsToSelector())
    {
      v27 = [(AppCoordinator *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v28 = v27;
      if (v27 && ([v27 isEqualToString:v26] & 1) == 0)
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v26, selfCopy2, v28];

        goto LABEL_25;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v26, selfCopy2];
LABEL_25:

LABEL_32:
    *buf = 138543362;
    v40 = selfCopy2;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "[%{public}@] Turn-by-turn navigation stopped; will pop nav mode", buf, 0xCu);
  }

  if ([UIApplication _maps_isAnySceneForegroundForRole:_UIWindowSceneSessionTypeCoverSheet])
  {
    v31 = +[UIApplication _maps_lockScreenSceneDelegate];
    [v31 mapsAppCoordinatorWillEndLockscreenSession];
  }

  [(AppCoordinator *)self _popNavModeWithCompletion:v14];
LABEL_36:
  v32 = +[GEOAPSharedStateData sharedData];
  [v32 setMapUiShownActiveNavMode:0];

  v33 = +[GEOAPSharedStateData sharedData];
  [v33 setHasMapUiShownActiveNavMode:0];

  objc_destroyWeak(&v36);
  objc_destroyWeak(&location);
}

- (void)_navigationSessionRunning:(id)running
{
  runningCopy = running;
  navigationType = [runningCopy navigationType];
  if (navigationType == 2 || navigationType == 4)
  {
    v7 = sub_100035E6C();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      goto LABEL_25;
    }

    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_24;
    }

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    if (objc_opt_respondsToSelector())
    {
      v11 = [(AppCoordinator *)selfCopy performSelector:"accessibilityIdentifier"];
      v12 = v11;
      if (v11 && ![v11 isEqualToString:v10])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v10, selfCopy, v12];

        goto LABEL_13;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v10, selfCopy];
LABEL_13:

LABEL_24:
    *buf = 138543362;
    v74 = selfCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}@] Navigation started stepping; will push step or transit mode", buf, 0xCu);

LABEL_25:
    v69[0] = _NSConcreteStackBlock;
    v69[1] = 3221225472;
    v69[2] = sub_100635548;
    v69[3] = &unk_101661A90;
    v69[4] = self;
    v21 = &v70;
    v70 = runningCopy;
    v22 = objc_retainBlock(v69);
    chromeViewController = [(AppCoordinator *)self chromeViewController];
    topContext = [chromeViewController topContext];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v26 = sub_100035E6C();
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        goto LABEL_75;
      }

      selfCopy2 = self;
      if (!selfCopy2)
      {
        selfCopy2 = @"<nil>";
        goto LABEL_60;
      }

      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      if (objc_opt_respondsToSelector())
      {
        v30 = [(AppCoordinator *)selfCopy2 performSelector:"accessibilityIdentifier"];
        v31 = v30;
        if (v30 && ![v30 isEqualToString:v29])
        {
          selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v29, selfCopy2, v31];

          goto LABEL_33;
        }
      }

      selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v29, selfCopy2];
LABEL_33:

LABEL_60:
      *buf = 138543362;
      v74 = selfCopy2;
      v62 = "[%{public}@] User is starting stepping nav to a custom or curated route; leaving current context in place";
LABEL_74:
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, v62, buf, 0xCu);

      goto LABEL_75;
    }

    chromeViewController2 = [(AppCoordinator *)self chromeViewController];
    topContext2 = [chromeViewController2 topContext];
    v35 = topContext2;
    if (topContext2 == self->_navModeController)
    {
    }

    else
    {
      chromeViewController3 = [(AppCoordinator *)self chromeViewController];
      topContext3 = [chromeViewController3 topContext];
      stepModeController = self->_stepModeController;

      if (topContext3 != stepModeController)
      {
        goto LABEL_76;
      }
    }

    v39 = sub_100035E6C();
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      goto LABEL_70;
    }

    selfCopy3 = self;
    v41 = objc_opt_class();
    v42 = NSStringFromClass(v41);
    if (objc_opt_respondsToSelector())
    {
      v43 = [(AppCoordinator *)selfCopy3 performSelector:"accessibilityIdentifier"];
      v44 = v43;
      if (v43 && ![v43 isEqualToString:v42])
      {
        selfCopy3 = [NSString stringWithFormat:@"%@<%p, %@>", v42, selfCopy3, v44];

        goto LABEL_44;
      }
    }

    selfCopy3 = [NSString stringWithFormat:@"%@<%p>", v42, selfCopy3];
LABEL_44:

    chromeViewController4 = [(AppCoordinator *)selfCopy3 chromeViewController];
    topContext4 = [chromeViewController4 topContext];
    *buf = 138543618;
    v74 = selfCopy3;
    v75 = 2112;
    v76 = topContext4;
LABEL_69:
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "[%{public}@] Current top mode is the nav mode or the step mode (%@); popping to root context first", buf, 0x16u);

    goto LABEL_70;
  }

  if (navigationType == 3)
  {
    v14 = sub_100035E6C();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
LABEL_47:

      v71[0] = _NSConcreteStackBlock;
      v71[1] = 3221225472;
      v71[2] = sub_100635288;
      v71[3] = &unk_101661A90;
      v71[4] = self;
      v21 = &v72;
      v72 = runningCopy;
      v22 = objc_retainBlock(v71);
      chromeViewController5 = [(AppCoordinator *)self chromeViewController];
      topContext5 = [chromeViewController5 topContext];
      objc_opt_class();
      v50 = objc_opt_isKindOfClass();

      if (v50)
      {
        v26 = sub_100035E6C();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          selfCopy4 = self;
          if (!selfCopy4)
          {
            selfCopy2 = @"<nil>";
            goto LABEL_73;
          }

          v52 = objc_opt_class();
          v53 = NSStringFromClass(v52);
          if (objc_opt_respondsToSelector())
          {
            v54 = [(AppCoordinator *)selfCopy4 performSelector:"accessibilityIdentifier"];
            v55 = v54;
            if (v54 && ![v54 isEqualToString:v53])
            {
              selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v53, selfCopy4, v55];

              goto LABEL_55;
            }
          }

          selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v53, selfCopy4];
LABEL_55:

LABEL_73:
          *buf = 138543362;
          v74 = selfCopy2;
          v62 = "[%{public}@] User is starting tbt nav to a custom or curated route; leaving current context in place";
          goto LABEL_74;
        }

LABEL_75:

        goto LABEL_76;
      }

      chromeViewController6 = [(AppCoordinator *)self chromeViewController];
      topContext6 = [chromeViewController6 topContext];
      v58 = topContext6;
      if (topContext6 == self->_navModeController)
      {

        goto LABEL_62;
      }

      chromeViewController7 = [(AppCoordinator *)self chromeViewController];
      topContext7 = [chromeViewController7 topContext];
      v61 = self->_stepModeController;

      if (topContext7 == v61)
      {
LABEL_62:
        v39 = sub_100035E6C();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          selfCopy5 = self;
          v64 = objc_opt_class();
          v65 = NSStringFromClass(v64);
          if (objc_opt_respondsToSelector())
          {
            v66 = [(AppCoordinator *)selfCopy5 performSelector:"accessibilityIdentifier"];
            v67 = v66;
            if (v66 && ![v66 isEqualToString:v65])
            {
              selfCopy3 = [NSString stringWithFormat:@"%@<%p, %@>", v65, selfCopy5, v67];

              goto LABEL_68;
            }
          }

          selfCopy3 = [NSString stringWithFormat:@"%@<%p>", v65, selfCopy5];
LABEL_68:

          chromeViewController4 = [(AppCoordinator *)selfCopy5 chromeViewController];
          topContext4 = [chromeViewController4 topContext];
          *buf = 138543618;
          v74 = selfCopy3;
          v75 = 2112;
          v76 = topContext4;
          goto LABEL_69;
        }

LABEL_70:

        chromeViewController8 = [(AppCoordinator *)self chromeViewController];
        [chromeViewController8 popToRootContextAnimated:0 completion:v22];

LABEL_77:
        goto LABEL_78;
      }

LABEL_76:
      (v22[2])(v22);
      goto LABEL_77;
    }

    selfCopy6 = self;
    if (!selfCopy6)
    {
      selfCopy6 = @"<nil>";
      goto LABEL_46;
    }

    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    if (objc_opt_respondsToSelector())
    {
      v18 = [(AppCoordinator *)selfCopy6 performSelector:"accessibilityIdentifier"];
      v19 = v18;
      if (v18 && ![v18 isEqualToString:v17])
      {
        selfCopy6 = [NSString stringWithFormat:@"%@<%p, %@>", v17, selfCopy6, v19];

        goto LABEL_22;
      }
    }

    selfCopy6 = [NSString stringWithFormat:@"%@<%p>", v17, selfCopy6];
LABEL_22:

LABEL_46:
    *buf = 138543362;
    v74 = selfCopy6;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[%{public}@] Navigation started turn-by-turn; will push nav mode", buf, 0xCu);

    goto LABEL_47;
  }

LABEL_78:
}

- (void)_navigationSession:(id)session didChangeState:(unint64_t)state
{
  if (state == 1)
  {
    [(AppCoordinator *)self _navigationSessionRunning:session];
  }
}

- (void)navigationSession:(id)session didChangeCurrentTransportType:(int64_t)type
{
  sessionCopy = session;
  if ([sessionCopy navigationType] == 3 || objc_msgSend(sessionCopy, "navigationType") == 2)
  {
    v6 = [(AppCoordinator *)self _analyticsPipelineTransportModeForMSPTransportType:type];
    v7 = +[GEOAPSharedStateData sharedData];
    [v7 setMapUiShownActiveNavMode:v6];
  }
}

- (void)mapsSession:(id)session didChangeState:(unint64_t)state
{
  sessionCopy = session;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = sessionCopy;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  if (v7)
  {
    [(AppCoordinator *)self _navigationSession:v7 didChangeState:state];
  }
}

- (void)setObservedNavigationSession:(id)session
{
  sessionCopy = session;
  observedNavigationSession = self->_observedNavigationSession;
  if (observedNavigationSession != sessionCopy)
  {
    v7 = sessionCopy;
    [observedNavigationSession unregisterObserver:self];
    objc_storeStrong(&self->_observedNavigationSession, session);
    [self->_observedNavigationSession registerObserver:self];
    sessionCopy = v7;
  }
}

- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession
{
  v6 = [(AppCoordinator *)self observedNavigationSession:controller];
  if (v6)
  {
    v7 = v6;
    observedNavigationSession = [(AppCoordinator *)self observedNavigationSession];
    guidanceType = [observedNavigationSession guidanceType];

    if (guidanceType == 2)
    {
      observedNavigationSession2 = [(AppCoordinator *)self observedNavigationSession];
      currentRouteCollection = [observedNavigationSession2 currentRouteCollection];
      currentRoute = [currentRouteCollection currentRoute];
      v12 = objc_opt_new();
      [(AppCoordinator *)self enterPedestrianARWithRoute:currentRoute guidanceObserver:v12];
    }
  }
}

- (void)platformController:(id)controller willChangeCurrentSessionFromSession:(id)session toSession:(id)toSession
{
  sessionCopy = session;
  toSessionCopy = toSession;
  observedNavigationSession = [(AppCoordinator *)self observedNavigationSession];
  v10 = sessionCopy;
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

  v13 = toSessionCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  v16 = +[AddressBookManager sharedManager];
  meCard = [v16 meCard];
  identifier = [meCard identifier];

  if (v12 && v15)
  {
    v69 = v15;
    v70 = v13;
    selfCopy = self;
    v73 = observedNavigationSession;
    v74 = v10;
    configuration = [v15 configuration];
    sharedTripPrefetchContext = [configuration sharedTripPrefetchContext];

    configuration2 = [v12 configuration];
    automaticSharingContacts = [configuration2 automaticSharingContacts];
    v68 = sharedTripPrefetchContext;
    [sharedTripPrefetchContext setAutomaticSharingContacts:automaticSharingContacts];

    v78 = objc_alloc_init(NSMutableArray);
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v71 = v12;
    waypointConfiguration = [v12 waypointConfiguration];
    requests = [waypointConfiguration requests];

    obj = requests;
    v24 = identifier;
    v80 = [requests countByEnumeratingWithState:&v81 objects:v91 count:16];
    if (!v80)
    {
      goto LABEL_68;
    }

    v79 = *v82;
    while (1)
    {
      for (i = 0; i != v80; i = i + 1)
      {
        if (*v82 != v79)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v81 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v27 = v26;
        }

        else
        {
          v27 = 0;
        }

        v28 = v27;

        if (v28)
        {
          address = [v28 address];
          isMeCard = [address isMeCard];

          if ((isMeCard & 1) == 0)
          {
            contact = [v28 contact];
            v32 = [MSPSharedTripContact contactsFromCNContact:contact];
            firstObject = [v32 firstObject];

            if (firstObject)
            {
              [v78 addObject:firstObject];
            }

            else
            {
              v34 = sub_10006D178();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                v86 = "[AppCoordinator platformController:willChangeCurrentSessionFromSession:toSession:]";
                v87 = 2080;
                v88 = "AppCoordinator.m";
                v89 = 1024;
                v90 = 173;
                _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
              }

              if (sub_100E03634())
              {
                v35 = sub_10006D178();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                {
                  v36 = +[NSThread callStackSymbols];
                  *buf = 138412290;
                  v86 = v36;
                  _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
                }
              }
            }
          }
        }

        v37 = v26;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v38 = v37;
        }

        else
        {
          v38 = 0;
        }

        v39 = v38;

        if (v39)
        {
          contact2 = [v39 contact];

          if (contact2)
          {
            v41 = [MSPSharedTripContact alloc];
            contact3 = [v39 contact];
            handleIdentifier = [v39 handleIdentifier];
            v44 = [v41 initWithContact:contact3 handle:handleIdentifier];

            if (v44)
            {
              [v78 addObject:v44];
            }

            else
            {
              v45 = sub_10006D178();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                v86 = "[AppCoordinator platformController:willChangeCurrentSessionFromSession:toSession:]";
                v87 = 2080;
                v88 = "AppCoordinator.m";
                v89 = 1024;
                v90 = 184;
                _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
              }

              if (sub_100E03634())
              {
                v46 = sub_10006D178();
                if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
                {
                  v47 = +[NSThread callStackSymbols];
                  *buf = 138412290;
                  v86 = v47;
                  _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
                }
              }
            }
          }
        }

        v48 = v37;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v49 = v48;
        }

        else
        {
          v49 = 0;
        }

        v50 = v49;

        if (v50)
        {
          waypoint = [v50 waypoint];
          findMyHandle = [waypoint findMyHandle];
          contact4 = [findMyHandle contact];

          if (contact4)
          {
            findMyHandle2 = [waypoint findMyHandle];
            contact5 = [findMyHandle2 contact];

            findMyHandle3 = [waypoint findMyHandle];
            identifier2 = [findMyHandle3 identifier];
            goto LABEL_50;
          }

          addressBookAddress = [waypoint addressBookAddress];
          contact5 = [addressBookAddress contact];

          if (contact5)
          {
            findMyHandle3 = [waypoint addressBookAddress];
            contact5 = [findMyHandle3 contact];
            identifier2 = 0;
LABEL_50:

            if (contact5)
            {
              identifier3 = [contact5 identifier];
              v60 = [identifier3 isEqualToString:v24];

              if ((v60 & 1) == 0)
              {
                if (identifier2)
                {
                  firstObject2 = [[MSPSharedTripContact alloc] initWithContact:contact5 handle:identifier2];
                }

                else
                {
                  addressBookAddress2 = [waypoint addressBookAddress];
                  contact6 = [addressBookAddress2 contact];
                  v63 = [MSPSharedTripContact contactsFromCNContact:contact6];
                  firstObject2 = [v63 firstObject];

                  v24 = identifier;
                }

                if (firstObject2)
                {
                  [v78 addObject:firstObject2];
                }

                else
                {
                  v64 = sub_10006D178();
                  if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315650;
                    v86 = "[AppCoordinator platformController:willChangeCurrentSessionFromSession:toSession:]";
                    v87 = 2080;
                    v88 = "AppCoordinator.m";
                    v89 = 1024;
                    v90 = 214;
                    _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
                  }

                  if (sub_100E03634())
                  {
                    v65 = sub_10006D178();
                    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
                    {
                      v66 = +[NSThread callStackSymbols];
                      *buf = 138412290;
                      v86 = v66;
                      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);

                      v24 = identifier;
                    }
                  }
                }
              }
            }
          }

          else
          {
            identifier2 = 0;
          }
        }
      }

      v80 = [obj countByEnumeratingWithState:&v81 objects:v91 count:16];
      if (!v80)
      {
LABEL_68:

        v67 = [v78 copy];
        [v68 setRoutingToContacts:v67];

        observedNavigationSession = v73;
        v10 = v74;
        v12 = v71;
        self = selfCopy;
        v15 = v69;
        v13 = v70;
        break;
      }
    }
  }

  [(AppCoordinator *)self setObservedNavigationSession:v15];
  if (observedNavigationSession && [observedNavigationSession guidanceType] != 2)
  {
    [(AppCoordinator *)self _navigationSessionStopped:observedNavigationSession movingToSession:v13];
  }
}

- (AppCoordinator)initWithPlatformController:(id)controller
{
  controllerCopy = controller;
  v13.receiver = self;
  v13.super_class = AppCoordinator;
  v6 = [(AppCoordinator *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_platformController, controller);
    [(PlatformController *)v7->_platformController registerObserver:v7];
    v8 = [[AppStateManager alloc] initWithPlatformController:v7->_platformController];
    appStateManager = v7->_appStateManager;
    v7->_appStateManager = v8;

    [(AppStateManager *)v7->_appStateManager setAppCoordinator:v7];
    v10 = objc_alloc_init(AnalyticsMonitor);
    analyticsMonitor = v7->_analyticsMonitor;
    v7->_analyticsMonitor = v10;
  }

  return v7;
}

@end