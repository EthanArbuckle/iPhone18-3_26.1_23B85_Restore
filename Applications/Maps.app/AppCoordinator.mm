@interface AppCoordinator
- (ActionCoordination)baseActionCoordinator;
- (AppCoordinator)initWithPlatformController:(id)a3;
- (BOOL)applyPendingActionIfNeeded;
- (BOOL)isNavigationTurnByTurnOrStepping;
- (BOOL)isRoutePlanningPresented;
- (BOOL)pptTestCanResizePlacecard;
- (BOOL)pptTestCanUpdateTrayLayout;
- (BOOL)pptTestHasNextStep;
- (BOOL)pptTestIsTrayType:(int64_t)a3;
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
- (int)_analyticsPipelineTransportModeForMSPTransportType:(int64_t)a3;
- (int64_t)pptTestCurrentStepIndex;
- (void)_displayOrScheduleDisplayOfEnqueuedFixedProblemInvokedAfterWait:(BOOL)a3;
- (void)_navigationSession:(id)a3 didChangeState:(unint64_t)a4;
- (void)_navigationSessionRunning:(id)a3;
- (void)_navigationSessionStopped:(id)a3 movingToSession:(id)a4;
- (void)_openSharedTrip:(id)a3;
- (void)_popNavModeWithCompletion:(id)a3;
- (void)_popSteppingModeWithCompletion:(id)a3;
- (void)_shareItem:(id)a3 presentationOptions:(id)a4 completion:(id)a5;
- (void)addStopWithMapItem:(id)a3;
- (void)addStopWithWaypoint:(id)a3;
- (void)archiveMapsActivity;
- (void)closeSharedTrips;
- (void)continueRideBookingSessionWithApplicationIdentifier:(id)a3;
- (void)dismissLastVenuePlaceCard;
- (void)dismissRidesharingSessionAndReturnToRoutePlanning:(BOOL)a3;
- (void)dismissShareIfNeededAnimated:(BOOL)a3;
- (void)displayClusteredResultsWithConfiguration:(id)a3;
- (void)displayIncidentReportSubmissionWithItem:(id)a3 report:(id)a4;
- (void)displayOrScheduleDisplayOfEnqueuedFixedProblem:(id)a3;
- (void)displayPlaceCardForMapItem:(id)a3 addToHistory:(BOOL)a4 presentationActionSource:(unint64_t)a5;
- (void)displayPlaceCardWithConfiguration:(id)a3;
- (void)displayTransitSchedulesForMapItem:(id)a3 departureSequence:(id)a4;
- (void)displayTransitSchedulesForRouteStep:(id)a3;
- (void)editLocationForParkedCar:(id)a3;
- (void)editUserGuide:(id)a3;
- (void)endNavigationAndReturnToRoutePlanning:(BOOL)a3;
- (void)endNavigationWithCompletion:(id)a3;
- (void)enterFlyoverForMapItem:(id)a3;
- (void)enterLookAroundWithEntryPoint:(id)a3 lookAroundView:(id)a4 showsFullScreen:(BOOL)a5 originFrame:(CGRect)a6;
- (void)enterPedestrianARWithRoute:(id)a3 guidanceObserver:(id)a4;
- (void)enterRouteCreationWithMapItem:(id)a3 completion:(id)a4;
- (void)enterRouteCreationWithRoute:(id)a3 originMapItem:(id)a4 destinationMapItem:(id)a5 userInfo:(id)a6 completion:(id)a7;
- (void)enterRoutePlanningWithDirectionItem:(id)a3 allowToPromptEditing:(BOOL)a4 withUserInfo:(id)a5;
- (void)exitFlyover;
- (void)exitLookAround;
- (void)exitPedestrianAR;
- (void)getCurrentSceneTitleWithCompletion:(id)a3;
- (void)mapsActivityViewControllerPresentRoutingApps:(id)a3;
- (void)mapsActivityViewControllerPrint:(id)a3;
- (void)mapsSession:(id)a3 didChangeState:(unint64_t)a4;
- (void)navigationSession:(id)a3 didChangeCurrentTransportType:(int64_t)a4;
- (void)openAllCuratedCollections;
- (void)openCollection:(id)a3;
- (void)openCuratedCollectionWithIdentifier:(id)a3;
- (void)openCuratedCollectionsList:(id)a3 usingTitle:(id)a4;
- (void)openCuratedGuideWithCollection:(id)a3;
- (void)openGuidesHomeWithGuideLocation:(id)a3;
- (void)openNearbyTransit;
- (void)openParentMapItem:(id)a3;
- (void)openPublisherWithIdentifier:(id)a3;
- (void)openRelatedMapItems:(id)a3 withTitle:(id)a4 originalMapItem:(id)a5 analyticsDelegate:(id)a6;
- (void)openSearch:(id)a3 andResults:(id)a4;
- (void)openSearch:(id)a3 userInfo:(id)a4;
- (void)openSharedTrip:(id)a3;
- (void)openUserProfile;
- (void)openVehicleList;
- (void)openVisitedPlaces;
- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5;
- (void)platformController:(id)a3 willChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5;
- (void)pptSelectACSuggestionMatchingAddress:(id)a3;
- (void)pptSelectFirstCuratedGuide;
- (void)pptSelectFirstGuidePublisher;
- (void)pptSelectSeeAllCuratedCollections;
- (void)pptTestAutocompleteSearchForFieldItem:(id)a3;
- (void)pptTestCreateCustomSearchResultForDroppedPinAtPoint:(CLLocationCoordinate2D)a3 animated:(BOOL)a4;
- (void)pptTestDismissPlaceCardAnimated:(BOOL)a3;
- (void)pptTestDismissTrayAnimated:(BOOL)a3 assertTrayType:(int64_t)a4;
- (void)pptTestDoDirectionItem:(id)a3;
- (void)pptTestEndNavigation;
- (void)pptTestEnterAR;
- (void)pptTestEnterLookAroundWithEntryPoint:(id)a3 lookAroundView:(id)a4 showsFullScreen:(BOOL)a5;
- (void)pptTestEnterSearchMode;
- (void)pptTestExitAR;
- (void)pptTestMaximizePlaceCardAnimated:(BOOL)a3;
- (void)pptTestMediumizePlaceCardAnimated:(BOOL)a3;
- (void)pptTestMinimizePlaceCardAnimated:(BOOL)a3;
- (void)pptTestMoveToNextStep;
- (void)pptTestOpenCollections;
- (void)pptTestOpenFirstCollection;
- (void)pptTestOpenRecents;
- (void)pptTestOpenSettings;
- (void)pptTestPauseRealtimeTransitUpdates;
- (void)pptTestPresentDirectionsDetails;
- (void)pptTestPresentPlaceCardForSearchResult:(id)a3 animated:(BOOL)a4;
- (void)pptTestPresentPlacecardWithMapItem:(id)a3;
- (void)pptTestPresentVenueForMapItem:(id)a3 searchCategory:(id)a4;
- (void)pptTestRefreshSearch;
- (void)pptTestResetForLaunchURL;
- (void)pptTestResumeRealtimeTransitUpdates;
- (void)pptTestSearchCancel;
- (void)pptTestSearchEndEditing;
- (void)pptTestSearchForFieldItem:(id)a3;
- (void)pptTestSearchNearbyCategoryWithIndex:(unint64_t)a3;
- (void)pptTestSearchRetainQueryForSelectedSearchCompletion:(id)a3;
- (void)pptTestSelectVenueSearchResult:(id)a3;
- (void)pptTestStartNavigation;
- (void)pptTestStartTracePlaybackFromPath:(id)a3;
- (void)pptTestTransitionBetweenFullAndLightGuidance;
- (void)pptTestUpdateTrayLayout:(unint64_t)a3 animated:(BOOL)a4;
- (void)presentAlertForMissingSharedTrip:(id)a3;
- (void)presentChinaAlertForSharedTrip:(id)a3;
- (void)presentPOIEnrichmentWithCoordinator:(id)a3;
- (void)presentUnsupportedTransportTypeOrProtocolAlertForSharedTrip:(id)a3;
- (void)setNeedsUserActivityUpdate;
- (void)setObservedNavigationSession:(id)a3;
- (void)setPPTTestDirectionsPlan:(id)a3;
- (void)setPPTTestViewMode:(int64_t)a3 animated:(BOOL)a4;
- (void)shareItem:(id)a3 presentationOptions:(id)a4 completion:(id)a5;
- (void)showFullscreenDirectionsList;
- (void)showOfflineMapRegionSelectorForConfiguration:(id)a3 shouldShowDataManagementAfterDownload:(BOOL)a4 shouldShowDataManagementAfterDownloadIfRegionDiffers:(BOOL)a5;
- (void)showOfflineMapRegionSelectorForRegion:(id)a3 name:(id)a4 pushDataManagementFirst:(BOOL)a5;
- (void)startNavigationWithRouteCollection:(id)a3 navigationDetailsOptions:(NavigationDetailsOptions *)a4;
- (void)startRideBookingSessionWithRideBookingRideOption:(id)a3;
- (void)startSearchModeWithCompletion:(id)a3;
- (void)startTableBookingFlowFromMapItem:(id)a3;
- (void)toggleRecents;
- (void)toggleRoutePlanning;
- (void)viewControllerShowExpiredOfflineMaps:(id)a3;
- (void)viewControllerShowOfflineMaps:(id)a3;
@end

@implementation AppCoordinator

- (BOOL)isNavigationTurnByTurnOrStepping
{
  v3 = [(AppCoordinator *)self observedNavigationSession];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v6 = [(AppCoordinator *)self platformController];
    v7 = +[UIApplication sharedMapsDelegate];
    v8 = [v7 appSessionController];
    v9 = [v8 currentlyNavigatingPlatformController];

    if (v6 != v9)
    {
      v4 = 0;
      LOBYTE(v5) = 0;
      goto LABEL_14;
    }

    v10 = [(AppCoordinator *)self platformController];
    v4 = [v10 currentSession];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v4;
    }

    else
    {
      v11 = 0;
    }

    v5 = v11;

    if (!v5)
    {
      v4 = 0;
      goto LABEL_14;
    }
  }

  LOBYTE(v5) = [v4 navigationType] == 3 || objc_msgSend(v4, "navigationType") == 2 || objc_msgSend(v4, "navigationType") == 4;
LABEL_14:

  return v5;
}

- (BaseModeController)baseModeController
{
  baseModeController = self->_baseModeController;
  if (!baseModeController)
  {
    v4 = [BaseModeController alloc];
    v5 = [(AppCoordinator *)self platformController];
    v6 = [(BaseModeController *)v4 initWithPlatformController:v5];
    v7 = self->_baseModeController;
    self->_baseModeController = v6;

    baseModeController = self->_baseModeController;
  }

  return baseModeController;
}

- (ActionCoordination)baseActionCoordinator
{
  v2 = [(AppCoordinator *)self baseModeController];
  v3 = [v2 actionCoordinator];

  return v3;
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

- (void)pptTestEnterLookAroundWithEntryPoint:(id)a3 lookAroundView:(id)a4 showsFullScreen:(BOOL)a5
{
  v5 = a5;
  v15 = a3;
  v8 = a4;
  v9 = [(AppCoordinator *)self iosBasedChromeViewController];
  v10 = [v9 topContext];

  if ([v10 conformsToProtocol:&OBJC_PROTOCOL___PPTTestLookAroundProtocol])
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12 || ((-[AppCoordinator baseActionCoordinator](self, "baseActionCoordinator"), v10 = objc_claimAutoreleasedReturnValue(), ![v10 conformsToProtocol:&OBJC_PROTOCOL___PPTTestLookAroundProtocol]) ? (v13 = 0) : (v13 = v10), v14 = v13, v10, v14))
  {
    [v10 pptTestEnterLookAroundWithEntryPoint:v15 lookAroundView:v8 showsFullScreen:v5];
  }
}

- (void)pptTestSelectVenueSearchResult:(id)a3
{
  v5 = a3;
  v4 = [(AppCoordinator *)self baseActionCoordinator];
  if ([v4 conformsToProtocol:&OBJC_PROTOCOL___PPTTestVenuesProtocol])
  {
    [v4 pptTestSelectVenueSearchResult:v5];
  }
}

- (void)pptTestPresentVenueForMapItem:(id)a3 searchCategory:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(AppCoordinator *)self baseActionCoordinator];
  if ([v7 conformsToProtocol:&OBJC_PROTOCOL___PPTTestVenuesProtocol])
  {
    [v7 pptTestPresentVenueForMapItem:v8 searchCategory:v6];
  }
}

- (void)pptTestPresentPlacecardWithMapItem:(id)a3
{
  v5 = a3;
  v4 = [(AppCoordinator *)self baseActionCoordinator];
  if ([v4 conformsToProtocol:&OBJC_PROTOCOL___PPTTestVenuesProtocol])
  {
    [v4 pptTestPresentPlacecardWithMapItem:v5];
  }
}

- (id)_pptChromeTrayCoordinatorForCurrentMode
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v4 = [WeakRetained _isCurrentContainerChromeOwned];

  v5 = objc_loadWeakRetained(&self->_chromeViewController);
  v6 = v5;
  if ((v4 & 1) == 0)
  {
    v7 = [v5 topContext];
    baseModeController = self->_baseModeController;

    if (v7 == baseModeController)
    {
      v18 = [(AppCoordinator *)self baseActionCoordinator];
    }

    else
    {
      v9 = objc_loadWeakRetained(&self->_chromeViewController);
      v10 = [v9 topContext];
      navModeController = self->_navModeController;

      if (v10 == navModeController)
      {
        v18 = [(AppCoordinator *)self navActionCoordinator];
      }

      else
      {
        v12 = objc_loadWeakRetained(&self->_chromeViewController);
        v13 = [v12 topContext];
        stepModeController = self->_stepModeController;

        if (v13 == stepModeController)
        {
          v18 = [(AppCoordinator *)self stepActionCoordinator];
        }

        else
        {
          v15 = objc_loadWeakRetained(&self->_chromeViewController);
          v16 = [v15 topContext];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
            v19 = 0;
            v6 = 0;
            goto LABEL_14;
          }

          v18 = [(AppCoordinator *)self lookAroundActionCoordinator];
        }
      }
    }

    v6 = v18;
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
  v2 = [(AppCoordinator *)self _pptChromeTrayCoordinatorForCurrentMode];
  v3 = [v2 pptTestScrollView];

  return v3;
}

- (void)pptTestDismissTrayAnimated:(BOOL)a3 assertTrayType:(int64_t)a4
{
  v5 = a3;
  v6 = [(AppCoordinator *)self _pptChromeTrayCoordinatorForCurrentMode];
  [v6 pptTestDismissTrayAnimated:v5 assertTrayType:a4];
}

- (BOOL)pptTestIsTrayType:(int64_t)a3
{
  v4 = [(AppCoordinator *)self _pptChromeTrayCoordinatorForCurrentMode];
  LOBYTE(a3) = [v4 pptTestIsTrayType:a3];

  return a3;
}

- (void)pptTestUpdateTrayLayout:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = [(AppCoordinator *)self _pptChromeTrayCoordinatorForCurrentMode];
  [v6 pptTestUpdateTrayLayout:a3 animated:v4];
}

- (BOOL)pptTestCanUpdateTrayLayout
{
  v2 = [(AppCoordinator *)self _pptChromeTrayCoordinatorForCurrentMode];
  v3 = [v2 pptTestCanUpdateTrayLayout];

  return v3;
}

- (void)pptTestOpenFirstCollection
{
  v2 = [(AppCoordinator *)self baseActionCoordinator];
  if ([v2 conformsToProtocol:&OBJC_PROTOCOL___PPTTestCollectionsProtocol])
  {
    [v2 pptTestOpenFirstCollection];
  }
}

- (void)pptTestOpenCollections
{
  v2 = [(AppCoordinator *)self baseActionCoordinator];
  if ([v2 conformsToProtocol:&OBJC_PROTOCOL___PPTTestCollectionsProtocol])
  {
    [v2 pptTestOpenCollections];
  }
}

- (void)pptTestExitAR
{
  v2 = [(AppCoordinator *)self baseActionCoordinator];
  if ([v2 conformsToProtocol:&OBJC_PROTOCOL___PPTTestARProtocol])
  {
    [v2 pptTestExitAR];
  }
}

- (void)pptTestEnterAR
{
  v2 = [(AppCoordinator *)self baseActionCoordinator];
  if ([v2 conformsToProtocol:&OBJC_PROTOCOL___PPTTestARProtocol])
  {
    [v2 pptTestEnterAR];
  }
}

- (void)pptTestOpenRecents
{
  v2 = [(AppCoordinator *)self baseActionCoordinator];
  if ([v2 conformsToProtocol:&OBJC_PROTOCOL___PPTTestRecentsProtocol])
  {
    [v2 pptTestOpenRecents];
  }
}

- (UIScrollView)pptTestScrollViewForProactive
{
  v2 = [(AppCoordinator *)self baseActionCoordinator];
  if ([v2 conformsToProtocol:&OBJC_PROTOCOL___PPTTestProactiveProtocol])
  {
    v3 = [v2 pptTestScrollViewForProactive];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)pptTestOpenSettings
{
  v2 = [(AppCoordinator *)self baseActionCoordinator];
  if ([v2 conformsToProtocol:&OBJC_PROTOCOL___PPTTestSettingsProtocol])
  {
    [v2 pptTestOpenSettings];
  }
}

- (void)pptTestStartTracePlaybackFromPath:(id)a3
{
  v4 = a3;
  v5 = [(AppCoordinator *)self chromeViewController];
  [v5 debugController:0 choseTraceAtPath:v4 startNav:1];
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
  v4 = [(AppCoordinator *)self transitNavigationContext];
  v5 = [WeakRetained isTopContext:v4];

  if (v5)
  {
    v6 = [(AppCoordinator *)self transitNavigationContext];
  }

  else
  {
    v6 = [(AppCoordinator *)self stepActionCoordinator];
    if (![v6 conformsToProtocol:&OBJC_PROTOCOL___PPTTestGuidanceStepProtocol])
    {
      v7 = 0;
      goto LABEL_6;
    }
  }

  v7 = [v6 pptTestMoveToBoardStep];
LABEL_6:

  return v7;
}

- (void)pptTestMoveToNextStep
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v4 = [(AppCoordinator *)self transitNavigationContext];
  v5 = [WeakRetained isTopContext:v4];

  if (v5)
  {
    v6 = [(AppCoordinator *)self transitNavigationContext];
  }

  else
  {
    v8 = [(AppCoordinator *)self stepActionCoordinator];
    v7 = [v8 conformsToProtocol:&OBJC_PROTOCOL___PPTTestGuidanceStepProtocol];
    v6 = v8;
    if (!v7)
    {
      goto LABEL_5;
    }
  }

  v9 = v6;
  [v6 pptTestMoveToNextStep];
  v6 = v9;
LABEL_5:
}

- (BOOL)pptTestHasNextStep
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v4 = [(AppCoordinator *)self transitNavigationContext];
  v5 = [WeakRetained isTopContext:v4];

  if (v5)
  {
    v6 = [(AppCoordinator *)self transitNavigationContext];
  }

  else
  {
    v6 = [(AppCoordinator *)self stepActionCoordinator];
    if (![v6 conformsToProtocol:&OBJC_PROTOCOL___PPTTestGuidanceStepProtocol])
    {
      v7 = 0;
      goto LABEL_6;
    }
  }

  v7 = [v6 pptTestHasNextStep];
LABEL_6:

  return v7;
}

- (int64_t)pptTestCurrentStepIndex
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v4 = [(AppCoordinator *)self transitNavigationContext];
  v5 = [WeakRetained isTopContext:v4];

  if (v5)
  {
    v6 = [(AppCoordinator *)self transitNavigationContext];
  }

  else
  {
    v6 = [(AppCoordinator *)self stepActionCoordinator];
    if (![v6 conformsToProtocol:&OBJC_PROTOCOL___PPTTestGuidanceStepProtocol])
    {
      v7 = 0;
      goto LABEL_6;
    }
  }

  v7 = [v6 pptTestCurrentStepIndex];
LABEL_6:

  return v7;
}

- (BOOL)pptTestSupportStepping
{
  v3 = [(AppCoordinator *)self chromeViewController];
  if ([v3 isTopContext:self->_stepModeController])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(AppCoordinator *)self chromeViewController];
    v6 = [(AppCoordinator *)self transitNavigationContext];
    v4 = [v5 isTopContext:v6];
  }

  return v4;
}

- (void)pptTestTransitionBetweenFullAndLightGuidance
{
  v2 = [(AppCoordinator *)self navActionCoordinator];
  if ([v2 conformsToProtocol:&OBJC_PROTOCOL___PPTTestNavigationProtocol])
  {
    [v2 pptTestTransitionBetweenFullAndLightGuidance];
  }
}

- (void)pptTestEndNavigation
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v4 = [(AppCoordinator *)self transitNavigationContext];
  v5 = [WeakRetained isTopContext:v4];

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
  v2 = [(AppCoordinator *)self baseActionCoordinator];
  if ([v2 conformsToProtocol:&OBJC_PROTOCOL___PPTTestNavigationProtocol])
  {
    [v2 pptTestStartNavigation];
  }
}

- (void)pptTestDoDirectionItem:(id)a3
{
  v5 = a3;
  v4 = [(AppCoordinator *)self baseActionCoordinator];
  if ([v4 conformsToProtocol:&OBJC_PROTOCOL___PPTTestGuidanceProtocol])
  {
    [v4 pptTestDoDirectionItem:v5];
  }
}

- (UIScrollView)pptTestScrollViewForDirectionsDetails
{
  v2 = [(AppCoordinator *)self baseActionCoordinator];
  if ([v2 conformsToProtocol:&OBJC_PROTOCOL___PPTTestDirectionsDetailsProtocol])
  {
    v3 = [v2 pptTestScrollViewForDirectionsDetails];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (UIViewController)pptTestContaineeForDirectionsDetails
{
  v2 = [(AppCoordinator *)self baseActionCoordinator];
  if ([v2 conformsToProtocol:&OBJC_PROTOCOL___PPTTestDirectionsDetailsProtocol])
  {
    v3 = [v2 pptTestContaineeForDirectionsDetails];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)pptTestPresentDirectionsDetails
{
  v2 = [(AppCoordinator *)self baseActionCoordinator];
  if ([v2 conformsToProtocol:&OBJC_PROTOCOL___PPTTestDirectionsDetailsProtocol])
  {
    [v2 pptTestPresentDirectionsDetails];
  }
}

- (void)setPPTTestDirectionsPlan:(id)a3
{
  v5 = a3;
  v4 = [(AppCoordinator *)self appStateManager];
  if ([v4 conformsToProtocol:&OBJC_PROTOCOL___PPTTestRouteProtocol])
  {
    [v4 setPPTTestDirectionsPlan:v5];
  }
}

- (void)pptTestCreateCustomSearchResultForDroppedPinAtPoint:(CLLocationCoordinate2D)a3 animated:(BOOL)a4
{
  v4 = a4;
  longitude = a3.longitude;
  latitude = a3.latitude;
  v7 = [(AppCoordinator *)self baseActionCoordinator];
  if ([v7 conformsToProtocol:&OBJC_PROTOCOL___PPTTestETAProtocol])
  {
    [v7 pptTestCreateCustomSearchResultForDroppedPinAtPoint:v4 animated:{latitude, longitude}];
  }
}

- (void)pptSelectACSuggestionMatchingAddress:(id)a3
{
  v5 = a3;
  v4 = [(AppCoordinator *)self baseActionCoordinator];
  if ([v4 conformsToProtocol:&OBJC_PROTOCOL___PPTTestSearchProtocol])
  {
    [v4 pptSelectACSuggestionMatchingAddress:v5];
  }
}

- (void)pptSelectFirstGuidePublisher
{
  v2 = [(AppCoordinator *)self baseActionCoordinator];
  if ([v2 conformsToProtocol:&OBJC_PROTOCOL___PPTTestSearchProtocol])
  {
    [v2 pptSelectFirstGuidePublisher];
  }
}

- (void)pptSelectSeeAllCuratedCollections
{
  v2 = [(AppCoordinator *)self baseActionCoordinator];
  if ([v2 conformsToProtocol:&OBJC_PROTOCOL___PPTTestSearchProtocol])
  {
    [v2 pptSelectSeeAllCuratedCollections];
  }
}

- (void)pptSelectFirstCuratedGuide
{
  v2 = [(AppCoordinator *)self baseActionCoordinator];
  if ([v2 conformsToProtocol:&OBJC_PROTOCOL___PPTTestSearchProtocol])
  {
    [v2 pptSelectFirstCuratedGuide];
  }
}

- (void)pptTestSearchCancel
{
  v2 = [(AppCoordinator *)self baseActionCoordinator];
  if ([v2 conformsToProtocol:&OBJC_PROTOCOL___PPTTestSearchProtocol])
  {
    [v2 pptTestSearchCancel];
  }
}

- (void)pptTestEnterSearchMode
{
  v2 = [(AppCoordinator *)self baseActionCoordinator];
  if ([v2 conformsToProtocol:&OBJC_PROTOCOL___PPTTestSearchProtocol])
  {
    [v2 pptTestEnterSearchMode];
  }
}

- (void)pptTestRefreshSearch
{
  v2 = [(AppCoordinator *)self baseActionCoordinator];
  if ([v2 conformsToProtocol:&OBJC_PROTOCOL___PPTTestSearchProtocol])
  {
    [v2 pptTestRefreshSearch];
  }
}

- (void)pptTestSearchForFieldItem:(id)a3
{
  v5 = a3;
  v4 = [(AppCoordinator *)self baseActionCoordinator];
  if ([v4 conformsToProtocol:&OBJC_PROTOCOL___PPTTestSearchProtocol])
  {
    [v4 pptTestSearchForFieldItem:v5];
  }
}

- (void)pptTestSearchEndEditing
{
  v2 = [(AppCoordinator *)self baseActionCoordinator];
  if ([v2 conformsToProtocol:&OBJC_PROTOCOL___PPTTestSearchProtocol])
  {
    [v2 pptTestSearchEndEditing];
  }
}

- (void)pptTestAutocompleteSearchForFieldItem:(id)a3
{
  v5 = a3;
  v4 = [(AppCoordinator *)self baseActionCoordinator];
  if ([v4 conformsToProtocol:&OBJC_PROTOCOL___PPTTestSearchProtocol])
  {
    [v4 pptTestAutocompleteSearchForFieldItem:v5];
  }
}

- (void)pptTestSearchNearbyCategoryWithIndex:(unint64_t)a3
{
  v4 = [(AppCoordinator *)self baseActionCoordinator];
  if ([v4 conformsToProtocol:&OBJC_PROTOCOL___PPTTestSearchProtocol])
  {
    [v4 pptTestSearchNearbyCategoryWithIndex:a3];
  }
}

- (void)pptTestSearchRetainQueryForSelectedSearchCompletion:(id)a3
{
  v5 = a3;
  v4 = [(AppCoordinator *)self baseActionCoordinator];
  if ([v4 conformsToProtocol:&OBJC_PROTOCOL___PPTTestSearchProtocol])
  {
    [v4 pptTestSearchRetainQueryForSelectedSearchCompletion:v5];
  }
}

- (void)pptTestDismissPlaceCardAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(AppCoordinator *)self baseActionCoordinator];
  if ([v4 conformsToProtocol:&OBJC_PROTOCOL___PPTTestPlaceCardProtocol])
  {
    [v4 pptTestDismissPlaceCardAnimated:v3];
  }
}

- (void)pptTestMediumizePlaceCardAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(AppCoordinator *)self baseActionCoordinator];
  if ([v4 conformsToProtocol:&OBJC_PROTOCOL___PPTTestPlaceCardProtocol])
  {
    [v4 pptTestMediumizePlaceCardAnimated:v3];
  }
}

- (void)pptTestMinimizePlaceCardAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(AppCoordinator *)self baseActionCoordinator];
  if ([v4 conformsToProtocol:&OBJC_PROTOCOL___PPTTestPlaceCardProtocol])
  {
    [v4 pptTestMinimizePlaceCardAnimated:v3];
  }
}

- (void)pptTestMaximizePlaceCardAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(AppCoordinator *)self baseActionCoordinator];
  if ([v4 conformsToProtocol:&OBJC_PROTOCOL___PPTTestPlaceCardProtocol])
  {
    [v4 pptTestMaximizePlaceCardAnimated:v3];
  }
}

- (BOOL)pptTestCanResizePlacecard
{
  v2 = [(AppCoordinator *)self baseActionCoordinator];
  if ([v2 conformsToProtocol:&OBJC_PROTOCOL___PPTTestPlaceCardProtocol])
  {
    v3 = [v2 pptTestCanResizePlacecard];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)pptTestPresentPlaceCardForSearchResult:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v6 = [(AppCoordinator *)self baseActionCoordinator];
  if ([v6 conformsToProtocol:&OBJC_PROTOCOL___PPTTestPlaceCardProtocol])
  {
    [v6 pptTestPresentPlaceCardForSearchResult:v7 animated:v4];
  }
}

- (void)pptTestResetForLaunchURL
{
  v2 = [(AppCoordinator *)self chromeViewController];
  [v2 resetForLaunchURLWithOptions:0];
}

- (void)setPPTTestViewMode:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = [(AppCoordinator *)self chromeViewController];
  [v6 updateViewMode:a3 animated:v4];
}

- (MKMapView)mapViewForPPTTest
{
  v2 = [(AppCoordinator *)self chromeViewController];
  v3 = [v2 mapView];

  return v3;
}

- (void)displayClusteredResultsWithConfiguration:(id)a3
{
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v5 = [WeakRetained topContext];

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
    [(ClusteredResultsContext *)v7 updateWithConfiguration:v9];
  }

  else
  {
    v5 = [[_TtC4Maps23ClusteredResultsContext alloc] initWithConfiguration:v9];
    v8 = objc_loadWeakRetained(&self->_chromeViewController);
    [v8 pushContext:v5 animated:1 completion:0];
  }
}

- (void)displayPlaceCardWithConfiguration:(id)a3
{
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v5 = [WeakRetained topContext];

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
    [(PlaceCardContext *)v7 updateConfiguration:v9];
  }

  else
  {
    v5 = [[_TtC4Maps16PlaceCardContext alloc] initWithConfiguration:v9];
    v8 = objc_loadWeakRetained(&self->_chromeViewController);
    [v8 pushContext:v5 animated:1 completion:0];
  }
}

- (void)dismissLastVenuePlaceCard
{
  v2 = [(AppCoordinator *)self baseActionCoordinator];
  [v2 dismissLastVenuePlaceCard];
}

- (void)displayPlaceCardForMapItem:(id)a3 addToHistory:(BOOL)a4 presentationActionSource:(unint64_t)a5
{
  v6 = a4;
  v8 = a3;
  v9 = [(AppCoordinator *)self baseActionCoordinator];
  [v9 viewController:0 selectMapItem:v8 address:0 addToHistory:v6 source:a5];
}

- (void)exitPedestrianAR
{
  v3 = [(AppCoordinator *)self chromeViewController];
  v4 = [v3 topContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(AppCoordinator *)self chromeViewController];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10062C400;
    v8[3] = &unk_101661B18;
    v8[4] = self;
    [v6 popContextAnimated:1 completion:v8];

    v7 = [(AppCoordinator *)self chromeViewController];
    [v7 commitCoordinatedContextChange];
  }
}

- (void)enterPedestrianARWithRoute:(id)a3 guidanceObserver:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = [(AppCoordinator *)self chromeViewController];
  v8 = [v7 topContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v10 = [PedestrianARContext alloc];
    v11 = [(AppCoordinator *)self platformController];
    v12 = +[MNNavigationService sharedService];
    v13 = [(PedestrianARContext *)v10 initWithRoute:v16 platformController:v11 guidanceObserver:v6 navigationService:v12];

    v14 = [(AppCoordinator *)self chromeViewController];
    [v14 pushContext:v13 animated:1 completion:0];

    v15 = [(AppCoordinator *)self chromeViewController];
    [v15 commitCoordinatedContextChange];
  }
}

- (void)exitLookAround
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v4 = [WeakRetained topContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = objc_loadWeakRetained(&self->_chromeViewController);
    v7 = [v6 topContext];

    v8 = objc_loadWeakRetained(&self->_chromeViewController);
    v9 = [v8 mapView];

    v10 = [v7 lookAroundView];
    [v10 setNavigatingEnabled:0];
    [v10 setPanningEnabled:0];
    [v10 setZoomingEnabled:0];
    [v10 setShowsRoadLabels:0];
    [v10 setShowsPointLabels:0];
    if (![v10 hasEnteredLookAround])
    {
      v16 = 0;
LABEL_15:
      v26 = objc_loadWeakRetained(&self->_chromeViewController);
      [v26 popContextAnimated:1 completion:v16];

      v27 = [v7 actionCoordinator];
      [v27 setAppCoordinator:0];

      return;
    }

    v11 = [v10 mapItem];
    if (!v11)
    {
      [v9 centerCoordinate];
      v18 = v17;
      v20 = v19;
      v21 = [(AppCoordinator *)self baseActionCoordinator];
      [v21 clearSearch];

      v22 = [(AppCoordinator *)self baseActionCoordinator];
      [v22 presentSearchAnimated:0];

      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_10062C978;
      v33[3] = &unk_1016575B0;
      v34 = v9;
      v35 = v18;
      v36 = v20;
      v16 = objc_retainBlock(v33);
      v14 = v34;
LABEL_14:

      goto LABEL_15;
    }

    v12 = [(AppCoordinator *)self baseActionCoordinator];
    v13 = [v12 currentMapItem];
    v14 = [v13 _geoMapItem];

    v15 = [v11 _geoMapItem];
    if (GEOMapItemIsEqualToMapItemForPurpose())
    {
      goto LABEL_5;
    }

    if (sub_10000FA08(v9) == 5)
    {
      if (sub_10000FA08(v9) != 5)
      {
LABEL_5:
        [v11 _coordinate];
        [v9 setCenterCoordinate:1 animated:?];
        v16 = 0;
LABEL_13:

        goto LABEL_14;
      }

      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10062CA00;
      v28[3] = &unk_101661A90;
      v28[4] = self;
      v29 = v11;
      v16 = objc_retainBlock(v28);
      v23 = v29;
    }

    else
    {
      [v9 _deselectLabelMarkerAnimated:1];
      v24 = [(AppCoordinator *)self baseActionCoordinator];
      [v24 clearSearch];

      v25 = [(AppCoordinator *)self baseActionCoordinator];
      [v25 presentSearchAnimated:0];

      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_10062C98C;
      v30[3] = &unk_101661A90;
      v31 = v11;
      v32 = self;
      v16 = objc_retainBlock(v30);
      v23 = v31;
    }

    goto LABEL_13;
  }
}

- (void)enterLookAroundWithEntryPoint:(id)a3 lookAroundView:(id)a4 showsFullScreen:(BOOL)a5 originFrame:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v10 = a5;
  v20 = a3;
  v13 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v15 = [WeakRetained topContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v17 = [[LookAroundModeController alloc] initWithEntryPoint:v20 lookAroundView:v13 showsFullScreen:v10 originFrame:x, y, width, height];
    v18 = [(LookAroundModeController *)v17 actionCoordinator];
    [v18 setAppCoordinator:self];
    v19 = objc_loadWeakRetained(&self->_chromeViewController);
    [v19 pushContext:v17 animated:1 completion:0];
  }
}

- (id)lookAroundActionCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v4 = [WeakRetained topContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = objc_loadWeakRetained(&self->_chromeViewController);
    v7 = [v6 topContext];

    v8 = [v7 actionCoordinator];
  }

  else
  {
    v9 = sub_100798614();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_loadWeakRetained(&self->_chromeViewController);
      v11 = [v10 topContext];
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v15 = 138412290;
      v16 = v13;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Error: lookAroundActionCoordinator requested while topContext=%@", &v15, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

- (void)presentAlertForMissingSharedTrip:(id)a3
{
  v4 = a3;
  v5 = +[NSBundle mainBundle];
  v11 = [v5 localizedStringForKey:@"OK [Alert dismissal]" value:@"localized string not found" table:0];

  v6 = [v4 alertTitleForDisallowedDetails];
  v7 = [v4 alertMessageForClosedTrip];

  v8 = [UIAlertController alertControllerWithTitle:v6 message:v7 preferredStyle:1];

  v9 = [UIAlertAction actionWithTitle:v11 style:0 handler:0];
  [v8 addAction:v9];

  v10 = [(AppCoordinator *)self chromeViewController];
  [v10 _maps_topMostPresentViewController:v8 animated:1 completion:0];
}

- (void)presentUnsupportedTransportTypeOrProtocolAlertForSharedTrip:(id)a3
{
  v4 = a3;
  v5 = +[NSBundle mainBundle];
  v11 = [v5 localizedStringForKey:@"OK [Alert dismissal]" value:@"localized string not found" table:0];

  v6 = [v4 alertTitleForDisallowedDetails];
  v7 = [v4 alertMessageForTransportOrProtocolError];

  v8 = [UIAlertController alertControllerWithTitle:v6 message:v7 preferredStyle:1];

  v9 = [UIAlertAction actionWithTitle:v11 style:0 handler:0];
  [v8 addAction:v9];

  v10 = [(AppCoordinator *)self chromeViewController];
  [v10 _maps_topMostPresentViewController:v8 animated:1 completion:0];
}

- (void)presentChinaAlertForSharedTrip:(id)a3
{
  v4 = a3;
  v5 = +[NSBundle mainBundle];
  v11 = [v5 localizedStringForKey:@"OK [Alert dismissal]" value:@"localized string not found" table:0];

  v6 = [v4 alertTitleForDisallowedDetails];
  v7 = [v4 alertMessageForChinaError];

  v8 = [UIAlertController alertControllerWithTitle:v6 message:v7 preferredStyle:1];

  v9 = [UIAlertAction actionWithTitle:v11 style:0 handler:0];
  [v8 addAction:v9];

  v10 = [(AppCoordinator *)self chromeViewController];
  [v10 _maps_topMostPresentViewController:v8 animated:1 completion:0];
}

- (void)closeSharedTrips
{
  v3 = [(AppCoordinator *)self chromeViewController];
  v4 = [v3 traitCollection];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 5)
  {
    v10 = [(AppCoordinator *)self baseModeController];
    [v10 showSharedTrip:0];
  }

  else
  {
    v6 = [(AppCoordinator *)self chromeViewController];
    v7 = [v6 contexts];
    v8 = [v7 lastObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      return;
    }

    v10 = [(AppCoordinator *)self chromeViewController];
    [v10 popContextAnimated:1 completion:0];
  }
}

- (void)openSharedTrip:(id)a3
{
  v4 = a3;
  v5 = sub_1000946AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
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
      v9 = [(AppCoordinator *)v6 performSelector:"accessibilityIdentifier"];
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
    v12 = [v4 groupIdentifier];
    *buf = 138544386;
    v19 = v11;
    v20 = 2112;
    v21 = v12;
    v22 = 2048;
    v23 = [v4 transportType];
    v24 = 2048;
    v25 = [v4 protocolVersion];
    v26 = 1024;
    v27 = [v4 referenceFrame];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Refreshing shared trip: %@, transportType: %lu, protocolVersion: %lu, referenceFrame: %d", buf, 0x30u);
  }

  objc_initWeak(buf, self);
  v13 = +[MSPSharedTripService sharedInstance];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10062D494;
  v15[3] = &unk_101653948;
  v14 = v4;
  v16 = v14;
  objc_copyWeak(&v17, buf);
  [v13 refreshReceivedTripsWithCompletion:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
}

- (void)_openSharedTrip:(id)a3
{
  v4 = a3;
  if (MSPSharedTripReceivingAvailable())
  {
    v5 = sub_1000946AC();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
LABEL_12:

      if (v4)
      {
        if ([(__CFString *)v4 disallowDetailsForChina])
        {
          v13 = sub_1000946AC();
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
LABEL_48:

            [(AppCoordinator *)self presentChinaAlertForSharedTrip:v4];
            goto LABEL_59;
          }

          v14 = self;
          if (!v14)
          {
            v19 = @"<nil>";
            goto LABEL_47;
          }

          v15 = objc_opt_class();
          v16 = NSStringFromClass(v15);
          if (objc_opt_respondsToSelector())
          {
            v17 = [(AppCoordinator *)v14 performSelector:"accessibilityIdentifier"];
            v18 = v17;
            if (v17 && ![v17 isEqualToString:v16])
            {
              v19 = [NSString stringWithFormat:@"%@<%p, %@>", v16, v14, v18];

              goto LABEL_21;
            }
          }

          v19 = [NSString stringWithFormat:@"%@<%p>", v16, v14];
LABEL_21:

LABEL_47:
          *buf = 138543618;
          v50 = v19;
          v51 = 2112;
          v52 = v4;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[%{public}@] Shared trip is not allowed for China: %@", buf, 0x16u);

          goto LABEL_48;
        }

        if ([(__CFString *)v4 disallowDetailsForTransportType])
        {
          v20 = sub_1000946AC();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v21 = self;
            if (!v21)
            {
              v26 = @"<nil>";
              goto LABEL_51;
            }

            v22 = objc_opt_class();
            v23 = NSStringFromClass(v22);
            if (objc_opt_respondsToSelector())
            {
              v24 = [(AppCoordinator *)v21 performSelector:"accessibilityIdentifier"];
              v25 = v24;
              if (v24 && ![v24 isEqualToString:v23])
              {
                v26 = [NSString stringWithFormat:@"%@<%p, %@>", v23, v21, v25];

                goto LABEL_30;
              }
            }

            v26 = [NSString stringWithFormat:@"%@<%p>", v23, v21];
LABEL_30:

LABEL_51:
            v37 = v26;
            v38 = [(__CFString *)v4 transportType];
            if (v38 >= 7)
            {
              v39 = [NSString stringWithFormat:@"(unknown: %i)", v38];
            }

            else
            {
              v39 = off_1016245D0[v38];
            }

            UInteger = GEOConfigGetUInteger();
            *buf = 138544130;
            v50 = v37;
            v51 = 2112;
            v52 = v39;
            v53 = 2048;
            v54 = UInteger;
            v55 = 2112;
            v56 = v4;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "[%{public}@] Shared trip is not allowed for transport type: %@. Allowed transport type bitmask: %lu. Trip: %@", buf, 0x2Au);
          }

LABEL_58:

          [(AppCoordinator *)self presentUnsupportedTransportTypeOrProtocolAlertForSharedTrip:v4];
          goto LABEL_59;
        }

        if ([(__CFString *)v4 disallowDetailsForProtocolVersion])
        {
          v20 = sub_1000946AC();
          if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_58;
          }

          v27 = self;
          if (!v27)
          {
            v32 = @"<nil>";
            goto LABEL_57;
          }

          v28 = objc_opt_class();
          v29 = NSStringFromClass(v28);
          if (objc_opt_respondsToSelector())
          {
            v30 = [(AppCoordinator *)v27 performSelector:"accessibilityIdentifier"];
            v31 = v30;
            if (v30 && ![v30 isEqualToString:v29])
            {
              v32 = [NSString stringWithFormat:@"%@<%p, %@>", v29, v27, v31];

              goto LABEL_39;
            }
          }

          v32 = [NSString stringWithFormat:@"%@<%p>", v29, v27];
LABEL_39:

LABEL_57:
          v41 = [(__CFString *)v4 protocolVersion];
          v42 = GEOConfigGetUInteger();
          *buf = 138544130;
          v50 = v32;
          v51 = 2048;
          v52 = v41;
          v53 = 2048;
          v54 = v42;
          v55 = 2112;
          v56 = v4;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "[%{public}@] Shared trip protocol (%lu) is greater than ours (%lu). Trip: %@", buf, 0x2Au);

          goto LABEL_58;
        }
      }

      v33 = [(AppCoordinator *)self chromeViewController];
      if (sub_10000FA08(v33) == 5)
      {
        if (!v4)
        {
LABEL_45:

          goto LABEL_59;
        }

        v34 = [(AppCoordinator *)self chromeViewController];
        v46[0] = _NSConcreteStackBlock;
        v46[1] = 3221225472;
        v46[2] = sub_10062DD6C;
        v46[3] = &unk_101661A40;
        v46[4] = self;
        v47 = v33;
        v48 = v4;
        [v34 popToRootContextAnimated:1 completion:v46];

        v35 = v47;
      }

      else
      {
        v36 = [(AppCoordinator *)self chromeViewController];
        v43[0] = _NSConcreteStackBlock;
        v43[1] = 3221225472;
        v43[2] = sub_10062DF3C;
        v43[3] = &unk_10162FBD8;
        v44 = v4;
        v45 = self;
        [v36 scheduleCoordinatedContextChange:v43 completionHandler:0];

        v35 = v44;
      }

      goto LABEL_45;
    }

    v6 = self;
    if (!v6)
    {
      v11 = @"<nil>";
      goto LABEL_11;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(AppCoordinator *)v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_9;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_9:

LABEL_11:
    v12 = [(__CFString *)v4 groupIdentifier];
    *buf = 138544386;
    v50 = v11;
    v51 = 2112;
    v52 = v12;
    v53 = 2048;
    v54 = [(__CFString *)v4 transportType];
    v55 = 2048;
    v56 = [(__CFString *)v4 protocolVersion];
    v57 = 1024;
    v58 = [(__CFString *)v4 referenceFrame];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Opening shared trip: %@, transportType: %lu, protocolVersion: %lu, referenceFrame: %d", buf, 0x30u);

    goto LABEL_12;
  }

LABEL_59:
}

- (void)_displayOrScheduleDisplayOfEnqueuedFixedProblemInvokedAfterWait:(BOOL)a3
{
  if (self->_fixedProblemCompletion)
  {
    WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
    v6 = [WeakRetained topContext];
    v7 = [(AppCoordinator *)self baseModeController];

    if (v6 == v7)
    {
      v8 = objc_retainBlock(self->_fixedProblemCompletion);
      v9 = objc_loadWeakRetained(&self->_chromeViewController);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10062E1A8;
      v12[3] = &unk_1016610E0;
      v13 = v8;
      v14 = a3;
      v10 = v8;
      [v9 dismissAllModalViewsIfPresentAnimated:1 completion:v12];

      fixedProblemCompletion = self->_fixedProblemCompletion;
      self->_fixedProblemCompletion = 0;
    }
  }
}

- (void)displayOrScheduleDisplayOfEnqueuedFixedProblem:(id)a3
{
  v4 = [a3 copy];
  fixedProblemCompletion = self->_fixedProblemCompletion;
  self->_fixedProblemCompletion = v4;

  [(AppCoordinator *)self _displayOrScheduleDisplayOfEnqueuedFixedProblemInvokedAfterWait:0];
}

- (void)dismissShareIfNeededAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(AppCoordinator *)self chromeViewController];
  v6 = [v5 presentedViewController];
  shareViewController = self->_shareViewController;

  if (v6 == shareViewController)
  {
    v8 = [(AppCoordinator *)self chromeViewController];
    [v8 dismissViewControllerAnimated:v3 completion:0];
  }

  v9 = self->_shareViewController;
  self->_shareViewController = 0;
}

- (void)mapsActivityViewControllerPresentRoutingApps:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v5 = [WeakRetained topContext];
  v6 = [(AppCoordinator *)self baseModeController];

  if (v5 == v6)
  {
    v7 = [(AppCoordinator *)self baseActionCoordinator];
    [v7 presentRoutePlanningViewType:6];
  }
}

- (void)mapsActivityViewControllerPrint:(id)a3
{
  v10 = a3;
  v4 = [v10 shareItem];
  if ([v4 conformsToProtocol:&OBJC_PROTOCOL___ShareItemSource])
  {
    v5 = [v10 shareItem];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [v10 shareItem];
      v8 = [v7 routeForPrinting];

      if (v8)
      {
        v9 = [(AppCoordinator *)self chromeViewController];
        [v9 printRoute:v8];
        goto LABEL_7;
      }
    }
  }

  else
  {
  }

  v8 = [(AppCoordinator *)self chromeViewController];
  v9 = +[SearchSession currentSearchSession];
  [v8 printSearchResultFromSession:v9];
LABEL_7:
}

- (MKMapView)mapsActivityMapView
{
  v2 = [(AppCoordinator *)self chromeViewController];
  v3 = [v2 mapView];

  return v3;
}

- (void)setNeedsUserActivityUpdate
{
  v2 = [(AppCoordinator *)self mapsSceneDelegate];
  [v2 setNeedsUserActivityUpdate];
}

- (void)archiveMapsActivity
{
  v2 = [(AppCoordinator *)self mapsSceneDelegate];
  [v2 archiveMapsActivity];
}

- (void)editLocationForParkedCar:(id)a3
{
  v4 = a3;
  v5 = [(AppCoordinator *)self baseActionCoordinator];
  [v5 viewController:0 editLocationForParkedCar:v4];
}

- (void)startTableBookingFlowFromMapItem:(id)a3
{
  v4 = a3;
  v6 = [[PlaceCardItem alloc] initWithMapItem:v4];

  v5 = [(AppCoordinator *)self baseActionCoordinator];
  [v5 viewController:0 displayTableBookingFor:v6];
}

- (void)_shareItem:(id)a3 presentationOptions:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [[MapsActivityViewController alloc] initWithShareItem:v10];

  [(MapsActivityViewController *)v11 setMapsActivityDelegate:self];
  objc_storeStrong(&self->_shareViewController, v11);
  v12 = [v8 sourceView];

  if (v12)
  {
    v13 = [v8 sourceView];
    v14 = [(MapsActivityViewController *)v11 popoverPresentationController];
    [v14 setSourceView:v13];
  }

  else
  {
    v15 = [v8 sourceItem];

    if (v15)
    {
      v13 = [v8 sourceItem];
      v14 = [(MapsActivityViewController *)v11 popoverPresentationController];
      [v14 setSourceItem:v13];
    }

    else
    {
      v16 = [(AppCoordinator *)self chromeViewController];
      v13 = [v16 view];

      [v13 bounds];
      MidX = CGRectGetMidX(v24);
      [v13 bounds];
      MidY = CGRectGetMidY(v25);
      v19 = [(MapsActivityViewController *)v11 popoverPresentationController];
      [v19 setSourceView:v13];

      v14 = [(MapsActivityViewController *)v11 popoverPresentationController];
      [v14 setSourceRect:{MidX, MidY, 1.0, 1.0}];
    }
  }

  v20 = [(AppCoordinator *)self chromeViewController];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10062E864;
  v22[3] = &unk_101661760;
  v23 = v9;
  v21 = v9;
  [v20 _maps_topMostPresentViewController:v11 animated:1 completion:v22];
}

- (void)shareItem:(id)a3 presentationOptions:(id)a4 completion:(id)a5
{
  if (a3)
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
  v4 = [WeakRetained topContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = objc_loadWeakRetained(&self->_chromeViewController);
    [v6 popContextAnimated:1 completion:0];
  }
}

- (void)enterFlyoverForMapItem:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v6 = [WeakRetained _currentContainerViewController];
  [v6 setContaineesHidden:1];

  v9 = [[FlyoverModeController alloc] initWithMapItem:v4];
  v7 = [(FlyoverModeController *)v9 actionCoordinator];
  [v7 setAppCoordinator:self];
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

- (void)dismissRidesharingSessionAndReturnToRoutePlanning:(BOOL)a3
{
  v3 = a3;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10062EDEC;
  v14[3] = &unk_101661B18;
  v14[4] = self;
  v5 = objc_retainBlock(v14);
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v7 = WeakRetained;
  if (v3)
  {
    v8 = [WeakRetained topContext];
    v9 = [(AppCoordinator *)self ridesharingModeController];

    if (v8 == v9)
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

    v10 = [(AppCoordinator *)self platformController];
    [v10 clearSessions];
  }
}

- (void)continueRideBookingSessionWithApplicationIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[RidesharingModeController alloc] initWithApplicationIdentifier:v4];

  ridesharingModeController = self->_ridesharingModeController;
  self->_ridesharingModeController = v5;
  v7 = v5;

  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  [WeakRetained pushContext:v7 animated:1 completion:0];
}

- (void)startRideBookingSessionWithRideBookingRideOption:(id)a3
{
  v4 = a3;
  v5 = [[RidesharingModeController alloc] initWithRideOption:v4];

  ridesharingModeController = self->_ridesharingModeController;
  self->_ridesharingModeController = v5;
  v7 = v5;

  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  [WeakRetained pushContext:v7 animated:1 completion:0];
}

- (void)displayIncidentReportSubmissionWithItem:(id)a3 report:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AppCoordinator *)self baseActionCoordinator];
  [v8 displayIncidentReportSubmissionWithItem:v7 report:v6];
}

- (void)displayTransitSchedulesForRouteStep:(id)a3
{
  v4 = a3;
  v6 = [[_TtC4Maps23TransitSchedulesContext alloc] initWithRouteStep:v4];

  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  [WeakRetained pushContext:v6 animated:1 completion:0];
}

- (void)displayTransitSchedulesForMapItem:(id)a3 departureSequence:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [[_TtC4Maps23TransitSchedulesContext alloc] initWithMapItem:v7 departureSequence:v6];

  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  [WeakRetained pushContext:v9 animated:1 completion:0];
}

- (void)_popSteppingModeWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_100035E6C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
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
      v9 = [(AppCoordinator *)v6 performSelector:"accessibilityIdentifier"];
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
    *buf = 138543362;
    v36 = v11;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Popping step mode", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v13 = [WeakRetained topContext];
  v14 = v13;
  if (v13 == self->_stepModeController)
  {

    goto LABEL_22;
  }

  v15 = objc_loadWeakRetained(&self->_chromeViewController);
  v16 = [v15 topContext];
  transitNavigationContext = self->_transitNavigationContext;

  if (v16 == transitNavigationContext)
  {
LABEL_22:
    v27 = [(AppCoordinator *)self stepActionCoordinator];
    [v27 setAppCoordinator:0];

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
    v34 = v4;
    [v31 popContextAnimated:1 completion:v33];

    v32 = objc_loadWeakRetained(&self->_chromeViewController);
    [v32 commitCoordinatedContextChange];

    goto LABEL_23;
  }

  v18 = sub_100035E6C();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = self;
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    if (objc_opt_respondsToSelector())
    {
      v22 = [(AppCoordinator *)v19 performSelector:"accessibilityIdentifier"];
      v23 = v22;
      if (v22 && ![v22 isEqualToString:v21])
      {
        v24 = [NSString stringWithFormat:@"%@<%p, %@>", v21, v19, v23];

        goto LABEL_19;
      }
    }

    v24 = [NSString stringWithFormat:@"%@<%p>", v21, v19];
LABEL_19:

    v25 = objc_loadWeakRetained(&self->_chromeViewController);
    v26 = [v25 topContext];
    *buf = 138543618;
    v36 = v24;
    v37 = 2112;
    v38 = v26;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "[%{public}@] The top mode is currently not the step mode nor the transit mode (%@); will apply pending action and return", buf, 0x16u);
  }

  [(AppCoordinator *)self applyPendingActionIfNeeded];
LABEL_23:
}

- (void)_popNavModeWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_100035E6C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
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
      v9 = [(AppCoordinator *)v6 performSelector:"accessibilityIdentifier"];
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
    *buf = 138543362;
    v36 = v11;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Popping nav mode", buf, 0xCu);
  }

  v12 = [(AppCoordinator *)self chromeViewController];
  v13 = [v12 mapsActionController];
  v14 = [v13 pendingAction];

  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  [WeakRetained updateThemeForVisualEffectStyle:0];

  v16 = self->_navModeController;
  v17 = objc_loadWeakRetained(&self->_chromeViewController);
  v18 = [v17 view];
  v19 = [v18 window];
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
  v23 = v4;
  v29 = v23;
  [v21 scheduleCoordinatedContextChange:v31 completionHandler:v28];

  if ((v14 & 1) == 0)
  {
    v24 = [(AppCoordinator *)self baseActionCoordinator];
    v25 = [v24 visibleViewModeBeforeDoingDirectionItem] == 3;

    if (v25)
    {
      v26 = [(AppCoordinator *)self baseActionCoordinator];
      [v26 updateViewMode:3 animated:0];
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
  v3 = [(AppCoordinator *)self chromeViewController];
  v4 = [v3 mapsActionController];
  v5 = [v4 pendingAction];

  if (v5)
  {
    v6 = [(AppCoordinator *)self chromeViewController];
    v7 = [v6 mapsActionController];
    [v7 navigationEnded];
  }

  return v5;
}

- (void)endNavigationAndReturnToRoutePlanning:(BOOL)a3
{
  v3 = a3;
  v5 = sub_100035E6C();
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    goto LABEL_11;
  }

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
    v9 = [(AppCoordinator *)v6 performSelector:"accessibilityIdentifier"];
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
  *buf = 138543618;
  v48 = v11;
  v49 = 1024;
  v50 = v3;
  _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] endNavigationAndReturnToRoutePlanning: %d", buf, 0x12u);

LABEL_11:
  v12 = [(AppCoordinator *)self platformController];
  v13 = [v12 currentSession];

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

  if (v15)
  {
    v16 = [(AppCoordinator *)self platformController];
    v17 = [v16 sessionStack];
    v18 = sub_100030774(v17, &stru_101624500);

    dismissNavigationCompletion = self->_dismissNavigationCompletion;
    self->_dismissNavigationCompletion = 0;

    v20 = [(AppCoordinator *)self platformController];
    v21 = v20;
    if (v3)
    {
      [v20 popUntil:&stru_101624520];
LABEL_33:

      goto LABEL_34;
    }

    [v20 clearSessions];

    WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
    v23 = [WeakRetained contexts];
    v24 = [v23 count];

    if (!v24)
    {
LABEL_34:

      goto LABEL_35;
    }

    v25 = [v15 currentRouteCollection];
    v26 = [v25 currentRoute];
    v27 = [v26 destination];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    v29 = v28;

    if (v29)
    {
      v21 = [v29 route];
    }

    else
    {
      v30 = [v15 currentRouteCollection];
      v21 = [v30 currentRoute];
    }

    v31 = [v21 source] & 0xFFFFFFFFFFFFFFFELL;
    v32 = objc_loadWeakRetained(&self->_chromeViewController);
    v33 = v32;
    if (v31 == 2)
    {
      v34 = [v32 contexts];
      v35 = [v34 indexOfObjectPassingTest:&stru_101624540];

      if (v35 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v41 = objc_loadWeakRetained(&self->_chromeViewController);
        v39 = [(MapsCustomRouteViewContext *)v41 contexts];
        v40 = [v39 _maps_subarrayToIndex:v35];
        [(MapsCustomRouteViewContext *)v41 setContexts:v40 animated:1 completion:0];
        v38 = v41;
        goto LABEL_32;
      }

      v36 = [v18 configuration];
      v37 = [v36 source];

      if (v37 == 1)
      {
        v38 = [[MapsCustomRouteViewContext alloc] initWithExistingRoute:v21];
        v39 = objc_loadWeakRetained(&self->_chromeViewController);
        v40 = [v39 contexts];
        v41 = [v40 firstObject];
        v46[0] = v41;
        v46[1] = v38;
        v42 = [NSArray arrayWithObjects:v46 count:2];
        [v39 setContexts:v42 animated:1 completion:0];

LABEL_32:
        goto LABEL_33;
      }

      v38 = objc_loadWeakRetained(&self->_chromeViewController);
      v39 = [(MapsCustomRouteViewContext *)v38 contexts];
      v40 = [v39 firstObject];
      v45 = v40;
      v43 = &v45;
    }

    else
    {
      v38 = v32;
      v39 = [(MapsCustomRouteViewContext *)v38 contexts];
      v40 = [v39 firstObject];
      v44 = v40;
      v43 = &v44;
    }

    v41 = [NSArray arrayWithObjects:v43 count:1];
    [(MapsCustomRouteViewContext *)v38 setContexts:v41 animated:1 completion:0];

    goto LABEL_32;
  }

LABEL_35:
}

- (void)endNavigationWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1006303DC;
  v7[3] = &unk_101660648;
  objc_copyWeak(&v9, &location);
  v5 = v4;
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

- (void)startNavigationWithRouteCollection:(id)a3 navigationDetailsOptions:(NavigationDetailsOptions *)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100630AB4;
  v40[3] = &unk_1016244B8;
  objc_copyWeak(&v43, &location);
  v7 = v6;
  v41 = v7;
  v42 = self;
  v8 = *&a4->guidanceType;
  v44 = *&a4->shouldSimulateLocations;
  v45 = v8;
  v46 = *&a4->isReconnecting;
  navigationModeContext = a4->navigationModeContext;
  v9 = objc_retainBlock(v40);
  v10 = +[UIApplication sharedMapsDelegate];
  v11 = [v10 appSessionController];
  v12 = [v11 currentlyNavigatingPlatformController];

  if (v12)
  {
    v13 = [(AppCoordinator *)self platformController];
    v14 = v12 == v13;

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
        v35 = v12;
        v36 = v9;
        v30 = [UIAlertAction actionWithTitle:v29 style:0 handler:v34];
        [v24 addAction:v30];

        v31 = [(AppCoordinator *)self chromeViewController];
        [v31 _maps_topMostPresentViewController:v24 animated:1 completion:0];

        objc_destroyWeak(&v37);
        objc_destroyWeak(&v39);

        goto LABEL_15;
      }

      v16 = self;
      if (!v16)
      {
        v21 = @"<nil>";
        goto LABEL_13;
      }

      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      if (objc_opt_respondsToSelector())
      {
        v19 = [(AppCoordinator *)v16 performSelector:"accessibilityIdentifier"];
        v20 = v19;
        if (v19 && ([v19 isEqualToString:v18] & 1) == 0)
        {
          v21 = [NSString stringWithFormat:@"%@<%p, %@>", v18, v16, v20];

          goto LABEL_10;
        }
      }

      v21 = [NSString stringWithFormat:@"%@<%p>", v18, v16];
LABEL_10:

LABEL_13:
      *buf = 138543362;
      v50 = v21;
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
    v5 = [(AppCoordinator *)self platformController];
    v6 = [(NavModeController *)v4 initWithPlatformController:v5];
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

- (void)showOfflineMapRegionSelectorForConfiguration:(id)a3 shouldShowDataManagementAfterDownload:(BOOL)a4 shouldShowDataManagementAfterDownloadIfRegionDiffers:(BOOL)a5
{
  v8 = a3;
  v15 = [(AppCoordinator *)self baseActionCoordinator];
  v9 = [v8 region];
  v10 = [v8 name];
  v11 = [v8 route];
  v12 = [v8 shouldUseSessionlessAnalytics];
  v13 = [v8 dismissalBlock];

  BYTE1(v14) = a5;
  LOBYTE(v14) = a4;
  [v15 viewController:0 showOfflineMapRegionSelectorForRegion:v9 name:v10 route:v11 muid:0 shouldUseSessionlessAnalytics:v12 shouldShowDataManagementAfterDownload:v14 shouldShowDataManagementAfterDownloadIfRegionDiffers:v13 dismissalBlock:?];
}

- (void)showOfflineMapRegionSelectorForRegion:(id)a3 name:(id)a4 pushDataManagementFirst:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  if (GEOSupportsOfflineMaps())
  {
    WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100631E10;
    v11[3] = &unk_101651258;
    v14 = a5;
    v11[4] = self;
    v12 = v8;
    v13 = v9;
    [WeakRetained popToRootContextAnimated:1 completion:v11];
  }
}

- (void)viewControllerShowExpiredOfflineMaps:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100631F34;
  v5[3] = &unk_101661B18;
  v5[4] = self;
  [WeakRetained popToRootContextAnimated:1 completion:v5];
}

- (void)viewControllerShowOfflineMaps:(id)a3
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
  v4 = [WeakRetained topContext];
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

  v4 = [(AppCoordinator *)self baseActionCoordinator];
  [v4 viewControllerPresentVirtualGarage:0];
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

- (void)presentPOIEnrichmentWithCoordinator:(id)a3
{
  v4 = a3;
  v5 = [(AppCoordinator *)self baseActionCoordinator];
  [v5 viewControllerPresentPOIEnrichmentWithCoordinator:v4];
}

- (void)openCuratedGuideWithCollection:(id)a3
{
  v4 = a3;
  v5 = [(AppCoordinator *)self baseActionCoordinator];
  [v5 viewController:0 showCuratedCollection:v4];
}

- (void)openCuratedCollectionsList:(id)a3 usingTitle:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100632520;
  v11[3] = &unk_101661A40;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
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

- (void)openPublisherWithIdentifier:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100632704;
  v7[3] = &unk_101661A90;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [WeakRetained popToRootContextAnimated:1 completion:v7];
}

- (void)openGuidesHomeWithGuideLocation:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10063280C;
  v7[3] = &unk_101661A90;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [WeakRetained popToRootContextAnimated:1 completion:v7];
}

- (void)openCuratedCollectionWithIdentifier:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100632918;
  v7[3] = &unk_101661A90;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [WeakRetained popToRootContextAnimated:1 completion:v7];
}

- (void)openRelatedMapItems:(id)a3 withTitle:(id)a4 originalMapItem:(id)a5 analyticsDelegate:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100632A94;
  v19[3] = &unk_101653D50;
  v19[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  [WeakRetained popToRootContextAnimated:1 completion:v19];
}

- (void)openParentMapItem:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100632BA4;
  v7[3] = &unk_101661A90;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [WeakRetained popToRootContextAnimated:1 completion:v7];
}

- (void)enterRouteCreationWithRoute:(id)a3 originMapItem:(id)a4 destinationMapItem:(id)a5 userInfo:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (![(AppCoordinator *)self isPresentingRouteCreation])
  {
    [(AppCoordinator *)self setIsPresentingRouteCreation:1];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100632EAC;
    v26[3] = &unk_101661090;
    v26[4] = self;
    v27 = v16;
    v17 = objc_retainBlock(v26);
    v18 = sub_1007989A4();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
    if (v12)
    {
      if (v19)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Presenting route editing", buf, 2u);
      }

      v20 = [v15 objectForKeyedSubscript:@"DirectionsRouteUUIDKey"];
      v21 = [[MapsCustomRouteViewContext alloc] initWithExistingRoute:v12];
      [(MapsCustomRouteViewContext *)v21 setHistoryUUID:v20];
    }

    else
    {
      if (v19)
      {
        *buf = 138477827;
        v30 = v13;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Presenting route creation with mapItem: %{private}@", buf, 0xCu);
      }

      if (v14)
      {
        v22 = [[SearchResult alloc] initWithMapItem:v14];
        WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
        v24 = [WeakRetained mapSelectionManager];
        [v24 injectPreviouslySelectedSearchResult:v22];
      }

      if (v13)
      {
        v28 = v13;
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

- (void)enterRouteCreationWithMapItem:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [v6 _hikeAssociatedInfo];
  v9 = [v8 encryptedTourMuid];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100633050;
  v12[3] = &unk_10165DCA0;
  objc_copyWeak(&v15, &location);
  v10 = v6;
  v13 = v10;
  v11 = v7;
  v14 = v11;
  [MapsSavedRoutesManager fetchSavedRoutesWithTourMuid:v9 completion:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)enterRoutePlanningWithDirectionItem:(id)a3 allowToPromptEditing:(BOOL)a4 withUserInfo:(id)a5
{
  v8 = a3;
  v9 = a5;
  BOOL = GEOConfigGetBOOL();
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  if (BOOL)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1006334D8;
    v21[3] = &unk_101624468;
    v25 = a4;
    v22 = v8;
    v23 = v9;
    v24 = self;
    v12 = v9;
    v13 = v8;
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
    v18 = v8;
    v20 = a4;
    v19 = v9;
    v15 = v9;
    v16 = v8;
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
      v10 = [v9 contexts];
      obj = [v10 _maps_firstContextOfClass:objc_opt_class()];

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
    v4 = [WeakRetained contexts];
    v5 = [v4 _maps_firstContextOfClass:objc_opt_class()];
    v6 = v5 != 0;
  }

  else
  {
    WeakRetained = [(AppCoordinator *)self baseActionCoordinator];
    v6 = [WeakRetained isRoutePlanningPresented];
  }

  return v6;
}

- (void)editUserGuide:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v6 = [WeakRetained topContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [(AppCoordinator *)self chromeViewController];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100633ADC;
    v10[3] = &unk_101661A90;
    v10[4] = self;
    v11 = v4;
    [v8 popToRootContextAnimated:1 completion:v10];
  }

  else
  {
    v9 = [(AppCoordinator *)self baseActionCoordinator];
    [v9 viewController:0 editCollection:v4];
  }
}

- (void)openCollection:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100633BE8;
  v7[3] = &unk_101661A90;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [WeakRetained popToRootContextAnimated:1 completion:v7];
}

- (void)addStopWithWaypoint:(id)a3
{
  v4 = a3;
  v5 = sub_100035E6C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
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
      v9 = [(AppCoordinator *)v6 performSelector:"accessibilityIdentifier"];
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
    v12 = [v4 uniqueID];
    *buf = 138543618;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] adding stop with waypoint: %@", buf, 0x16u);
  }

  v13 = [(AppCoordinator *)self navActionCoordinator];
  [v13 detourToWaypoint:v4];
}

- (void)addStopWithMapItem:(id)a3
{
  v4 = a3;
  v5 = sub_100035E6C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
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
      v9 = [(AppCoordinator *)v6 performSelector:"accessibilityIdentifier"];
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
    v12 = [v4 name];
    *buf = 138543618;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] adding stop with MapItem: %@", buf, 0x16u);
  }

  v13 = [(AppCoordinator *)self navActionCoordinator];
  [v13 detourToMapItem:v4];
}

- (void)openSearch:(id)a3 andResults:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 isSearchAlongRoute])
  {
    v8 = +[CarDisplayController sharedInstance];
    v9 = [v8 isCarAppSceneHostingNavigation];

    if (v9)
    {
      v10 = +[CarDisplayController sharedInstance];
      v13 = @"Source";
      v14 = &off_1016E6590;
      v11 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      v12 = [v10 processSearchFieldItem:v6 searchInfo:v7 userInfo:v11];
    }

    else
    {
      v10 = [(AppCoordinator *)self navActionCoordinator];
      [v10 setCurrentSearchInfo:v7];
    }
  }

  else
  {
    [(AppCoordinator *)self startSearchModeWithCompletion:0];
    v10 = [(AppCoordinator *)self baseActionCoordinator];
    [v10 restoreSearchForItem:v6 withResults:v7 sessionOrigin:2];
  }
}

- (void)openSearch:(id)a3 userInfo:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(AppCoordinator *)self startSearchModeWithCompletion:0];
  v8 = [(AppCoordinator *)self baseActionCoordinator];
  [v8 viewController:0 doSearchItem:v7 withUserInfo:v6];
}

- (void)startSearchModeWithCompletion:(id)a3
{
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v5 = [WeakRetained topContext];
  v6 = [(AppCoordinator *)self baseModeController];

  if (v5 != v6)
  {
    v7 = [(AppCoordinator *)self baseActionCoordinator];
    [v7 setAppCoordinator:self];

    v8 = objc_loadWeakRetained(&self->_chromeViewController);
    v9 = [(AppCoordinator *)self baseModeController];
    [v8 pushContext:v9 animated:0 completion:v10];
  }
}

- (void)getCurrentSceneTitleWithCompletion:(id)a3
{
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v5 = [WeakRetained topIOSBasedContext];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_chromeViewController);
    v8 = [v7 topIOSBasedContext];
    [v8 getCurrentSceneTitleWithCompletion:v9];
  }
}

- (int)_analyticsPipelineTransportModeForMSPTransportType:(int64_t)a3
{
  if ((a3 - 1) < 5)
  {
    return a3;
  }

  else
  {
    return 0;
  }
}

- (void)_navigationSessionStopped:(id)a3 movingToSession:(id)a4
{
  v6 = a3;
  v7 = a4;
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

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v11 = v7;
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
  v13 = v6;
  v35 = v13;
  v14 = objc_retainBlock(v34);
  v15 = [v13 navigationType];
  if (v15 == 2)
  {
    goto LABEL_10;
  }

  if (v15 != 3)
  {
    if (v15 != 4)
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

    v17 = self;
    if (!v17)
    {
      v22 = @"<nil>";
      goto LABEL_27;
    }

    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    if (objc_opt_respondsToSelector())
    {
      v20 = [(AppCoordinator *)v17 performSelector:"accessibilityIdentifier"];
      v21 = v20;
      if (v20 && ([v20 isEqualToString:v19] & 1) == 0)
      {
        v22 = [NSString stringWithFormat:@"%@<%p, %@>", v19, v17, v21];

        goto LABEL_17;
      }
    }

    v22 = [NSString stringWithFormat:@"%@<%p>", v19, v17];
LABEL_17:

LABEL_27:
    *buf = 138543362;
    v40 = v22;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[%{public}@] Stepping navigation stopped; will pop step mode", buf, 0xCu);

    goto LABEL_28;
  }

  v23 = sub_100035E6C();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = self;
    if (!v24)
    {
      v29 = @"<nil>";
      goto LABEL_32;
    }

    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    if (objc_opt_respondsToSelector())
    {
      v27 = [(AppCoordinator *)v24 performSelector:"accessibilityIdentifier"];
      v28 = v27;
      if (v27 && ([v27 isEqualToString:v26] & 1) == 0)
      {
        v29 = [NSString stringWithFormat:@"%@<%p, %@>", v26, v24, v28];

        goto LABEL_25;
      }
    }

    v29 = [NSString stringWithFormat:@"%@<%p>", v26, v24];
LABEL_25:

LABEL_32:
    *buf = 138543362;
    v40 = v29;
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

- (void)_navigationSessionRunning:(id)a3
{
  v4 = a3;
  v5 = [v4 navigationType];
  if (v5 == 2 || v5 == 4)
  {
    v7 = sub_100035E6C();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      goto LABEL_25;
    }

    v8 = self;
    if (!v8)
    {
      v13 = @"<nil>";
      goto LABEL_24;
    }

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    if (objc_opt_respondsToSelector())
    {
      v11 = [(AppCoordinator *)v8 performSelector:"accessibilityIdentifier"];
      v12 = v11;
      if (v11 && ![v11 isEqualToString:v10])
      {
        v13 = [NSString stringWithFormat:@"%@<%p, %@>", v10, v8, v12];

        goto LABEL_13;
      }
    }

    v13 = [NSString stringWithFormat:@"%@<%p>", v10, v8];
LABEL_13:

LABEL_24:
    *buf = 138543362;
    v74 = v13;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}@] Navigation started stepping; will push step or transit mode", buf, 0xCu);

LABEL_25:
    v69[0] = _NSConcreteStackBlock;
    v69[1] = 3221225472;
    v69[2] = sub_100635548;
    v69[3] = &unk_101661A90;
    v69[4] = self;
    v21 = &v70;
    v70 = v4;
    v22 = objc_retainBlock(v69);
    v23 = [(AppCoordinator *)self chromeViewController];
    v24 = [v23 topContext];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v26 = sub_100035E6C();
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        goto LABEL_75;
      }

      v27 = self;
      if (!v27)
      {
        v32 = @"<nil>";
        goto LABEL_60;
      }

      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      if (objc_opt_respondsToSelector())
      {
        v30 = [(AppCoordinator *)v27 performSelector:"accessibilityIdentifier"];
        v31 = v30;
        if (v30 && ![v30 isEqualToString:v29])
        {
          v32 = [NSString stringWithFormat:@"%@<%p, %@>", v29, v27, v31];

          goto LABEL_33;
        }
      }

      v32 = [NSString stringWithFormat:@"%@<%p>", v29, v27];
LABEL_33:

LABEL_60:
      *buf = 138543362;
      v74 = v32;
      v62 = "[%{public}@] User is starting stepping nav to a custom or curated route; leaving current context in place";
LABEL_74:
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, v62, buf, 0xCu);

      goto LABEL_75;
    }

    v33 = [(AppCoordinator *)self chromeViewController];
    v34 = [v33 topContext];
    v35 = v34;
    if (v34 == self->_navModeController)
    {
    }

    else
    {
      v36 = [(AppCoordinator *)self chromeViewController];
      v37 = [v36 topContext];
      stepModeController = self->_stepModeController;

      if (v37 != stepModeController)
      {
        goto LABEL_76;
      }
    }

    v39 = sub_100035E6C();
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      goto LABEL_70;
    }

    v40 = self;
    v41 = objc_opt_class();
    v42 = NSStringFromClass(v41);
    if (objc_opt_respondsToSelector())
    {
      v43 = [(AppCoordinator *)v40 performSelector:"accessibilityIdentifier"];
      v44 = v43;
      if (v43 && ![v43 isEqualToString:v42])
      {
        v45 = [NSString stringWithFormat:@"%@<%p, %@>", v42, v40, v44];

        goto LABEL_44;
      }
    }

    v45 = [NSString stringWithFormat:@"%@<%p>", v42, v40];
LABEL_44:

    v46 = [(AppCoordinator *)v40 chromeViewController];
    v47 = [v46 topContext];
    *buf = 138543618;
    v74 = v45;
    v75 = 2112;
    v76 = v47;
LABEL_69:
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "[%{public}@] Current top mode is the nav mode or the step mode (%@); popping to root context first", buf, 0x16u);

    goto LABEL_70;
  }

  if (v5 == 3)
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
      v72 = v4;
      v22 = objc_retainBlock(v71);
      v48 = [(AppCoordinator *)self chromeViewController];
      v49 = [v48 topContext];
      objc_opt_class();
      v50 = objc_opt_isKindOfClass();

      if (v50)
      {
        v26 = sub_100035E6C();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v51 = self;
          if (!v51)
          {
            v32 = @"<nil>";
            goto LABEL_73;
          }

          v52 = objc_opt_class();
          v53 = NSStringFromClass(v52);
          if (objc_opt_respondsToSelector())
          {
            v54 = [(AppCoordinator *)v51 performSelector:"accessibilityIdentifier"];
            v55 = v54;
            if (v54 && ![v54 isEqualToString:v53])
            {
              v32 = [NSString stringWithFormat:@"%@<%p, %@>", v53, v51, v55];

              goto LABEL_55;
            }
          }

          v32 = [NSString stringWithFormat:@"%@<%p>", v53, v51];
LABEL_55:

LABEL_73:
          *buf = 138543362;
          v74 = v32;
          v62 = "[%{public}@] User is starting tbt nav to a custom or curated route; leaving current context in place";
          goto LABEL_74;
        }

LABEL_75:

        goto LABEL_76;
      }

      v56 = [(AppCoordinator *)self chromeViewController];
      v57 = [v56 topContext];
      v58 = v57;
      if (v57 == self->_navModeController)
      {

        goto LABEL_62;
      }

      v59 = [(AppCoordinator *)self chromeViewController];
      v60 = [v59 topContext];
      v61 = self->_stepModeController;

      if (v60 == v61)
      {
LABEL_62:
        v39 = sub_100035E6C();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          v63 = self;
          v64 = objc_opt_class();
          v65 = NSStringFromClass(v64);
          if (objc_opt_respondsToSelector())
          {
            v66 = [(AppCoordinator *)v63 performSelector:"accessibilityIdentifier"];
            v67 = v66;
            if (v66 && ![v66 isEqualToString:v65])
            {
              v45 = [NSString stringWithFormat:@"%@<%p, %@>", v65, v63, v67];

              goto LABEL_68;
            }
          }

          v45 = [NSString stringWithFormat:@"%@<%p>", v65, v63];
LABEL_68:

          v46 = [(AppCoordinator *)v63 chromeViewController];
          v47 = [v46 topContext];
          *buf = 138543618;
          v74 = v45;
          v75 = 2112;
          v76 = v47;
          goto LABEL_69;
        }

LABEL_70:

        v68 = [(AppCoordinator *)self chromeViewController];
        [v68 popToRootContextAnimated:0 completion:v22];

LABEL_77:
        goto LABEL_78;
      }

LABEL_76:
      (v22[2])(v22);
      goto LABEL_77;
    }

    v15 = self;
    if (!v15)
    {
      v20 = @"<nil>";
      goto LABEL_46;
    }

    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    if (objc_opt_respondsToSelector())
    {
      v18 = [(AppCoordinator *)v15 performSelector:"accessibilityIdentifier"];
      v19 = v18;
      if (v18 && ![v18 isEqualToString:v17])
      {
        v20 = [NSString stringWithFormat:@"%@<%p, %@>", v17, v15, v19];

        goto LABEL_22;
      }
    }

    v20 = [NSString stringWithFormat:@"%@<%p>", v17, v15];
LABEL_22:

LABEL_46:
    *buf = 138543362;
    v74 = v20;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[%{public}@] Navigation started turn-by-turn; will push nav mode", buf, 0xCu);

    goto LABEL_47;
  }

LABEL_78:
}

- (void)_navigationSession:(id)a3 didChangeState:(unint64_t)a4
{
  if (a4 == 1)
  {
    [(AppCoordinator *)self _navigationSessionRunning:a3];
  }
}

- (void)navigationSession:(id)a3 didChangeCurrentTransportType:(int64_t)a4
{
  v8 = a3;
  if ([v8 navigationType] == 3 || objc_msgSend(v8, "navigationType") == 2)
  {
    v6 = [(AppCoordinator *)self _analyticsPipelineTransportModeForMSPTransportType:a4];
    v7 = +[GEOAPSharedStateData sharedData];
    [v7 setMapUiShownActiveNavMode:v6];
  }
}

- (void)mapsSession:(id)a3 didChangeState:(unint64_t)a4
{
  v8 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v8;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  if (v7)
  {
    [(AppCoordinator *)self _navigationSession:v7 didChangeState:a4];
  }
}

- (void)setObservedNavigationSession:(id)a3
{
  v5 = a3;
  observedNavigationSession = self->_observedNavigationSession;
  if (observedNavigationSession != v5)
  {
    v7 = v5;
    [observedNavigationSession unregisterObserver:self];
    objc_storeStrong(&self->_observedNavigationSession, a3);
    [self->_observedNavigationSession registerObserver:self];
    v5 = v7;
  }
}

- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5
{
  v6 = [(AppCoordinator *)self observedNavigationSession:a3];
  if (v6)
  {
    v7 = v6;
    v8 = [(AppCoordinator *)self observedNavigationSession];
    v9 = [v8 guidanceType];

    if (v9 == 2)
    {
      v13 = [(AppCoordinator *)self observedNavigationSession];
      v10 = [v13 currentRouteCollection];
      v11 = [v10 currentRoute];
      v12 = objc_opt_new();
      [(AppCoordinator *)self enterPedestrianARWithRoute:v11 guidanceObserver:v12];
    }
  }
}

- (void)platformController:(id)a3 willChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(AppCoordinator *)self observedNavigationSession];
  v10 = v7;
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

  v13 = v8;
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
  v17 = [v16 meCard];
  v75 = [v17 identifier];

  if (v12 && v15)
  {
    v69 = v15;
    v70 = v13;
    v72 = self;
    v73 = v9;
    v74 = v10;
    v18 = [v15 configuration];
    v19 = [v18 sharedTripPrefetchContext];

    v20 = [v12 configuration];
    v21 = [v20 automaticSharingContacts];
    v68 = v19;
    [v19 setAutomaticSharingContacts:v21];

    v78 = objc_alloc_init(NSMutableArray);
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v71 = v12;
    v22 = [v12 waypointConfiguration];
    v23 = [v22 requests];

    obj = v23;
    v24 = v75;
    v80 = [v23 countByEnumeratingWithState:&v81 objects:v91 count:16];
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
          v29 = [v28 address];
          v30 = [v29 isMeCard];

          if ((v30 & 1) == 0)
          {
            v31 = [v28 contact];
            v32 = [MSPSharedTripContact contactsFromCNContact:v31];
            v33 = [v32 firstObject];

            if (v33)
            {
              [v78 addObject:v33];
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
          v40 = [v39 contact];

          if (v40)
          {
            v41 = [MSPSharedTripContact alloc];
            v42 = [v39 contact];
            v43 = [v39 handleIdentifier];
            v44 = [v41 initWithContact:v42 handle:v43];

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
          v51 = [v50 waypoint];
          v52 = [v51 findMyHandle];
          v53 = [v52 contact];

          if (v53)
          {
            v54 = [v51 findMyHandle];
            v55 = [v54 contact];

            v56 = [v51 findMyHandle];
            v57 = [v56 identifier];
            goto LABEL_50;
          }

          v58 = [v51 addressBookAddress];
          v55 = [v58 contact];

          if (v55)
          {
            v56 = [v51 addressBookAddress];
            v55 = [v56 contact];
            v57 = 0;
LABEL_50:

            if (v55)
            {
              v59 = [v55 identifier];
              v60 = [v59 isEqualToString:v24];

              if ((v60 & 1) == 0)
              {
                if (v57)
                {
                  v61 = [[MSPSharedTripContact alloc] initWithContact:v55 handle:v57];
                }

                else
                {
                  v76 = [v51 addressBookAddress];
                  v62 = [v76 contact];
                  v63 = [MSPSharedTripContact contactsFromCNContact:v62];
                  v61 = [v63 firstObject];

                  v24 = v75;
                }

                if (v61)
                {
                  [v78 addObject:v61];
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

                      v24 = v75;
                    }
                  }
                }
              }
            }
          }

          else
          {
            v57 = 0;
          }
        }
      }

      v80 = [obj countByEnumeratingWithState:&v81 objects:v91 count:16];
      if (!v80)
      {
LABEL_68:

        v67 = [v78 copy];
        [v68 setRoutingToContacts:v67];

        v9 = v73;
        v10 = v74;
        v12 = v71;
        self = v72;
        v15 = v69;
        v13 = v70;
        break;
      }
    }
  }

  [(AppCoordinator *)self setObservedNavigationSession:v15];
  if (v9 && [v9 guidanceType] != 2)
  {
    [(AppCoordinator *)self _navigationSessionStopped:v9 movingToSession:v13];
  }
}

- (AppCoordinator)initWithPlatformController:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = AppCoordinator;
  v6 = [(AppCoordinator *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_platformController, a3);
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