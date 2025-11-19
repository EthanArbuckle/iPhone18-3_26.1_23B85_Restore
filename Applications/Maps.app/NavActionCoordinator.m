@interface NavActionCoordinator
- (AppCoordinator)appCoordinator;
- (BOOL)canEnterPedestrianAR;
- (BOOL)canPresentRapFeedbackView;
- (BOOL)chromeDidClearMapSelection;
- (BOOL)chromeDidSelectClusteredFeatureAnnotationsMarker:(id)a3;
- (BOOL)chromeDidSelectCustomPOIAnnotation:(id)a3;
- (BOOL)chromeDidSelectLabelMarker:(id)a3;
- (BOOL)chromeDidSelectRouteAnnotations:(id)a3;
- (BOOL)chromeDidSelectTrafficIncident:(id)a3 latitude:(id)a4 longitude:(id)a5;
- (BOOL)chromeDidSelectTransitLineMarker:(id)a3;
- (BOOL)chromeShouldAllowSelectingLabelMarker:(id)a3;
- (BOOL)isControllingVoiceVolume;
- (BOOL)isDisplayingIncidentReporting;
- (BOOL)isPedestrianARActive;
- (BOOL)isPedestrianARShowingFailureView;
- (BOOL)isTeachableMomentCardActive;
- (BOOL)isWeatherPopoverActive;
- (BOOL)mapView:(id)a3 shouldSelectLabelMarker:(id)a4;
- (BOOL)pptTestCanUpdateTrayLayout;
- (BOOL)shouldShowNavRecenterButton;
- (CustomPOIsController)customPOIsController;
- (GEOMapServiceTraits)newTraits;
- (MapSelectionManager)mapSelectionManager;
- (MapViewZoomController)mapViewZoomController;
- (MapViewZoomDelegate)mapViewZoomDelegate;
- (NavActionCoordinator)initWithMapItemDisplayer:(id)a3 navigationDisplay:(id)a4 guidanceObserver:(id)a5 navigationCameraModeController:(id)a6 rapNavigationTracker:(id)a7;
- (NavContainerViewController)containerViewController;
- (NavTrafficIncidentContaineeViewController)trafficIncidentViewController;
- (NavTrafficIncidentCoordinator)navTrafficIncidentCoordinator;
- (NavTrayViewController)navigationTrayContaineeViewController;
- (NavigationCameraModeControlling)navigationCameraModeController;
- (NavigationRouteDetouring)routeDetourer;
- (NavigationRouteHistoryInfoProviding)routeInfoProvider;
- (PlaceCardViewController)placecardViewController;
- (SearchViewController)searchHomeViewController;
- (SimpleResultsViewController)simpleResultsViewController;
- (_TtC4Maps38RouteAnnotationContaineeViewController)routeAnnotationViewController;
- (double)mapViewYaw;
- (id)placeCardViewControllerRequestsMapViewAssociatedWithVC:(id)a3;
- (int)currentUITargetForAnalytics;
- (int64_t)displayedViewMode;
- (int64_t)excludedContentForMapItem:(id)a3;
- (int64_t)navigationTransportType;
- (unint64_t)activeSharingCount;
- (unint64_t)currentMapViewZoom;
- (unint64_t)navigationCameraHeadingOverride;
- (unint64_t)navigationCameraMode;
- (void)_presentTrayWithDefaultLayout:(BOOL)a3 animated:(BOOL)a4;
- (void)_selectedVolumeLevelHasChanged:(int64_t)a3;
- (void)_toggleCameraHeadingIfNeeded;
- (void)_willDismissNavMode;
- (void)categoryList:(id)a3 selectedSearchCategory:(id)a4;
- (void)clearSearch;
- (void)containeeViewControllerGoToPreviousState:(id)a3 withSender:(id)a4;
- (void)detourToMapItem:(id)a3;
- (void)detourToWaypoint:(id)a3;
- (void)didTapMapView:(id)a3 atPoint:(CGPoint)a4;
- (void)directionsStepsList:(id)a3 didTapRowForRouteStep:(id)a4;
- (void)dismissAddStopAnimated:(BOOL)a3;
- (void)dismissCategoryList:(id)a3;
- (void)dismissIncidentReportingViewController:(id)a3;
- (void)dismissModalContainee;
- (void)dismissPedestrianARTeachableMomentCardIfNecessary;
- (void)dismissPlacecard;
- (void)dismissReportAnIncidentAnimated:(BOOL)a3;
- (void)dismissSearchAlongRoute;
- (void)dismissShareETA;
- (void)dismissTrafficIncidentViewController:(id)a3;
- (void)dismissTray;
- (void)dismissVoiceVolumeControlAnimated:(BOOL)a3;
- (void)dismissVoiceVolumeControlViewController:(id)a3;
- (void)displayIncidentReportSubmissionWithItem:(id)a3 report:(id)a4;
- (void)displayIncidentReporting;
- (void)displayVoiceVolumeControl;
- (void)enterPedestrianAR;
- (void)exitPedestrianAR;
- (void)handleSearchActionUsingSearchFieldItem:(id)a3 withUserInfo:(id)a4;
- (void)hideJunctionViewIfNeeded;
- (void)incidentReportSubmissionContaineeDidFinish:(id)a3;
- (void)incidentReportingViewController:(id)a3 selectedTrafficIncidentItem:(id)a4 atLocation:(id)a5;
- (void)mapView:(id)a3 didSelectLabelMarker:(id)a4;
- (void)mapView:(id)a3 didUpdateYaw:(double)a4;
- (void)mapViewNavigationCameraDidLeaveDefaultZoom:(id)a3;
- (void)mapViewNavigationCameraDidReturnToDefaultZoom:(id)a3;
- (void)mapViewNavigationCameraHasStartedPanning:(id)a3;
- (void)mapViewNavigationCameraHasStoppedPanning:(id)a3;
- (void)mapViewZoomController:(id)a3 didChangeMapViewZoom:(unint64_t)a4;
- (void)openShareETAController;
- (void)pauseNavigation;
- (void)personalizedItemSourceDidChangeItems:(id)a3;
- (void)placeCardViewController:(id)a3 doDirectionItem:(id)a4 userInfo:(id)a5;
- (void)placeCardViewController:(id)a3 openURL:(id)a4;
- (void)pptTestDismissTrayAnimated:(BOOL)a3 assertTrayType:(int64_t)a4;
- (void)pptTestTransitionBetweenFullAndLightGuidance;
- (void)pptTestUpdateTrayLayout:(unint64_t)a3 animated:(BOOL)a4;
- (void)presentAddStopUsingCategories:(id)a3;
- (void)presentPlacecardViewController;
- (void)presentSearchAlongTheRouteResults;
- (void)presentSearchAlongTheRouteWithViewModel:(id)a3;
- (void)presentSimpleResultsViewController;
- (void)presentTrafficIncidentViewController:(id)a3 completion:(id)a4;
- (void)presentTray;
- (void)presentWithContainerViewController:(id)a3;
- (void)pressedEndWithSender:(id)a3 feedback:(unint64_t)a4;
- (void)pressedViewWaypoint:(id)a3;
- (void)recenterNavigation;
- (void)repeatGuidanceInstruction;
- (void)resetMapViewZoomToDefaultAndStartCameraTracking:(BOOL)a3;
- (void)resumeNavigation;
- (void)selectMapItem:(id)a3 shouldRemoveResults:(BOOL)a4 hideAddStop:(BOOL)a5;
- (void)sendOtherEVStationsRequest:(unint64_t)a3;
- (void)sender:(id)a3 switchToNavigationCameraMode:(unint64_t)a4;
- (void)senderOpenListStep:(id)a3 fullscreen:(BOOL)a4;
- (void)senderShareNavigation:(id)a3;
- (void)setAppCoordinator:(id)a3;
- (void)setContainerViewController:(id)a3;
- (void)setCurrentSearchInfo:(id)a3 error:(id)a4;
- (void)setDefaultContaineeViewControllerType:(unint64_t)a3;
- (void)showJunctionViewIfNeeded;
- (void)showPedestrianARFeatureIntroTeachableMomentCard;
- (void)showPedestrianARRaiseToEnterTeachableMomentCard;
- (void)showVLF;
- (void)simpleResultsViewContoller:(id)a3 didTapOnAddStopWithSearchResult:(id)a4;
- (void)simpleResultsViewContoller:(id)a3 selectClusteredLabelMarker:(id)a4;
- (void)simpleResultsViewContoller:(id)a3 selectSearchResult:(id)a4;
- (void)suppressTransitionsOfContainee:(id)a3;
- (void)toggleTemporaryStatusBar;
- (void)updateCameraForTraits:(id)a3 containerStyle:(unint64_t)a4;
- (void)viewController:(id)a3 doSearchItem:(id)a4 withUserInfo:(id)a5;
- (void)viewController:(id)a3 shareContactValue:(id)a4;
- (void)viewController:(id)a3 switchNavigationToRoute:(id)a4;
- (void)viewController:(id)a3 switchToMapViewZoom:(unint64_t)a4;
- (void)viewController:(id)a3 updateMapRect:(id)a4;
- (void)viewControllerOpenContactsSearch:(id)a3;
@end

@implementation NavActionCoordinator

- (NavTrafficIncidentCoordinator)navTrafficIncidentCoordinator
{
  navTrafficIncidentCoordinator = self->_navTrafficIncidentCoordinator;
  if (!navTrafficIncidentCoordinator)
  {
    v4 = objc_alloc_init(NavTrafficIncidentCoordinator);
    v5 = self->_navTrafficIncidentCoordinator;
    self->_navTrafficIncidentCoordinator = v4;

    [(NavTrafficIncidentCoordinator *)self->_navTrafficIncidentCoordinator setPresentationDelegate:self];
    navTrafficIncidentCoordinator = self->_navTrafficIncidentCoordinator;
  }

  return navTrafficIncidentCoordinator;
}

- (id)placeCardViewControllerRequestsMapViewAssociatedWithVC:(id)a3
{
  v3 = objc_alloc_init(MKMapView);

  return v3;
}

- (void)placeCardViewController:(id)a3 openURL:(id)a4
{
  v4 = a4;
  v5 = +[MKSystemController sharedInstance];
  [v5 openURL:v4 completionHandler:0];
}

- (void)placeCardViewController:(id)a3 doDirectionItem:(id)a4 userInfo:(id)a5
{
  v6 = [a4 endMapItem];
  [(NavActionCoordinator *)self detourToMapItem:v6];
}

- (int64_t)displayedViewMode
{
  v2 = [(NavActionCoordinator *)self containerViewController];
  v3 = [v2 chromeViewController];
  v4 = [v3 displayedViewMode];

  return v4;
}

- (GEOMapServiceTraits)newTraits
{
  v2 = [(NavActionCoordinator *)self containerViewController];
  v3 = [v2 chromeViewController];
  v4 = [v3 currentTraits];

  return v4;
}

- (BOOL)chromeDidClearMapSelection
{
  v3 = [(NavActionCoordinator *)self containerViewController];
  v4 = [v3 currentViewController];

  v5 = [(NavActionCoordinator *)self trafficIncidentAlertCoordinator];
  v6 = [v5 trafficIncidentViewController];

  if (v4 == v6)
  {
    v13 = [(NavActionCoordinator *)self navTrafficIncidentCoordinator];
    v14 = [v13 trafficIncidentViewController];
    v15 = [v14 cardPresentationController];
    [v15 wantsLayout:1];
  }

  else
  {
    v22[0] = objc_opt_class();
    v22[1] = objc_opt_class();
    v22[2] = objc_opt_class();
    v22[3] = objc_opt_class();
    [NSArray arrayWithObjects:v22 count:4];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v20 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          if (objc_opt_isKindOfClass())
          {
            v12 = [(NavActionCoordinator *)self containerViewController];
            [v12 popLastViewControllerAnimated:1];

            goto LABEL_12;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  return 1;
}

- (BOOL)chromeDidSelectLabelMarker:(id)a3
{
  v4 = a3;
  if ([v4 featureID] || objc_msgSend(v4, "hasBusinessID"))
  {
    if ([v4 featureID])
    {
      v5 = [v4 featureID];
    }

    else
    {
      v5 = [v4 businessID];
    }

    v6 = v5;
    v7 = [MKMapItemIdentifier alloc];
    [v4 coordinate];
    v9 = v8;
    [v4 coordinate];
    v10 = [v7 initWithMUID:v6 resultProviderID:0 coordinate:v9];
    v11 = +[MKMapService sharedService];
    v21 = v10;
    v12 = [NSArray arrayWithObjects:&v21 count:1];
    v13 = [(NavActionCoordinator *)self containerViewController];
    v14 = [v13 chromeViewController];
    v15 = [v14 currentTraits];
    v16 = [v11 ticketForIdentifiers:v12 traits:v15];

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100E8C924;
    v18[3] = &unk_10165FE18;
    v19 = v4;
    v20 = self;
    [v16 submitWithHandler:v18 networkActivity:0];
  }

  return 1;
}

- (BOOL)chromeDidSelectTrafficIncident:(id)a3 latitude:(id)a4 longitude:(id)a5
{
  v6 = a3;
  v7 = [(NavActionCoordinator *)self navTrafficIncidentCoordinator];
  v8 = [v7 presentedAlert];

  if (v8)
  {
    v9 = [(NavActionCoordinator *)self navTrafficIncidentCoordinator];
    v10 = [v9 trafficIncidentViewController];
    v11 = [v10 cardPresentationController];
    [v11 wantsLayout:2];
  }

  else
  {
    v12 = +[MKMapService sharedService];
    v13 = +[MKTrafficSupport GEOTrafficIncidentTypeForVKTrafficIncidentType:](MKTrafficSupport, "GEOTrafficIncidentTypeForVKTrafficIncidentType:", [v6 type]);
    if (v13 >= 0x14)
    {
      v14 = [NSString stringWithFormat:@"(unknown: %i)", v13];
    }

    else
    {
      v14 = off_101657100[v13];
    }

    [v12 captureUserAction:1031 onTarget:505 eventValue:v14];

    v15 = [(NavActionCoordinator *)self trafficIncidentViewController];
    [v15 setIncident:v6];

    v9 = [(NavActionCoordinator *)self containerViewController];
    v10 = [(NavActionCoordinator *)self trafficIncidentViewController];
    [v9 presentController:v10 animated:1 useDefaultContaineeLayout:1];
  }

  return 1;
}

- (BOOL)chromeDidSelectClusteredFeatureAnnotationsMarker:(id)a3
{
  v4 = a3;
  v5 = [(NavActionCoordinator *)self simpleResultsViewController];
  v6 = [v5 cluster];

  if (v6 != v4)
  {
    v7 = [(NavActionCoordinator *)self simpleResultsViewController];
    [v7 clearCluster];
  }

  [(NavActionCoordinator *)self presentSimpleResultsViewController];
  v8 = [(NavActionCoordinator *)self simpleResultsViewController];
  v9 = [(NavActionCoordinator *)self currentSearchInfo];
  [v8 setCluster:v4 sortAlphabetically:0 originalSearchInfo:v9];

  return 1;
}

- (BOOL)chromeDidSelectRouteAnnotations:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [v4 firstObject];
    v6 = [(NavActionCoordinator *)self routeAnnotationViewController];
    [v6 setRouteAnnotation:v5];

    v7 = [(NavActionCoordinator *)self containerViewController];
    v8 = [(NavActionCoordinator *)self routeAnnotationViewController];
    [v7 presentController:v8];

    v9 = [(NavActionCoordinator *)self navigationTransportType];
    v10 = v9;
    if (v9 == 5 || v9 == 2)
    {
      v11 = [v4 firstObject];
      v12 = [v11 styleAttributes];
      v13 = FeatureStyleAttributesFind();

      if (v13)
      {
        v14 = [NSNumber numberWithInt:0];
      }

      else
      {
        v14 = 0;
      }

      if (v10 == 2)
      {
        v15 = 312;
      }

      else
      {
        v15 = 67;
      }

      v16 = +[MKMapService sharedService];
      v17 = [v14 stringValue];
      [v16 captureUserAction:v15 onTarget:505 eventValue:v17];
    }
  }

  return 1;
}

- (BOOL)chromeDidSelectTransitLineMarker:(id)a3
{
  v4 = a3;
  v5 = [(NavActionCoordinator *)self navTrafficIncidentCoordinator];
  v6 = [v5 presentedAlert];

  if (v6)
  {
    v7 = [(NavActionCoordinator *)self navTrafficIncidentCoordinator];
    v8 = [v7 trafficIncidentViewController];
    v9 = [v8 cardPresentationController];
    [v9 wantsLayout:2];
  }

  else
  {
    v10 = +[MKMapService sharedService];
    v11 = [v4 incident];
    v12 = +[MKTrafficSupport GEOTrafficIncidentTypeForVKTrafficIncidentType:](MKTrafficSupport, "GEOTrafficIncidentTypeForVKTrafficIncidentType:", [v11 type]);
    if (v12 >= 0x14)
    {
      v13 = [NSString stringWithFormat:@"(unknown: %i)", v12];
    }

    else
    {
      v13 = off_101657100[v12];
    }

    [v10 captureUserAction:1031 onTarget:505 eventValue:v13];

    v14 = [v4 incident];
    v15 = [(NavActionCoordinator *)self trafficIncidentViewController];
    [v15 setIncident:v14];

    v7 = [(NavActionCoordinator *)self containerViewController];
    v8 = [(NavActionCoordinator *)self trafficIncidentViewController];
    [v7 presentController:v8 animated:1 useDefaultContaineeLayout:1];
  }

  return 1;
}

- (BOOL)chromeShouldAllowSelectingLabelMarker:(id)a3
{
  v3 = a3;
  if ([v3 isRouteEta])
  {
    v4 = [v3 routeInfo];
    v5 = [v4 route];
    v6 = ([v5 source] & 0xFFFFFFFFFFFFFFFELL) != 2;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)chromeDidSelectCustomPOIAnnotation:(id)a3
{
  v4 = [a3 mapItem];
  if (v4)
  {
    [SARAnalytics captureMapSelectMapItem:v4];
    v5 = [[PlaceCardItem alloc] initWithMapItem:v4];
    v6 = [(NavActionCoordinator *)self containerViewController];
    v7 = [v6 currentViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v9 = [(NavActionCoordinator *)self containerViewController];
      v10 = [v9 currentViewController];

      v11 = [v10 placeCardItem];
      v12 = [(PlaceCardItem *)v5 isEqual:v11];

      if (v12)
      {
        goto LABEL_17;
      }
    }

    v13 = [(NavActionCoordinator *)self placecardViewController];
    [v13 resetState];
    v14 = [(NavActionCoordinator *)self navigationTransportType];
    v15 = 0;
    if (v14 > 1)
    {
      if (v14 != 2)
      {
        if (v14 == 5)
        {
          IsEnabled_Maps420 = MapsFeature_IsEnabled_Maps420();
          goto LABEL_15;
        }

LABEL_16:
        [v13 setIsAdditionalStop:v15];
        [v13 setExcludedContent:{-[NavActionCoordinator excludedContentForMapItem:](self, "excludedContentForMapItem:", v4)}];
        [v13 setPlaceCardItem:v5 withHistory:0];
        [(NavActionCoordinator *)self presentPlacecardViewController];

LABEL_17:
        goto LABEL_18;
      }
    }

    else
    {
      if (v14)
      {
        if (v14 == 1)
        {
          IsEnabled_Maps420 = MapsFeature_IsEnabled_DrivingMultiWaypointRoutes();
LABEL_15:
          v15 = IsEnabled_Maps420;
          goto LABEL_16;
        }

        goto LABEL_16;
      }

      if (MapsFeature_IsEnabled_DrivingMultiWaypointRoutes() & 1) != 0 || (MapsFeature_IsEnabled_Maps420())
      {
        v15 = 1;
        goto LABEL_16;
      }
    }

    IsEnabled_Maps420 = MapsFeature_IsEnabled_Maps182();
    goto LABEL_15;
  }

LABEL_18:

  return v4 != 0;
}

- (void)simpleResultsViewContoller:(id)a3 selectClusteredLabelMarker:(id)a4
{
  v5 = a4;
  v6 = [(NavActionCoordinator *)self mapSelectionManager];
  [v6 selectLabelMarker:v5 animated:1];
}

- (void)simpleResultsViewContoller:(id)a3 selectSearchResult:(id)a4
{
  v5 = [a4 mapItem];
  [(NavActionCoordinator *)self selectMapItem:v5 shouldRemoveResults:0];
}

- (NavigationCameraModeControlling)navigationCameraModeController
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationCameraModeController);

  return WeakRetained;
}

- (MapViewZoomDelegate)mapViewZoomDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_mapViewZoomDelegate);

  return WeakRetained;
}

- (CustomPOIsController)customPOIsController
{
  WeakRetained = objc_loadWeakRetained(&self->_customPOIsController);

  return WeakRetained;
}

- (NavContainerViewController)containerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);

  return WeakRetained;
}

- (AppCoordinator)appCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_appCoordinator);

  return WeakRetained;
}

- (void)pptTestDismissTrayAnimated:(BOOL)a3 assertTrayType:(int64_t)a4
{
  if ((a4 - 1) >= 3)
  {
    v5 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    [WeakRetained popLastViewControllerAnimated:v5];
  }
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

- (int)currentUITargetForAnalytics
{
  v3 = [(NavActionCoordinator *)self navigationTrayContaineeViewController];
  if (!v3)
  {
    return 401;
  }

  v4 = v3;
  v5 = [(NavActionCoordinator *)self navigationTrayContaineeViewController];
  v6 = [v5 conformsToProtocol:&OBJC_PROTOCOL___GEOLogContextDelegate];

  if (!v6)
  {
    return 401;
  }

  v7 = [(NavActionCoordinator *)self navigationTrayContaineeViewController];
  v8 = [v7 currentUITargetForAnalytics];

  return v8;
}

- (void)pptTestTransitionBetweenFullAndLightGuidance
{
  v3 = [(NavActionCoordinator *)self navigationCameraMode];
  if (v3)
  {
    if (v3 != 1)
    {
      return;
    }

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  [(NavActionCoordinator *)self sender:self switchToNavigationCameraMode:v4];
}

- (void)mapViewZoomController:(id)a3 didChangeMapViewZoom:(unint64_t)a4
{
  v6 = a3;
  v7 = [(NavActionCoordinator *)self navigationCameraMode];
  v8 = 0;
  if (a4 == 1 && v7 == 1)
  {
    v8 = [(NavActionCoordinator *)self lowGuidanceUserPreferredHeadingOverride];
  }

  v9 = [(NavActionCoordinator *)self navigationDisplay];
  v10 = [v9 cameraController];
  [v10 setNavigationCameraHeadingOverride:v8];

  v11 = [(NavActionCoordinator *)self containerViewController];
  [v11 mapViewZoomController:v6 didChangeMapViewZoom:a4];

  v12 = [(NavActionCoordinator *)self mapViewZoomDelegate];
  [v12 navActionCoordinator:self didChangeMapViewZoom:a4];
}

- (void)_selectedVolumeLevelHasChanged:(int64_t)a3
{
  if (a3)
  {
    v3 = 3054;
  }

  else
  {
    v3 = 529;
  }

  if (a3 == 2)
  {
    v4 = 528;
  }

  else
  {
    v4 = v3;
  }

  v5 = +[MKMapService sharedService];
  [v5 captureUserAction:v4 onTarget:611 eventValue:0];
}

- (void)dismissVoiceVolumeControlViewController:(id)a3
{
  v4 = a3;
  v5 = [(NavActionCoordinator *)self containerViewController];
  v6 = [v5 currentViewController];

  if (v6 == v4)
  {

    [(NavActionCoordinator *)self dismissVoiceVolumeControlAnimated:1];
  }
}

- (void)incidentReportingViewController:(id)a3 selectedTrafficIncidentItem:(id)a4 atLocation:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = -[TrafficIncidentReport initWithUserLocation:type:userPath:]([TrafficIncidentReport alloc], "initWithUserLocation:type:userPath:", v7, [v8 incidentType], 2);

  [(NavActionCoordinator *)self displayIncidentReportSubmissionWithItem:v8 report:v9];
}

- (void)dismissIncidentReportingViewController:(id)a3
{
  v4 = a3;
  v5 = [(NavActionCoordinator *)self containerViewController];
  v6 = [v5 currentViewController];

  if (v6 == v4)
  {

    [(NavActionCoordinator *)self dismissReportAnIncidentAnimated:1];
  }
}

- (void)categoryList:(id)a3 selectedSearchCategory:(id)a4
{
  v5 = a4;
  v6 = sub_100035E6C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v17 = 138412290;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Selected SAR category: %@", &v17, 0xCu);
  }

  v7 = objc_opt_new();
  [v7 setSearchCategory:v5];
  v8 = [GuidanceSearchResultsCategoryDataProvider alloc];
  v9 = +[MKMapService sharedService];
  v10 = [(NavActionCoordinator *)self containerViewController];
  v11 = [v10 chromeViewController];
  v12 = [(GuidanceSearchResultsCategoryDataProvider *)v8 initWithSearchItem:v7 mapService:v9 chromeViewController:v11];

  v13 = [GuidanceSearchResultsViewModel alloc];
  v14 = [(NavActionCoordinator *)self routeInfoProvider];
  v15 = [(NavActionCoordinator *)self mapItemDisplayer];
  v16 = [(GuidanceSearchResultsViewModel *)v13 initWithDataProvider:v12 navActionCoordinator:self routeInfoProvider:v14 mapItemDisplayer:v15];

  [(NavActionCoordinator *)self presentSearchAlongTheRouteWithViewModel:v16];
}

- (void)dismissCategoryList:(id)a3
{
  v4 = a3;
  v5 = [(NavActionCoordinator *)self containerViewController];
  v6 = [v5 currentViewController];

  if (v6 == v4)
  {

    [(NavActionCoordinator *)self dismissAddStopAnimated:1];
  }
}

- (void)simpleResultsViewContoller:(id)a3 didTapOnAddStopWithSearchResult:(id)a4
{
  v5 = [a4 mapItem];
  v6 = sub_100035E6C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Selected map item : %@ while adding a stop in navigation", &v7, 0xCu);
  }

  if (v5)
  {
    [(NavActionCoordinator *)self detourToMapItem:v5];
  }
}

- (void)dismissTrafficIncidentViewController:(id)a3
{
  v4 = a3;
  v5 = [(NavActionCoordinator *)self containerViewController];
  v6 = [v5 currentViewController];

  if (v6 == v4)
  {
    [(NavActionCoordinator *)self presentTray];
    v7 = [(NavActionCoordinator *)self containerViewController];
    [v7 showJunctionViewIfNeeded];
  }
}

- (void)presentTrafficIncidentViewController:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(NavActionCoordinator *)self setDisplayingTrafficIncident:1];
  v8 = [(NavActionCoordinator *)self containerViewController];
  [v8 presentController:v7 animated:1 completion:v6];

  v9 = [(NavActionCoordinator *)self containerViewController];
  [v9 hideJunctionViewIfNeeded];
}

- (void)didTapMapView:(id)a3 atPoint:(CGPoint)a4
{
  v5 = [(NavActionCoordinator *)self mapSelectionManager:a3];
  v6 = [v5 hasSelection];

  if (v6)
  {
    v8 = [(NavActionCoordinator *)self mapSelectionManager];
    [v8 clearSelection];
  }

  else
  {
    if ([(NavActionCoordinator *)self isSearchingAlongTheRoute])
    {
      +[SARAnalytics captureMapTapToHideTray];
    }

    v7 = [(NavActionCoordinator *)self navigationTrayContaineeViewController];
    v8 = [v7 cardPresentationController];

    if ([v8 containeeLayout] != 1)
    {
      [v8 wantsLayout:1];
    }
  }
}

- (void)mapView:(id)a3 didUpdateYaw:(double)a4
{
  v9 = a3;
  v6 = [(NavActionCoordinator *)self containerViewController];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(NavActionCoordinator *)self containerViewController];
    [v8 mapView:v9 didUpdateYaw:a4];
  }
}

- (void)mapViewNavigationCameraDidReturnToDefaultZoom:(id)a3
{
  v7 = a3;
  self->_navCameraZoomed = 0;
  v4 = [(NavActionCoordinator *)self containerViewController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(NavActionCoordinator *)self containerViewController];
    [v6 mapViewNavigationCameraDidReturnToDefaultZoom:v7];
  }
}

- (void)mapViewNavigationCameraDidLeaveDefaultZoom:(id)a3
{
  v7 = a3;
  self->_navCameraZoomed = 1;
  v4 = [(NavActionCoordinator *)self containerViewController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(NavActionCoordinator *)self containerViewController];
    [v6 mapViewNavigationCameraDidLeaveDefaultZoom:v7];
  }
}

- (void)mapViewNavigationCameraHasStoppedPanning:(id)a3
{
  v7 = a3;
  self->_navCameraPanned = 0;
  v4 = [(NavActionCoordinator *)self containerViewController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(NavActionCoordinator *)self containerViewController];
    [v6 mapViewNavigationCameraHasStoppedPanning:v7];
  }
}

- (void)mapViewNavigationCameraHasStartedPanning:(id)a3
{
  v7 = a3;
  self->_navCameraPanned = 1;
  v4 = [(NavActionCoordinator *)self containerViewController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(NavActionCoordinator *)self containerViewController];
    [v6 mapViewNavigationCameraHasStartedPanning:v7];
  }
}

- (void)mapView:(id)a3 didSelectLabelMarker:(id)a4
{
  v7 = a4;
  if (!v7)
  {
    v5 = [(NavActionCoordinator *)self navigationDisplay];
    [v5 startMotion:1];
  }

  v6 = [(NavActionCoordinator *)self mapSelectionManager];
  [v6 mapDidSelectLabelMarker:v7];
}

- (BOOL)mapView:(id)a3 shouldSelectLabelMarker:(id)a4
{
  v5 = a4;
  v6 = [(NavActionCoordinator *)self navTrafficIncidentCoordinator];
  v7 = [v6 presentedAlert];
  if (v7)
  {
    v8 = v7;
    v9 = [v5 isRouteEta];

    if ((v9 & 1) == 0)
    {
      v10 = [(NavActionCoordinator *)self navTrafficIncidentCoordinator];
      v11 = [v10 presentedAlert];
      v12 = [v11 incident];
      v13 = [v12 incidentId];

      v14 = [v5 incident];
      v15 = [v14 uniqueString];

      v16 = [v13 isEqualToString:v15];
      goto LABEL_14;
    }
  }

  else
  {
  }

  v13 = [v5 featureAnnotation];
  if ([v13 conformsToProtocol:&OBJC_PROTOCOL___CustomPOIAnnotation])
  {
    v17 = [v13 mapItem];
    v16 = v17 != 0;
  }

  else
  {
    v16 = (![v5 isCluster] || objc_msgSend(v5, "clusterFeatureCount")) && ((GEOConfigGetBOOL() & 1) != 0 || (objc_msgSend(v5, "isTrafficIncident") & 1) != 0 || (objc_msgSend(v5, "isRouteEta") & 1) != 0 || (objc_msgSend(v5, "isRouteAnnotation") & 1) != 0 || objc_msgSend(v5, "clusterFeatureCount") > 1);
  }

LABEL_14:

  return v16;
}

- (void)containeeViewControllerGoToPreviousState:(id)a3 withSender:(id)a4
{
  v5 = a3;
  if ((MapsFeature_IsEnabled_DrivingMultiWaypointRoutes() & 1) != 0 || (MapsFeature_IsEnabled_Maps420() & 1) != 0 || MapsFeature_IsEnabled_Maps182())
  {
    [(NavActionCoordinator *)self selectMapItem:0 shouldRemoveResults:0];
    v6 = [(NavActionCoordinator *)self containerViewController];
    v7 = [v6 controllerIsInStack:self->_resultsViewController];

    if ((v7 & 1) == 0)
    {
      [(NavActionCoordinator *)self recenterNavigation];
      [(NavActionCoordinator *)self _presentTrayWithDefaultLayout:1 animated:1];
    }
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [(NavActionCoordinator *)self mapSelectionManager];
    v10 = [v9 mapView];
    [v10 _deselectLabelMarkerAnimated:1];
  }

  v11 = [(NavActionCoordinator *)self containerViewController];
  [v11 popLastViewControllerAnimated:1 useDefaultContaineeLayout:1];
}

- (void)suppressTransitionsOfContainee:(id)a3
{
  v4 = a3;
  v5 = [(NavActionCoordinator *)self containerViewController];
  [v5 suppressTransitionsOfContainee:v4];
}

- (void)hideJunctionViewIfNeeded
{
  v2 = [(NavActionCoordinator *)self containerViewController];
  [v2 hideJunctionViewIfNeeded];
}

- (void)showJunctionViewIfNeeded
{
  v2 = [(NavActionCoordinator *)self containerViewController];
  [v2 showJunctionViewIfNeeded];
}

- (void)_toggleCameraHeadingIfNeeded
{
  if ([(NavActionCoordinator *)self navigationCameraMode]== 1)
  {
    v3 = [(NavActionCoordinator *)self navigationCameraHeadingOverride];
    v4 = v3 != 1;
    v5 = sub_100035E6C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v10 = 134218240;
      v11 = v3;
      v12 = 2048;
      v13 = v3 != 1;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "toggleCameraHeading: from %lu to %lu", &v10, 0x16u);
    }

    v6 = [(NavActionCoordinator *)self navigationDisplay];
    v7 = [v6 cameraController];
    [v7 setNavigationCameraHeadingOverride:v4];

    v8 = [(NavActionCoordinator *)self navigationDisplay];
    v9 = [v8 cameraController];
    -[NavActionCoordinator setLowGuidanceUserPreferredHeadingOverride:](self, "setLowGuidanceUserPreferredHeadingOverride:", [v9 navigationCameraHeadingOverride]);
  }
}

- (void)dismissTray
{
  v3 = [(NavActionCoordinator *)self navigationTrayContaineeViewController];
  v2 = [v3 cardPresentationController];
  [v2 wantsLayout:1];
}

- (void)dismissVoiceVolumeControlAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = sub_100035E6C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Dismiss Voice Volume Control", v10, 2u);
  }

  v6 = [(NavActionCoordinator *)self containerViewController];
  v7 = [v6 currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [(NavActionCoordinator *)self containerViewController];
    [v9 popLastViewControllerAnimated:v3];
  }
}

- (void)dismissShareETA
{
  v3 = [(NavActionCoordinator *)self containerViewController];
  v4 = [v3 currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(NavActionCoordinator *)self containerViewController];
    [v6 popLastViewControllerAnimated:0];
  }

  v7 = [(NavActionCoordinator *)self containerViewController];
  v8 = [v7 currentViewController];
  objc_opt_class();
  v9 = objc_opt_isKindOfClass();

  if (v9)
  {
    v10 = [(NavActionCoordinator *)self containerViewController];
    [v10 popLastViewControllerAnimated:0];
  }
}

- (void)dismissModalContainee
{
  v3 = [(NavActionCoordinator *)self containerViewController];
  v4 = [v3 currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(NavActionCoordinator *)self containerViewController];
    [v6 popLastViewControllerAnimated:0];
  }
}

- (void)clearSearch
{
  resultsViewController = self->_resultsViewController;
  self->_resultsViewController = 0;

  searchHomeViewController = self->_searchHomeViewController;
  if (searchHomeViewController)
  {

    [(SearchViewController *)searchHomeViewController cleanSearch];
  }
}

- (void)dismissSearchAlongRoute
{
  v3 = [(NavActionCoordinator *)self containerViewController];
  v4 = [v3 currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(NavActionCoordinator *)self _presentTrayWithDefaultLayout:1 animated:1];
  }

  [(NavActionCoordinator *)self clearSearch];
  v6 = [(NavActionCoordinator *)self mapItemDisplayer];
  [v6 removeMapItems];

  [(NavActionCoordinator *)self recenterNavigation];
  searchHomeViewController = self->_searchHomeViewController;

  [(SearchViewController *)searchHomeViewController invalidateSearchSession];
}

- (void)dismissPlacecard
{
  v3 = [(NavActionCoordinator *)self containerViewController];
  v4 = [v3 currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(NavActionCoordinator *)self containerViewController];
    [v6 popLastViewControllerAnimated:0];

    if ((MapsFeature_IsEnabled_DrivingMultiWaypointRoutes() & 1) != 0 || (MapsFeature_IsEnabled_Maps420() & 1) != 0 || MapsFeature_IsEnabled_Maps182())
    {
      v7 = [(NavActionCoordinator *)self containerViewController];
      v8 = [v7 controllerIsInStack:self->_resultsViewController];

      if ((v8 & 1) == 0)
      {
        [(NavActionCoordinator *)self recenterNavigation];

        [(NavActionCoordinator *)self _presentTrayWithDefaultLayout:1 animated:1];
      }
    }
  }
}

- (BOOL)shouldShowNavRecenterButton
{
  v3 = [(NavActionCoordinator *)self navigationDisplay];
  if ([v3 isTracking])
  {
    v4 = [(NavActionCoordinator *)self mapViewZoomController];
    v5 = [v4 zoom];
    if (v5 == [(NavActionCoordinator *)self defaultMapViewZoom]&& ![(NavActionCoordinator *)self isNavCameraPanned])
    {
      v6 = [(NavActionCoordinator *)self isNavCameraZoomed];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)toggleTemporaryStatusBar
{
  v2 = [(NavActionCoordinator *)self containerViewController];
  [v2 toggleTemporaryStatusBar];
}

- (void)repeatGuidanceInstruction
{
  v2 = +[MNNavigationService sharedService];
  [v2 repeatCurrentGuidance:0];
}

- (void)updateCameraForTraits:(id)a3 containerStyle:(unint64_t)a4
{
  v6 = a3;
  v7 = [(NavActionCoordinator *)self mapViewZoomController];
  [v7 updateCameraForTraits:v6 containerStyle:a4];
}

- (void)recenterNavigation
{
  v3 = [(NavActionCoordinator *)self mapViewZoomController];
  v4 = [v3 zoom];
  v5 = [(NavActionCoordinator *)self defaultMapViewZoom];

  if (v4 == v5)
  {
    v6 = [(NavActionCoordinator *)self containerViewController];
    v7 = [v6 chromeViewController];
    v8 = [v7 mapView];

    v9 = sub_100798240();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v12 = "[NavActionCoordinator recenterNavigation]";
      v13 = 2114;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s, navigationCameraReturnToPuck! on mapView: %{public}@", buf, 0x16u);
    }

    [v8 navigationCameraReturnToPuck];
  }

  else
  {
    v10 = [(NavActionCoordinator *)self mapViewZoomController];
    [v10 setZoomTo:{-[NavActionCoordinator defaultMapViewZoom](self, "defaultMapViewZoom")}];
  }
}

- (void)viewController:(id)a3 updateMapRect:(id)a4
{
  var1 = a4.var1.var1;
  var0 = a4.var1.var0;
  v6 = a4.var0.var1;
  v7 = a4.var0.var0;
  v8 = [(NavActionCoordinator *)self mapViewZoomController];
  [v8 setZoomToTargetWithRect:{v7, v6, var0, var1}];
}

- (void)detourToWaypoint:(id)a3
{
  v4 = a3;
  v5 = [(NavActionCoordinator *)self mapSelectionManager];
  [v5 clearSelection];

  v6 = [(NavActionCoordinator *)self routeDetourer];
  [v6 detourRouteToWaypoint:v4];

  [(NavActionCoordinator *)self _presentTrayWithDefaultLayout:1 animated:1];

  [(NavActionCoordinator *)self dismissSearchAlongRoute];
}

- (void)detourToMapItem:(id)a3
{
  v4 = a3;
  v5 = [(NavActionCoordinator *)self mapSelectionManager];
  [v5 clearSelection];

  v6 = [(NavActionCoordinator *)self routeDetourer];
  [v6 detourRouteToMapItem:v4];

  [(NavActionCoordinator *)self _presentTrayWithDefaultLayout:1 animated:1];

  [(NavActionCoordinator *)self dismissSearchAlongRoute];
}

- (void)personalizedItemSourceDidChangeItems:(id)a3
{
  v4 = a3;
  v5 = [(NavActionCoordinator *)self containerViewController];
  v6 = [v5 currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    resultsViewController = self->_resultsViewController;
    v9 = [v4 allItems];
    [(GuidanceSearchResultsViewController *)resultsViewController didChangePersonalItems:v9];
  }

  else
  {
    v10 = sub_100035E6C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Ignoring personalized items change as SAR isn't active", v11, 2u);
    }
  }
}

- (void)selectMapItem:(id)a3 shouldRemoveResults:(BOOL)a4 hideAddStop:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = [(NavActionCoordinator *)self containerViewController];
  v10 = [v9 chromeViewController];
  v11 = [v10 mapView];
  objc_initWeak(&location, v11);

  if (!v8)
  {
    v14 = objc_loadWeakRetained(&location);
    [(PlaceCardItem *)v14 _deselectLabelMarkerAnimated:1];
    goto LABEL_26;
  }

  v12 = sub_100035E6C();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [v8 name];
    *buf = 138412290;
    v34 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "SAR: Opening placecard for: %@", buf, 0xCu);
  }

  v14 = [[PlaceCardItem alloc] initWithMapItem:v8];
  v15 = [(NavActionCoordinator *)self containerViewController];
  v16 = [v15 currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0 || (-[NavActionCoordinator containerViewController](self, "containerViewController"), v18 = objc_claimAutoreleasedReturnValue(), [v18 currentViewController], v19 = objc_claimAutoreleasedReturnValue(), v18, objc_msgSend(v19, "placeCardItem"), v20 = objc_claimAutoreleasedReturnValue(), LOBYTE(v18) = -[PlaceCardItem isEqual:](v14, "isEqual:", v20), v20, v19, (v18 & 1) == 0))
  {
    v21 = [(NavActionCoordinator *)self placecardViewController];
    [v21 resetState];
    if (v5)
    {
      v22 = 0;
LABEL_21:
      [v21 setIsAdditionalStop:v22];
      [v21 setExcludedContent:{-[NavActionCoordinator excludedContentForMapItem:](self, "excludedContentForMapItem:", v8) | v5}];
      [v21 setPlaceCardItem:v14 withHistory:0];
      [(NavActionCoordinator *)self presentPlacecardViewController];
      if (v6)
      {
        v25 = sub_100035E6C();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "SAR: Removing resultsViewController from the stack.", buf, 2u);
        }

        v26 = [(NavActionCoordinator *)self containerViewController];
        [v26 removeControllerFromStack:self->_resultsViewController];

        resultsViewController = self->_resultsViewController;
        self->_resultsViewController = 0;
      }

      v14 = [[PersonalizedMapItemKey alloc] initWithMapItem:v8];
      v28 = [(NavActionCoordinator *)self customPOIsController];
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_100FBB320;
      v29[3] = &unk_101660180;
      objc_copyWeak(&v31, &location);
      v30 = v8;
      [v28 customFeatureForKey:v14 completion:v29];

      objc_destroyWeak(&v31);
      goto LABEL_26;
    }

    v23 = [(NavActionCoordinator *)self navigationTransportType];
    v22 = 0;
    if (v23 > 1)
    {
      if (v23 != 2)
      {
        if (v23 != 5)
        {
          goto LABEL_21;
        }

        IsEnabled_Maps420 = MapsFeature_IsEnabled_Maps420();
        goto LABEL_20;
      }
    }

    else
    {
      if (v23)
      {
        if (v23 != 1)
        {
          goto LABEL_21;
        }

        IsEnabled_Maps420 = MapsFeature_IsEnabled_DrivingMultiWaypointRoutes();
LABEL_20:
        v22 = IsEnabled_Maps420;
        goto LABEL_21;
      }

      if (MapsFeature_IsEnabled_DrivingMultiWaypointRoutes() & 1) != 0 || (MapsFeature_IsEnabled_Maps420())
      {
        v22 = 1;
        goto LABEL_21;
      }
    }

    IsEnabled_Maps420 = MapsFeature_IsEnabled_Maps182();
    goto LABEL_20;
  }

LABEL_26:

  objc_destroyWeak(&location);
}

- (void)viewController:(id)a3 switchNavigationToRoute:(id)a4
{
  v16 = a4;
  v5 = +[MNNavigationService sharedService];
  v6 = [v5 route];
  v7 = [v6 isEqual:v16];

  if ((v7 & 1) == 0)
  {
    v8 = [(NavActionCoordinator *)self trafficIncidentAlertCoordinator];
    v9 = [v8 presentedAlert];

    if ([v9 alertType] != 1 || (objc_msgSend(v9, "originalRoute"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqual:", v16), v10, (v11 & 1) == 0))
    {
      v12 = +[MNNavigationService sharedService];
      v13 = [v12 alternateRouteIndexForRoute:v16];

      v14 = +[MNNavigationService sharedService];
      [v14 switchToRoute:v16];

      v15 = +[MKMapService sharedService];
      [v15 captureUserAction:3015 onTarget:505 eventValue:0 routeIndex:v13];
    }
  }
}

- (int64_t)navigationTransportType
{
  v2 = +[MNNavigationService sharedService];
  if ([v2 isInNavigatingState])
  {
    v3 = [v2 navigationTransportType];
  }

  else
  {
    v3 = [v2 desiredTransportType];
  }

  if (v3 - 1 > 5)
  {
    v4 = 1;
  }

  else
  {
    v4 = qword_101216278[v3 - 1];
  }

  return v4;
}

- (unint64_t)navigationCameraMode
{
  v2 = [(NavActionCoordinator *)self navigationCameraModeController];
  v3 = [v2 navigationCameraMode];

  return v3;
}

- (void)sender:(id)a3 switchToNavigationCameraMode:(unint64_t)a4
{
  v6 = [(NavActionCoordinator *)self navigationCameraModeController];
  [v6 setNavigationCameraMode:a4];

  v7 = [(NavActionCoordinator *)self containerViewController];
  [v7 updateLayoutAnimated:1];
}

- (void)viewController:(id)a3 switchToMapViewZoom:(unint64_t)a4
{
  if (a4 != 2)
  {
    v7 = [(NavActionCoordinator *)self mapViewZoomController];
    [v7 setZoomTo:a4];

    v8 = [(NavActionCoordinator *)self navigationTrayContaineeViewController];
    v9 = [v8 cardPresentationController];

    if ([v9 containeeLayout] != 1)
    {
      [v9 wantsLayout:1];
    }
  }
}

- (void)viewController:(id)a3 doSearchItem:(id)a4 withUserInfo:(id)a5
{
  v6 = a4;
  v7 = [GuidanceSearchResultsCategoryDataProvider alloc];
  v8 = +[MKMapService sharedService];
  v9 = [(NavActionCoordinator *)self containerViewController];
  v10 = [v9 chromeViewController];
  v15 = [(GuidanceSearchResultsCategoryDataProvider *)v7 initWithSearchItem:v6 mapService:v8 chromeViewController:v10];

  v11 = [GuidanceSearchResultsViewModel alloc];
  v12 = [(NavActionCoordinator *)self routeInfoProvider];
  v13 = [(NavActionCoordinator *)self mapItemDisplayer];
  v14 = [(GuidanceSearchResultsViewModel *)v11 initWithDataProvider:v15 navActionCoordinator:self routeInfoProvider:v12 mapItemDisplayer:v13];

  [(NavActionCoordinator *)self presentSearchAlongTheRouteWithViewModel:v14];
}

- (void)resumeNavigation
{
  v2 = sub_100035E6C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "User pressed resume", v4, 2u);
  }

  v3 = +[MNNavigationService sharedService];
  [v3 advanceToNextLeg];
}

- (void)pauseNavigation
{
  v3 = sub_100035E6C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "User pressed pause", v6, 2u);
  }

  v4 = +[MNNavigationService sharedService];
  [v4 stopNavigationWithReason:3];

  v5 = [(NavActionCoordinator *)self containerViewController];
  [v5 willDismissNavigationAnimated:1];
}

- (void)_willDismissNavMode
{
  v3 = [(NavActionCoordinator *)self mapViewZoomController];
  [v3 setZoomTo:{-[NavActionCoordinator defaultMapViewZoom](self, "defaultMapViewZoom")}];

  v4 = [(NavActionCoordinator *)self mapViewZoomController];
  [v4 updateCameraForTraits:0 containerStyle:0];
}

- (BOOL)canPresentRapFeedbackView
{
  v2 = [(NavActionCoordinator *)self rapNavigationTracker];
  v3 = [v2 canPresentRapFeedbackView];

  return v3;
}

- (void)pressedEndWithSender:(id)a3 feedback:(unint64_t)a4
{
  v6 = a3;
  v7 = sub_100035E6C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "User pressed end", buf, 2u);
  }

  v8 = [(NavActionCoordinator *)self containerViewController];
  [v8 willDismissNavigationAnimated:1];

  [(NavActionCoordinator *)self _willDismissNavMode];
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      objc_initWeak(buf, self);
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100FBBBD0;
      v10[3] = &unk_1016600B8;
      objc_copyWeak(&v11, buf);
      [UIApplication _maps_unlockApplicationWithCompletion:v10];
      objc_destroyWeak(&v11);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_appCoordinator);
    [WeakRetained endNavigationAndReturnToRoutePlanning:0];
  }
}

- (void)pressedViewWaypoint:(id)a3
{
  v4 = [a3 mkMapItem];
  [(NavActionCoordinator *)self selectMapItem:v4 shouldRemoveResults:0 hideAddStop:1];
}

- (void)senderOpenListStep:(id)a3 fullscreen:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = +[MNNavigationService sharedService];
  v8 = [v7 navigationTransportType];

  if (v8 == 2)
  {
    +[RouteStepListMetrics routePlanningMetrics];
  }

  else
  {
    +[RouteStepListMetrics navigationMetrics];
  }
  v9 = ;
  v10 = v8 == 2;
  v11 = [[RouteStepListViewController alloc] initWithOptions:23 metrics:v9];
  [(RouteStepListViewController *)v11 setDelegate:self];
  [(RouteStepListViewController *)v11 setDisplayRouteFromNavigationService:1];
  [(RouteStepListViewController *)v11 setAllowsSelection:v10];
  v12 = [[ModalContaineeViewController alloc] initWithChildViewController:v11 visualEffectDisabled:1 fullScreen:1];
  v13 = [(ModalContaineeViewController *)v12 headerView];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"Directions_Navigation" value:@"localized string not found" table:0];
  [v13 setTitle:v15];

  objc_initWeak(&location, self);
  if (v4)
  {
    [(ContaineeViewController *)v12 setKeepOriginalSafeInsets:1];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100FBC3AC;
    v20[3] = &unk_101661B98;
    v16 = &v21;
    objc_copyWeak(&v21, &location);
    [(ModalContaineeViewController *)v12 setBlockAlongDismissContainee:v20];
  }

  else
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100FBC400;
    v18[3] = &unk_101661B98;
    v16 = &v19;
    objc_copyWeak(&v19, &location);
    [(ModalContaineeViewController *)v12 setBlockAlongDismissContainee:v18];
  }

  objc_destroyWeak(v16);
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained presentController:v12];

  objc_destroyWeak(&location);
}

- (void)directionsStepsList:(id)a3 didTapRowForRouteStep:(id)a4
{
  v12 = a4;
  v5 = [(NavActionCoordinator *)self containerViewController];
  v6 = [v5 isForWalkingNav];

  if (v6)
  {
    v7 = [(NavActionCoordinator *)self containerViewController];
    [v7 showSignForStep:v12];

    v8 = [(NavActionCoordinator *)self containerViewController];
    v9 = [v8 currentViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [(NavActionCoordinator *)self dismissModalContainee];
      [(NavActionCoordinator *)self dismissTray];
    }

    else
    {
      v11 = [(NavActionCoordinator *)self containerViewController];
      [v11 setLayoutIfSupported:1 animated:1];
    }
  }
}

- (void)showVLF
{
  v3 = [(NavActionCoordinator *)self containerViewController];
  v4 = [v3 currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v19 = [(NavActionCoordinator *)self containerViewController];
    v6 = [v19 currentViewController];
    [v6 handleVLFPuckTapped];
  }

  else
  {
    objc_initWeak(&location, self);
    v7 = [(NavActionCoordinator *)self containerViewController];
    v8 = [(NavActionCoordinator *)self containerViewController];
    v9 = [v8 chromeViewController];
    v10 = [v9 appCoordinator];
    v11 = [v10 baseActionCoordinator];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100FBC7E8;
    v20[3] = &unk_1016619A8;
    objc_copyWeak(&v21, &location);
    v12 = [v7 showVLFCrowdsourcingPermissionCardWithContaineeDelegate:self delegate:v11 completion:v20];

    if ((v12 & 1) == 0)
    {
      v13 = [(NavActionCoordinator *)self containerViewController];
      v14 = [v13 chromeViewController];
      v15 = [v14 userLocationView];

      if ([v15 isVLFBannerVisible])
      {
        v16 = 2;
      }

      else
      {
        v16 = [v15 isVLFPuckVisible];
      }

      v17 = [[VLFContaineeViewController alloc] initWithEntryPoint:v16];
      [(ContaineeViewController *)v17 setContaineeDelegate:self];
      v18 = [(NavActionCoordinator *)self containerViewController];
      [v18 presentController:v17];
    }

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }
}

- (void)dismissPedestrianARTeachableMomentCardIfNecessary
{
  v3 = [(NavActionCoordinator *)self containerViewController];
  v4 = [v3 currentViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    v5 = [(NavActionCoordinator *)self containerViewController];
    v6 = [v5 currentViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      return;
    }
  }

  v8 = sub_100035E6C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [(NavActionCoordinator *)self containerViewController];
    v10 = [v9 currentViewController];
    v14 = 138412290;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Dismissing Pedestrian AR teachable moment card: %@", &v14, 0xCu);
  }

  v11 = [(NavActionCoordinator *)self containerViewController];
  v12 = [(NavActionCoordinator *)self containerViewController];
  v13 = [v12 currentViewController];
  [v11 removeControllerFromStack:v13];
}

- (void)showPedestrianARRaiseToEnterTeachableMomentCard
{
  v3 = [(NavActionCoordinator *)self containerViewController];
  v4 = [v3 currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = sub_100035E6C();
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
    v7 = [(NavActionCoordinator *)self containerViewController];
    [v7 presentController:v8 animated:1];
  }
}

- (void)showPedestrianARFeatureIntroTeachableMomentCard
{
  v3 = [(NavActionCoordinator *)self containerViewController];
  v4 = [v3 currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = sub_100035E6C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "The Pedestrian AR feature intro teachable moment card is already visible; can't show twice", buf, 2u);
    }
  }

  else
  {
    v8 = [[PedestrianARFeatureIntroTeachableMomentContaineeViewController alloc] initWithCoordinator:self];
    [(ContaineeViewController *)v8 setContaineeDelegate:self];
    v7 = [(NavActionCoordinator *)self containerViewController];
    [v7 presentController:v8 animated:1];
  }
}

- (BOOL)isWeatherPopoverActive
{
  v2 = [(NavActionCoordinator *)self containerViewController];
  v3 = [v2 _maps_mapsSceneDelegate];
  v4 = [v3 topMostPresentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)isTeachableMomentCardActive
{
  v2 = [(NavActionCoordinator *)self containerViewController];
  v3 = [v2 currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)exitPedestrianAR
{
  v2 = [(NavActionCoordinator *)self appCoordinator];
  [v2 exitPedestrianAR];
}

- (void)enterPedestrianAR
{
  v3 = sub_100035E6C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Will enter pedestrian AR from navigation", buf, 2u);
  }

  if (![(NavActionCoordinator *)self canEnterPedestrianAR])
  {
    v25 = sub_100035E6C();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
LABEL_30:

      return;
    }

    v26 = self;
    if (!v26)
    {
      v31 = @"<nil>";
      goto LABEL_29;
    }

    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    if (objc_opt_respondsToSelector())
    {
      v29 = [(NavActionCoordinator *)v26 performSelector:"accessibilityIdentifier"];
      v30 = v29;
      if (v29 && ![v29 isEqualToString:v28])
      {
        v31 = [NSString stringWithFormat:@"%@<%p, %@>", v28, v26, v30];

        goto LABEL_27;
      }
    }

    v31 = [NSString stringWithFormat:@"%@<%p>", v28, v26];
LABEL_27:

LABEL_29:
    *buf = 138543362;
    v47 = v31;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "[%{public}@] Cannot enter pedestrian AR at the moment", buf, 0xCu);

    goto LABEL_30;
  }

  objc_initWeak(&location, self);
  v4 = [(NavActionCoordinator *)self containerViewController];
  v5 = [(NavActionCoordinator *)self containerViewController];
  v6 = [v5 chromeViewController];
  v7 = [v6 appCoordinator];
  v8 = [v7 baseActionCoordinator];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_100FBD710;
  v43[3] = &unk_1016619A8;
  objc_copyWeak(&v44, &location);
  v9 = [v4 showVLFCrowdsourcingPermissionCardWithContaineeDelegate:self delegate:v8 completion:v43];

  if ((v9 & 1) == 0)
  {
    v10 = [(NavActionCoordinator *)self containerViewController];
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

    v14 = [(NavActionCoordinator *)self containerViewController];
    v15 = [v14 currentViewController];

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

    if (v13)
    {
      v18 = sub_100035E6C();
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
LABEL_42:
        v38 = v13;
LABEL_47:

        [(NavActionCoordinator *)self containeeViewControllerGoToPreviousState:v38 withSender:0];
        goto LABEL_48;
      }

      v19 = self;
      if (!v19)
      {
        v24 = @"<nil>";
        goto LABEL_41;
      }

      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      if (objc_opt_respondsToSelector())
      {
        v22 = [(NavActionCoordinator *)v19 performSelector:"accessibilityIdentifier"];
        v23 = v22;
        if (v22 && ([v22 isEqualToString:v21] & 1) == 0)
        {
          v24 = [NSString stringWithFormat:@"%@<%p, %@>", v21, v19, v23];

          goto LABEL_19;
        }
      }

      v24 = [NSString stringWithFormat:@"%@<%p>", v21, v19];
LABEL_19:

LABEL_41:
      *buf = 138543362;
      v47 = v24;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "[%{public}@] Feature intro teachable moment card is active; dismissing it before entering AR", buf, 0xCu);

      goto LABEL_42;
    }

    if (!v17)
    {
LABEL_48:
      v39 = [(NavActionCoordinator *)self appCoordinator];
      v40 = [(NavActionCoordinator *)self containerViewController];
      v41 = [v40 route];
      v42 = [(NavActionCoordinator *)self guidanceObserver];
      [v39 enterPedestrianARWithRoute:v41 guidanceObserver:v42];

      goto LABEL_49;
    }

    v18 = sub_100035E6C();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
LABEL_46:
      v38 = v17;
      goto LABEL_47;
    }

    v32 = self;
    if (!v32)
    {
      v37 = @"<nil>";
      goto LABEL_45;
    }

    v33 = objc_opt_class();
    v34 = NSStringFromClass(v33);
    if (objc_opt_respondsToSelector())
    {
      v35 = [(NavActionCoordinator *)v32 performSelector:"accessibilityIdentifier"];
      v36 = v35;
      if (v35 && ([v35 isEqualToString:v34] & 1) == 0)
      {
        v37 = [NSString stringWithFormat:@"%@<%p, %@>", v34, v32, v36];

        goto LABEL_39;
      }
    }

    v37 = [NSString stringWithFormat:@"%@<%p>", v34, v32];
LABEL_39:

LABEL_45:
    *buf = 138543362;
    v47 = v37;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "[%{public}@] Raise to enter teachable moment card is active; dismissing it before entering AR", buf, 0xCu);

    goto LABEL_46;
  }

LABEL_49:
  objc_destroyWeak(&v44);
  objc_destroyWeak(&location);
}

- (BOOL)canEnterPedestrianAR
{
  if (!+[PedestrianARSessionTask isPedestrianARModeSupported])
  {
    v7 = sub_100035E6C();
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

  v3 = [(NavActionCoordinator *)self containerViewController];
  v4 = [v3 route];

  if (!v4)
  {
    v7 = sub_100035E6C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      v9 = "Cannot enter pedestrian AR without a route";
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  v5 = [(NavActionCoordinator *)self appCoordinator];
  v6 = [v5 platformController];
  v7 = [v6 pedestrianARSessionStateManager];

  if (([v7 shouldShowPedestrianAR]& 1) == 0)
  {
    v10 = sub_100035E6C();
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
  if (![(NavActionCoordinator *)self isPedestrianARActive])
  {
    return 0;
  }

  v3 = [(NavActionCoordinator *)self appCoordinator];
  v4 = [v3 chromeViewController];
  v5 = [v4 topContext];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = [(NavActionCoordinator *)self appCoordinator];
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
  v2 = [(NavActionCoordinator *)self appCoordinator];
  v3 = [v2 chromeViewController];
  v4 = [v3 topContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)resetMapViewZoomToDefaultAndStartCameraTracking:(BOOL)a3
{
  v3 = a3;
  v5 = [(NavActionCoordinator *)self mapViewZoomController];
  [v5 setZoomTo:-[NavActionCoordinator defaultMapViewZoom](self startCameraTracking:{"defaultMapViewZoom"), v3}];
}

- (void)presentSearchAlongTheRouteResults
{
  v3 = [(NavActionCoordinator *)self containerViewController];
  v4 = [v3 currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    if (+[UIApplication _maps_isAnyCarPlayApplicationSceneForeground])
    {
      v6 = sub_100035E6C();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Cannot show SAR results when carplay scene is foregrounded.", buf, 2u);
      }
    }

    else
    {
      [(NavActionCoordinator *)self setSearchingAlongTheRoute:1];
      v7 = objc_alloc_init(GuidanceSearchResultsViewController);
      resultsViewController = self->_resultsViewController;
      self->_resultsViewController = v7;

      [(GuidanceSearchResultsViewController *)self->_resultsViewController setNavContaineeDelegate:self];
      v9 = [(NavActionCoordinator *)self containerViewController];
      [v9 presentController:self->_resultsViewController];
    }
  }
}

- (void)presentSearchAlongTheRouteWithViewModel:(id)a3
{
  v8 = a3;
  [(NavActionCoordinator *)self setSearchingAlongTheRoute:1];
  resultsViewController = self->_resultsViewController;
  if (resultsViewController)
  {
    [(GuidanceSearchResultsViewController *)resultsViewController configureWithViewModel:v8];
  }

  else
  {
    v5 = [[GuidanceSearchResultsViewController alloc] initWithViewModel:v8];
    v6 = self->_resultsViewController;
    self->_resultsViewController = v5;

    [(GuidanceSearchResultsViewController *)self->_resultsViewController setNavContaineeDelegate:self];
  }

  v7 = [(NavActionCoordinator *)self containerViewController];
  [v7 presentController:self->_resultsViewController];
}

- (void)presentAddStopUsingCategories:(id)a3
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100FBE178;
  v6[3] = &unk_101661A90;
  v6[4] = self;
  v3 = a3;
  v7 = v3;
  v4 = objc_retainBlock(v6);
  v5 = 0;
  SBSGetScreenLockStatus();
  (v4[2])(v4);
}

- (void)sendOtherEVStationsRequest:(unint64_t)a3
{
  [(NavActionCoordinator *)self setSearchingAlongTheRoute:1];
  v16[0] = &__kCFBooleanTrue;
  v15[0] = @"SearchSessionIsSearchAlongRoute";
  v15[1] = @"SearchSessionSearchAlongRouteImplicitRequestMUID";
  v5 = [NSNumber numberWithUnsignedLongLong:a3];
  v15[2] = @"SearchSessionIsSearchAlongRouteEVStationRequest";
  v16[1] = v5;
  v16[2] = &__kCFBooleanTrue;
  v6 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:3];

  v7 = objc_alloc_init(SearchFieldItem);
  v8 = [(NavActionCoordinator *)self appCoordinator];
  v9 = [v8 baseActionCoordinator];

  if (v9)
  {
    v10 = [(NavActionCoordinator *)self appCoordinator];
    v11 = [v10 baseActionCoordinator];
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    v13 = [v6 copy];
    [v11 viewController:WeakRetained doSearchItem:v7 withUserInfo:v13];
  }

  else
  {
    v10 = sub_100035E6C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "The action coordinator is nil.", v14, 2u);
    }
  }
}

- (void)presentSimpleResultsViewController
{
  v3 = [(NavActionCoordinator *)self containerViewController];
  v4 = [v3 currentViewController];
  v5 = [(NavActionCoordinator *)self simpleResultsViewController];

  if (v4 == v5)
  {
    goto LABEL_4;
  }

  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v7 = [WeakRetained currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v10 = objc_loadWeakRetained(&self->_containerViewController);
  v9 = [(NavActionCoordinator *)self simpleResultsViewController];
  if (isKindOfClass)
  {
    [v10 replaceCurrentWithController:v9];

LABEL_4:
    v10 = [(NavActionCoordinator *)self simpleResultsViewController];
    v9 = [v10 cardPresentationController];
    [v9 wantsLayout:2];
    goto LABEL_6;
  }

  [v10 presentController:v9];
LABEL_6:
}

- (void)presentPlacecardViewController
{
  v3 = [(NavActionCoordinator *)self containerViewController];
  v4 = [v3 currentViewController];
  v5 = [(NavActionCoordinator *)self placecardViewController];

  if (v4 == v5)
  {
    v19 = [(NavActionCoordinator *)self placecardViewController];
    v17 = [v19 cardPresentationController];
    [v17 wantsLayout:2];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    v7 = [WeakRetained currentViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v9 = objc_loadWeakRetained(&self->_containerViewController);
    v10 = v9;
    if ((isKindOfClass & 1) == 0)
    {
      v18 = [(NavActionCoordinator *)self placecardViewController];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100FBE9B0;
      v20[3] = &unk_101661738;
      v20[4] = self;
      [v10 presentController:v18 animated:1 completion:v20];

      return;
    }

    v19 = [v9 currentViewController];

    v11 = [(NavActionCoordinator *)self placecardViewController];
    v12 = [v11 placeCardItem];
    v13 = [v12 mapItem];
    v14 = [v19 containsMapItem:v13];

    v15 = objc_loadWeakRetained(&self->_containerViewController);
    v16 = [(NavActionCoordinator *)self placecardViewController];
    if (v14)
    {
      [v15 presentController:v16];
    }

    else
    {
      [v15 replaceCurrentWithController:v16];

      v15 = [(NavActionCoordinator *)self placecardViewController];
      v16 = [v15 cardPresentationController];
      [v16 wantsLayout:2];
    }
  }
}

- (void)dismissReportAnIncidentAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = sub_100035E6C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Dismiss Report an Incident", v10, 2u);
  }

  v6 = [(NavActionCoordinator *)self containerViewController];
  v7 = [v6 currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [(NavActionCoordinator *)self containerViewController];
    [v9 popLastViewControllerAnimated:v3];
  }
}

- (void)dismissAddStopAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = sub_100035E6C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Dismiss SAR category list", v10, 2u);
  }

  [(NavActionCoordinator *)self setSearchingAlongTheRoute:0];
  v6 = [(NavActionCoordinator *)self containerViewController];
  v7 = [v6 currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [(NavActionCoordinator *)self containerViewController];
    [v9 popLastViewControllerAnimated:v3];
  }
}

- (SearchViewController)searchHomeViewController
{
  searchHomeViewController = self->_searchHomeViewController;
  if (!searchHomeViewController)
  {
    v4 = [[SearchViewController alloc] initWithSearchAlongRoute:1];
    v5 = self->_searchHomeViewController;
    self->_searchHomeViewController = v4;

    [(SearchViewController *)self->_searchHomeViewController setNavContaineeDelegate:self];
    v6 = [(NavActionCoordinator *)self containerViewController];
    v7 = [v6 chromeViewController];
    v8 = [v7 appCoordinator];
    v9 = [v8 baseActionCoordinator];
    [(ControlContaineeViewController *)self->_searchHomeViewController setDelegate:v9];

    [(SearchViewController *)self->_searchHomeViewController setSearchingAlongTheRoute:1];
    v10 = [(NavActionCoordinator *)self containerViewController];
    v11 = [v10 chromeViewController];
    v12 = [v11 personalizedItemManager];
    [(SearchViewController *)self->_searchHomeViewController setPersonalizedItemManager:v12];

    v13 = [(NavActionCoordinator *)self containerViewController];
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

    v19 = [(ContaineeViewController *)self->_searchHomeViewController cardPresentationController];
    [v19 setDefaultContaineeLayout:v18];

    searchHomeViewController = self->_searchHomeViewController;
  }

  return searchHomeViewController;
}

- (void)_presentTrayWithDefaultLayout:(BOOL)a3 animated:(BOOL)a4
{
  v6 = self;
  [(NavActionCoordinator *)self setSearchingAlongTheRoute:0];
  [(NavActionCoordinator *)v6 setDisplayingTrafficIncident:0];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100FBEE60;
  v9[3] = &unk_101660130;
  v9[4] = v6;
  v10 = a4;
  v11 = a3;
  v7 = objc_retainBlock(v9);
  v8 = +[UIApplication sharedApplication];
  LODWORD(v6) = [v8 screenIsLocked];

  if (v6)
  {
    [UIViewController _performWithoutDeferringTransitions:v7];
  }

  else
  {
    (v7[2])(v7);
  }
}

- (void)presentTray
{
  if (qword_10195DF00 != -1)
  {
    dispatch_once(&qword_10195DF00, &stru_1016303F0);
  }

  v3 = byte_10195DF08;

  [(NavActionCoordinator *)self _presentTrayWithDefaultLayout:1 animated:v3];
}

- (_TtC4Maps38RouteAnnotationContaineeViewController)routeAnnotationViewController
{
  routeAnnotationViewController = self->_routeAnnotationViewController;
  if (!routeAnnotationViewController)
  {
    v4 = [[_TtC4Maps38RouteAnnotationContaineeViewController alloc] initWithRouteAnnotation:0];
    v5 = self->_routeAnnotationViewController;
    self->_routeAnnotationViewController = v4;

    [(ContaineeViewController *)self->_routeAnnotationViewController setContaineeDelegate:self];
    routeAnnotationViewController = self->_routeAnnotationViewController;
  }

  return routeAnnotationViewController;
}

- (NavTrafficIncidentContaineeViewController)trafficIncidentViewController
{
  trafficIncidentViewController = self->_trafficIncidentViewController;
  if (!trafficIncidentViewController)
  {
    v4 = objc_alloc_init(NavTrafficIncidentContaineeViewController);
    v5 = self->_trafficIncidentViewController;
    self->_trafficIncidentViewController = v4;

    [(ContaineeViewController *)self->_trafficIncidentViewController setContaineeDelegate:self];
    objc_initWeak(&location, self);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100FBF0A0;
    v7[3] = &unk_101661B98;
    objc_copyWeak(&v8, &location);
    [(NavTrafficIncidentContaineeViewController *)self->_trafficIncidentViewController setDismissHandler:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
    trafficIncidentViewController = self->_trafficIncidentViewController;
  }

  return trafficIncidentViewController;
}

- (SimpleResultsViewController)simpleResultsViewController
{
  simpleResultsViewController = self->_simpleResultsViewController;
  if (!simpleResultsViewController)
  {
    v4 = [SimpleResultsViewController alloc];
    v5 = [(NavActionCoordinator *)self appCoordinator];
    v6 = [(SimpleResultsViewController *)v4 initWithShareDelegate:v5 visualEffectDisabled:1];
    v7 = self->_simpleResultsViewController;
    self->_simpleResultsViewController = v6;

    [(SimpleResultsViewController *)self->_simpleResultsViewController setResultsDelegate:self];
    [(ContaineeViewController *)self->_simpleResultsViewController setContaineeDelegate:self];
    [(SimpleResultsViewController *)self->_simpleResultsViewController setIsPresentingSearchAlongTheRouteResults:1];
    simpleResultsViewController = self->_simpleResultsViewController;
  }

  return simpleResultsViewController;
}

- (PlaceCardViewController)placecardViewController
{
  placecardViewController = self->_placecardViewController;
  if (!placecardViewController)
  {
    v4 = [[PlaceCardViewController alloc] initWithVisualEffectDisabled:1];
    v5 = self->_placecardViewController;
    self->_placecardViewController = v4;

    [(PlaceCardViewController *)self->_placecardViewController setPlaceCardDelegate:self];
    [(InfoCardViewController *)self->_placecardViewController setContaineeDelegate:self];
    [(PlaceCardViewController *)self->_placecardViewController setIsPresentedInSearchAlongTheRoute:1];
    placecardViewController = self->_placecardViewController;
  }

  return placecardViewController;
}

- (int64_t)excludedContentForMapItem:(id)a3
{
  v3 = [a3 _geoMapItem];
  v4 = [v3 detourInfo];

  if (v4)
  {
    return 14699;
  }

  else
  {
    return 14714;
  }
}

- (double)mapViewYaw
{
  v2 = [(NavActionCoordinator *)self navigationDisplay];
  v3 = [v2 mapView];
  [v3 presentationYaw];
  v5 = v4;

  return v5;
}

- (unint64_t)navigationCameraHeadingOverride
{
  v2 = [(NavActionCoordinator *)self navigationDisplay];
  v3 = [v2 cameraController];
  v4 = [v3 navigationCameraHeadingOverride];

  return v4;
}

- (NavigationRouteDetouring)routeDetourer
{
  routeDetourer = self->_routeDetourer;
  if (!routeDetourer)
  {
    v4 = [NavigationRouteInterrupter alloc];
    v5 = MapsSuggestionsEngineForMapsProcess();
    v6 = [(NavigationRouteInterrupter *)v4 initWithSuggestionsEngine:v5 delegate:0];

    v7 = [NavigationRouteDetourer alloc];
    v8 = +[MNNavigationService sharedService];
    v9 = [(NavActionCoordinator *)self appCoordinator];
    v10 = [v9 platformController];
    v11 = [(NavActionCoordinator *)self routeInfoProvider];
    v12 = [(NavigationRouteDetourer *)v7 initWithNavigationService:v8 platformController:v10 routeInfoProvider:v11 routeInterrupter:v6];
    v13 = self->_routeDetourer;
    self->_routeDetourer = v12;

    routeDetourer = self->_routeDetourer;
  }

  return routeDetourer;
}

- (NavigationRouteHistoryInfoProviding)routeInfoProvider
{
  routeInfoProvider = self->_routeInfoProvider;
  if (!routeInfoProvider)
  {
    v4 = [NavigationRouteHistoryInfoProvider alloc];
    v5 = +[MNNavigationService sharedService];
    v6 = [(NavigationRouteHistoryInfoProvider *)v4 initWithNavigationService:v5];
    v7 = self->_routeInfoProvider;
    self->_routeInfoProvider = v6;

    routeInfoProvider = self->_routeInfoProvider;
  }

  return routeInfoProvider;
}

- (void)setDefaultContaineeViewControllerType:(unint64_t)a3
{
  if (self->_defaultContaineeViewControllerType != a3)
  {
    self->_defaultContaineeViewControllerType = a3;
    if (a3)
    {
      if (a3 != 1)
      {
        return;
      }

      v3 = [(NavActionCoordinator *)self guidanceObserver];
      [v3 pauseUpdates];
    }

    else
    {
      v3 = [(NavActionCoordinator *)self guidanceObserver];
      [v3 resumeUpdates];
    }
  }
}

- (void)handleSearchActionUsingSearchFieldItem:(id)a3 withUserInfo:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NavActionCoordinator *)self searchSessionManager];

  if (!v8)
  {
    v9 = objc_alloc_init(SearchSessionManager);
    [(NavActionCoordinator *)self setSearchSessionManager:v9];

    v10 = [(NavActionCoordinator *)self containerViewController];
    v11 = [v10 chromeViewController];
    v12 = [v11 appCoordinator];
    v13 = [v12 baseActionCoordinator];
    v14 = [(NavActionCoordinator *)self searchSessionManager];
    [v14 setCoordinator:v13];
  }

  [(NavActionCoordinator *)self setSearchingAlongTheRoute:1];
  v16 = [(NavActionCoordinator *)self searchSessionManager];
  v15 = [(SearchViewController *)self->_searchHomeViewController recentAutocompleteSessionData];
  [v16 performSearchForSearchItem:v7 withUserInfo:v6 recentAutocompleteSessionData:v15];
}

- (void)setCurrentSearchInfo:(id)a3 error:(id)a4
{
  v24 = a3;
  v7 = a4;
  v8 = +[MNNavigationService sharedService];
  v9 = [v8 navigationTransportType];
  if (v9 <= 2)
  {
    if (v9 != 1)
    {
      if (v9 == 2)
      {
        IsEnabled_Maps182 = MapsFeature_IsEnabled_Maps182();
        goto LABEL_14;
      }

      goto LABEL_8;
    }

LABEL_7:

    goto LABEL_9;
  }

  if (v9 == 3)
  {
    IsEnabled_Maps182 = MapsFeature_IsEnabled_Maps420();
LABEL_14:
    v19 = IsEnabled_Maps182;

    if (v19)
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  if (v9 == 6)
  {
    goto LABEL_7;
  }

LABEL_8:
  IsEnabled_DrivingMultiWaypointRoutes = MapsFeature_IsEnabled_DrivingMultiWaypointRoutes();

  if (IsEnabled_DrivingMultiWaypointRoutes)
  {
LABEL_15:
    objc_storeStrong(&self->_currentSearchInfo, a3);
    [(NavActionCoordinator *)self presentSearchAlongTheRouteResults];
    v12 = [[GuidanceSearchResultsSearchInfoDataProvider alloc] initWithSearchInfo:v24 error:v7];
    v20 = [GuidanceSearchResultsViewModel alloc];
    v21 = [(NavActionCoordinator *)self routeInfoProvider];
    v22 = [(NavActionCoordinator *)self mapItemDisplayer];
    v17 = [(GuidanceSearchResultsViewModel *)v20 initWithDataProvider:v12 navActionCoordinator:self routeInfoProvider:v21 mapItemDisplayer:v22];

    v23 = [v24 placeSummaryMetadata];
    [(GuidanceSearchResultsViewModel *)v17 setPlaceSummaryMetadata:v23];

    [(GuidanceSearchResultsViewController *)self->_resultsViewController configureWithViewModel:v17];
LABEL_17:

    goto LABEL_18;
  }

LABEL_9:
  v12 = [v24 results];
  if ([(GuidanceSearchResultsSearchInfoDataProvider *)v12 count])
  {
    v13 = [v24 isSearchAlongRoute];

    if (!v13)
    {
      goto LABEL_19;
    }

    v12 = [[GuidanceSearchResultsSearchInfoDataProvider alloc] initWithSearchInfo:v24 error:v7];
    v14 = [GuidanceSearchResultsViewModel alloc];
    v15 = [(NavActionCoordinator *)self routeInfoProvider];
    v16 = [(NavActionCoordinator *)self mapItemDisplayer];
    v17 = [(GuidanceSearchResultsViewModel *)v14 initWithDataProvider:v12 navActionCoordinator:self routeInfoProvider:v15 mapItemDisplayer:v16];

    v18 = [v24 placeSummaryMetadata];
    [(GuidanceSearchResultsViewModel *)v17 setPlaceSummaryMetadata:v18];

    if ([v24 selectedIndex] == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NavActionCoordinator *)self presentSearchAlongTheRouteWithViewModel:v17];
    }

    else
    {
      -[GuidanceSearchResultsViewModel navigateToItemAtIndex:](v17, "navigateToItemAtIndex:", [v24 selectedIndex]);
    }

    goto LABEL_17;
  }

LABEL_18:

LABEL_19:
}

- (MapSelectionManager)mapSelectionManager
{
  v2 = [(NavActionCoordinator *)self containerViewController];
  v3 = [v2 chromeViewController];
  v4 = [v3 mapSelectionManager];

  return v4;
}

- (unint64_t)currentMapViewZoom
{
  v2 = [(NavActionCoordinator *)self mapViewZoomController];
  v3 = [v2 zoom];

  return v3;
}

- (MapViewZoomController)mapViewZoomController
{
  mapViewZoomController = self->_mapViewZoomController;
  if (!mapViewZoomController)
  {
    v4 = [MapViewZoomController alloc];
    v5 = [(NavActionCoordinator *)self navigationDisplay];
    v6 = [(MapViewZoomController *)v4 initWithNavigationDisplay:v5];
    v7 = self->_mapViewZoomController;
    self->_mapViewZoomController = v6;

    v8 = [(NavActionCoordinator *)self containerViewController];
    v9 = [v8 chromeViewController];
    [(MapViewZoomController *)self->_mapViewZoomController setChromeViewController:v9];

    [(MapViewZoomController *)self->_mapViewZoomController setDelegate:self];
    mapViewZoomController = self->_mapViewZoomController;
  }

  return mapViewZoomController;
}

- (NavTrayViewController)navigationTrayContaineeViewController
{
  navigationTrayContaineeViewController = self->_navigationTrayContaineeViewController;
  if (!navigationTrayContaineeViewController)
  {
    v4 = [NavTrayViewController alloc];
    v5 = [(NavActionCoordinator *)self guidanceObserver];
    v6 = [(NavActionCoordinator *)self appCoordinator];
    v7 = [v6 platformController];
    v8 = [(NavTrayViewController *)v4 initForNavigationWithDelegate:self guidanceObserver:v5 platformController:v7];
    v9 = self->_navigationTrayContaineeViewController;
    self->_navigationTrayContaineeViewController = v8;

    navigationTrayContaineeViewController = self->_navigationTrayContaineeViewController;
  }

  return navigationTrayContaineeViewController;
}

- (void)setAppCoordinator:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_appCoordinator);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_appCoordinator, obj);
    v5 = [obj platformController];
    [(NavTrayViewController *)self->_navigationTrayContaineeViewController setPlatformController:v5];
  }
}

- (void)setContainerViewController:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_containerViewController, obj);
    v5 = [obj chromeViewController];
    [(MapViewZoomController *)self->_mapViewZoomController setChromeViewController:v5];
  }
}

- (BOOL)isControllingVoiceVolume
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v3 = [WeakRetained currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)displayVoiceVolumeControl
{
  if (![(NavActionCoordinator *)self isControllingVoiceVolume])
  {
    if ([(NavActionCoordinator *)self isDisplayingTrafficIncident])
    {
      [(NavTrafficIncidentCoordinator *)self->_navTrafficIncidentCoordinator dismissVisibleTrafficAlertView:1];
    }

    if (MapsFeature_IsEnabled_MoreReportTypes())
    {
      v3 = objc_alloc_init(_TtC4Maps29NavAudioControlViewController);
      [(ContaineeViewController *)v3 setContaineeDelegate:self];
      objc_initWeak(&location, self);
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100FBFE94;
      v9[3] = &unk_101660108;
      objc_copyWeak(&v10, &location);
      [(NavAudioControlViewController *)v3 setVolumeLevelChangeHandler:v9];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100FBFEE8;
      v7[3] = &unk_101661B98;
      objc_copyWeak(&v8, &location);
      [(NavAudioControlViewController *)v3 setDismissHandler:v7];
      WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
      [WeakRetained presentController:v3];

      objc_destroyWeak(&v8);
      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }

    else
    {
      v6 = [[NavVoiceVolumeViewController alloc] initWithDelegate:self];
      [(ContaineeViewController *)v6 setContaineeDelegate:self];
      v5 = objc_loadWeakRetained(&self->_containerViewController);
      [v5 presentController:v6];
    }
  }
}

- (void)incidentReportSubmissionContaineeDidFinish:(id)a3
{
  v4 = [(NavActionCoordinator *)self containerViewController];
  v5 = [v4 currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {

    [(NavActionCoordinator *)self _presentTrayWithDefaultLayout:1 animated:1];
  }
}

- (BOOL)isDisplayingIncidentReporting
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v4 = [WeakRetained currentViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    v6 = objc_loadWeakRetained(&self->_containerViewController);
    v7 = [v6 currentViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
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

- (void)displayIncidentReporting
{
  if (![(NavActionCoordinator *)self isDisplayingIncidentReporting])
  {
    if ([(NavActionCoordinator *)self isDisplayingTrafficIncident])
    {
      [(NavTrafficIncidentCoordinator *)self->_navTrafficIncidentCoordinator dismissVisibleTrafficAlertView:1];
    }

    v4 = [[_TtC4Maps50NavTrafficIncidentReportingContaineeViewController alloc] initWithIncidentReportingDelegate:self];
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    [WeakRetained presentController:v4];
  }
}

- (void)viewController:(id)a3 shareContactValue:(id)a4
{
  v4 = a4;
  v5 = +[MSPSharedTripService sharedInstance];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100FC02E4;
  v7[3] = &unk_1016600E0;
  v8 = v4;
  v6 = v4;
  [v5 startSharingWithContact:v6 completion:v7];
}

- (void)openShareETAController
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v4 = [WeakRetained currentViewController];
  v5 = [v4 isMemberOfClass:objc_opt_class()];

  if ((v5 & 1) == 0)
  {
    v7 = objc_alloc_init(NavShareETAViewController);
    [(ContaineeViewController *)v7 setContaineeDelegate:self];
    [(NavShareETAViewController *)v7 setNavActionCoordinator:self];
    v6 = objc_loadWeakRetained(&self->_containerViewController);
    [v6 presentController:v7];
  }
}

- (void)senderShareNavigation:(id)a3
{
  v4 = a3;
  v5 = 0;
  SBSGetScreenLockStatus();
  [(NavActionCoordinator *)self openShareETAController];
}

- (void)viewControllerOpenContactsSearch:(id)a3
{
  v5 = objc_alloc_init(NavContactSearchViewController);
  [(ContaineeViewController *)v5 setContaineeDelegate:self];
  [(NavContactSearchViewController *)v5 setNavActionCoordinator:self];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained presentController:v5];
}

- (unint64_t)activeSharingCount
{
  v2 = +[MSPSharedTripService sharedInstance];
  v3 = [v2 receivers];
  v4 = [v3 count];

  return v4;
}

- (void)presentWithContainerViewController:(id)a3
{
  [(NavActionCoordinator *)self setContainerViewController:a3];
  if (self->_searchHomeViewController)
  {
    v4 = [(NavActionCoordinator *)self containerViewController];
    v5 = [v4 chromeViewController];

    v6 = [v5 appCoordinator];
    v7 = [v6 baseActionCoordinator];
    [(ControlContaineeViewController *)self->_searchHomeViewController setDelegate:v7];

    v8 = [v5 personalizedItemManager];
    [(SearchViewController *)self->_searchHomeViewController setPersonalizedItemManager:v8];
  }

  v9 = [(NavActionCoordinator *)self containerViewController];
  v10 = [(NavActionCoordinator *)self navigationTrayContaineeViewController];
  if ([v9 controllerIsInStack:v10])
  {
    v11 = [(NavActionCoordinator *)self containerViewController];
    v12 = [v11 currentViewController];
    v13 = [v12 view];
    v14 = [v13 window];

    if (v14)
    {
      return;
    }
  }

  else
  {
  }

  v15 = sub_100035E6C();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v18 = "[NavActionCoordinator presentWithContainerViewController:]";
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Inserting nav tray into the containee stack", buf, 0xCu);
  }

  [(NavActionCoordinator *)self presentTray];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100FC08B4;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (NavActionCoordinator)initWithMapItemDisplayer:(id)a3 navigationDisplay:(id)a4 guidanceObserver:(id)a5 navigationCameraModeController:(id)a6 rapNavigationTracker:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v22.receiver = self;
  v22.super_class = NavActionCoordinator;
  v18 = [(NavActionCoordinator *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_mapItemDisplayer, a3);
    objc_storeStrong(&v19->_navigationDisplay, a4);
    objc_storeStrong(&v19->_guidanceObserver, a5);
    objc_storeWeak(&v19->_navigationCameraModeController, v16);
    v19->_defaultMapViewZoom = 0;
    objc_storeStrong(&v19->_rapNavigationTracker, a7);
    v20 = v19;
  }

  return v19;
}

@end