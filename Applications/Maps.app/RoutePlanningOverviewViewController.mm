@interface RoutePlanningOverviewViewController
+ (RoutePlanningOverviewViewController)routePlanningOverviewViewControllerWithDataCoordinator:(id)coordinator;
- (BOOL)_areWaypointsInCountryCode:(id)code;
- (BOOL)_hasModalViewControllerInTransition;
- (BOOL)_isWaypointListScrollable;
- (BOOL)_shouldPermitAutomaticSharingContacts;
- (BOOL)hasValidEVRoute;
- (BOOL)isCollectionViewVisible;
- (BOOL)isDisplayingSingleTrip;
- (BOOL)isErrorViewVisible;
- (BOOL)isFittingHeightToRoutes;
- (BOOL)isLoadingViewVisible;
- (BOOL)shouldRefreshRoutePlanningWithCurrentGarage:(id)garage previousGarage:(id)previousGarage;
- (CGRect)_loadingAndErrorViewFrame;
- (CGRect)_rectOfRowToKeepVisible;
- (ErrorModeView)errorModeView;
- (RoutePlanningDataCoordinator)dataCoordinator;
- (RoutePlanningOverviewViewController)initWithDataCoordinator:(id)coordinator;
- (RoutePlanningPresentation)routePlanningDelegate;
- (UIView)routeOptionsPopoverSourceView;
- (double)_calculatedRouteCellsHeight;
- (double)_cardHeightMinusTableViewHeight;
- (double)_fittingHeightForMediumLayout;
- (double)_maximumMediumCardHeight;
- (double)_minimumMediumCardHeight;
- (double)heightForLayout:(unint64_t)layout;
- (double)transportTypePickerHeight;
- (id)_indexPathOfCellToShowAtMediumLayout;
- (id)_initialConstraints;
- (id)chargingInfoForWaypointAtIndex:(unint64_t)index;
- (id)evStepInfoForWaypointAtIndex:(unint64_t)index;
- (int)currentUITargetForAnalytics;
- (int64_t)_currentSceneActivationState;
- (void)_animateUpdatingHeightForSingleTrip;
- (void)_cancelAutoLaunch;
- (void)_collectRevealAnalyticForTransportType:(int64_t)type;
- (void)_contentSizeCategoryDidChange;
- (void)_doPromptsAndStartNavForRouteCollection:(id)collection;
- (void)_finishLaunchingIntoNavIfPossible:(id)possible;
- (void)_forceChangeOrigin;
- (void)_incrementCountOfRideOptionsBooked;
- (void)_loadGarage;
- (void)_markFeatureDiscoveryShown;
- (void)_prepareRideBookingForFirstUse;
- (void)_presentEbikeOptions;
- (void)_presentRouteOptions;
- (void)_promptForSimulationAndStartNavigationForRouteCollection:(id)collection;
- (void)_refreshContactsDisplayForAutomaticTripSharing;
- (void)_refreshRoutePlanning;
- (void)_resetCountOfRideOptionsBooked;
- (void)_sceneDidBackground:(id)background;
- (void)_sceneWillForeground:(id)foreground;
- (void)_scrollToCellToShowAtMediumLayoutAnimated:(BOOL)animated;
- (void)_setCollectionViewVisible:(BOOL)visible;
- (void)_setErrorViewVisible:(BOOL)visible routePlanningError:(id)error;
- (void)_setLoadingViewVisible:(BOOL)visible;
- (void)_setupAdvisoryFooterView;
- (void)_setupSubviews;
- (void)_snapToRectOfRowToKeepVisible;
- (void)_startNavigationForRouteCollection:(id)collection navigationDetailsOptions:(NavigationDetailsOptions *)options;
- (void)_startReferenceDateUpdates;
- (void)_stopReferenceDateUpdates;
- (void)_updateDataSourceRouteCollection:(id)collection;
- (void)_updateDigitalIssuanceStateWithUpdateFlag:(int64_t)flag;
- (void)_updateErrorViewButtonVisibilityWithError:(id)error;
- (void)_updateForEquivalentRequestState:(int64_t)state;
- (void)_updateLoadingViewBottomInset;
- (void)_updateRidesharingAnalytics;
- (void)_updateToTransportType:(int64_t)type;
- (void)applyAlphaToContent:(double)content;
- (void)dataSource:(id)source didSelectRowForRoute:(id)route;
- (void)dataSource:(id)source requiresDeletionOfIndexSet:(id)set reloadOfIndexSet:(id)indexSet insertionOfIndexSet:(id)ofIndexSet;
- (void)dataSource:(id)source requiresReloadOfSection:(unint64_t)section;
- (void)dataSourceRequiresReload:(id)reload;
- (void)dealloc;
- (void)didBecomeCurrent;
- (void)didChangeContainerStyle:(unint64_t)style;
- (void)didMoveToParentViewController:(id)controller;
- (void)didSelectAppStoreSuggestionWithIdentifier:(id)identifier;
- (void)didSelectFeedbackWithAppIdentifier:(id)identifier;
- (void)didSelectRideOption:(id)option;
- (void)didTapAutomaticSharingButtonForRouteOverviewCell:(id)cell;
- (void)didTapDetailsButtonForRouteOverviewCell:(id)cell;
- (void)didTapGoOnRoute:(id)route;
- (void)didTapReportAProblemButtonOnRoutePlanningFooterView:(id)view;
- (void)didTapRideBookingActionForRouteOverviewCell:(id)cell;
- (void)didTapRouteCreationButtonForCell:(id)cell;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)floatingControlsOverlayDidTapTTRButton:(id)button;
- (void)handleDismissAction:(id)action;
- (void)headerViewButtonTapped:(id)tapped buttonType:(unint64_t)type;
- (void)pptTestEndNavigation;
- (void)pptTestStartNavigation;
- (void)pptTestTransitionBetweenFullAndLightGuidance;
- (void)routePlanningDataCoordinator:(id)coordinator didUpdateRequestState:(int64_t)state;
- (void)routePlanningDataCoordinator:(id)coordinator didUpdateResolvedWaypointSet:(id)set;
- (void)routePlanningDataCoordinator:(id)coordinator didUpdateRideBookingRideOptionState:(id)state;
- (void)routePlanningDataCoordinator:(id)coordinator didUpdateRouteCollection:(id)collection;
- (void)routePlanningDataCoordinator:(id)coordinator didUpdateRoutes:(id)routes;
- (void)routePlanningDataCoordinator:(id)coordinator didUpdateTransportType:(int64_t)type;
- (void)shouldDismissForHorizontalSwipe_nonUIKitCardsOnly;
- (void)transitItemReferenceDateUpdater:(id)updater didUpdateToReferenceDate:(id)date;
- (void)updateTheme;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)virtualGarageDidUpdate:(id)update;
- (void)willBecomeCurrent:(BOOL)current;
- (void)willChangeContainerStyle:(unint64_t)style;
- (void)willChangeLayout:(unint64_t)layout;
@end

@implementation RoutePlanningOverviewViewController

- (UIView)routeOptionsPopoverSourceView
{
  WeakRetained = objc_loadWeakRetained(&self->_routeOptionsPopoverSourceView);

  return WeakRetained;
}

- (RoutePlanningDataCoordinator)dataCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_dataCoordinator);

  return WeakRetained;
}

- (void)floatingControlsOverlayDidTapTTRButton:(id)button
{
  v4 = sub_100798A3C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Handling TTR button tap during route planning", buf, 2u);
  }

  dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  routeCollection = [dataCoordinator routeCollection];
  routes = [routeCollection routes];
  v8 = sub_100030774(routes, &stru_10162B870);

  if (MapsFeature_IsEnabled_LocationIntelligenceMaps())
  {
    v9 = objc_opt_new();
    dataCoordinator2 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    routeCollection2 = [dataCoordinator2 routeCollection];
    routes2 = [routeCollection2 routes];
    v13 = sub_100021DB0(routes2, &stru_10162B890);
    v14 = [NSString stringWithFormat:@"Route IDS:\n%@", v13];
    [v9 addNote:v14];

    v15 = [UIAlertController alertControllerWithTitle:0 message:@"What would you like to report?" preferredStyle:1];
    if (v8)
    {
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_10082F7A0;
      v27[3] = &unk_10165F668;
      v28 = v9;
      v29 = &stru_10162B8D0;
      v16 = [UIAlertAction actionWithTitle:@"Familiar route wrong" style:0 handler:v27];
      [v15 addAction:v16];
    }

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10082F84C;
    v24[3] = &unk_10165F668;
    v17 = v9;
    v25 = v17;
    v26 = &stru_10162B8D0;
    v18 = [UIAlertAction actionWithTitle:@"Familiar route missing" style:0 handler:v24];
    [v15 addAction:v18];

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10082F8F8;
    v22[3] = &unk_10165F220;
    v23 = v17;
    v19 = v17;
    v20 = [UIAlertAction actionWithTitle:@"Something else" style:0 handler:v22];
    [v15 addAction:v20];

    [(RoutePlanningOverviewViewController *)self _maps_topMostPresentViewController:v15 animated:1 completion:0];
  }

  else
  {
    v21 = sub_100798A3C();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Launching TTR draft", buf, 2u);
    }

    v15 = +[MapsRadarController sharedInstance];
    [v15 launchTTR];
  }
}

- (id)evStepInfoForWaypointAtIndex:(unint64_t)index
{
  if ([(RoutePlanningOverviewViewController *)self hasValidEVRoute])
  {
    dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    currentRoute = [dataCoordinator currentRoute];

    if (!index)
    {
      firstEVStep = [currentRoute firstEVStep];
      evInfo = [firstEVStep evInfo];
LABEL_40:

      goto LABEL_41;
    }

    waypoints = [currentRoute waypoints];
    if ([waypoints count] <= index)
    {
    }

    else
    {
      waypoints2 = [currentRoute waypoints];
      firstEVStep = [waypoints2 objectAtIndexedSubscript:index];

      if (firstEVStep)
      {
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v31 = currentRoute;
        legs = [currentRoute legs];
        v11 = [legs countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v33;
          while (2)
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v33 != v13)
              {
                objc_enumerationMutation(legs);
              }

              v15 = *(*(&v32 + 1) + 8 * i);
              destination = [v15 destination];
              uniqueID = [destination uniqueID];
              uniqueID2 = [firstEVStep uniqueID];
              v19 = [uniqueID isEqual:uniqueID2];

              if (v19)
              {
                currentRoute = v31;
                v29 = -[NSObject lastEVStepInLegWithIndex:](v31, "lastEVStepInLegWithIndex:", [v15 legIndex]);
                evInfo = [v29 evInfo];

                goto LABEL_39;
              }
            }

            v12 = [legs countByEnumeratingWithState:&v32 objects:v36 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v20 = sub_100798A3C();
        currentRoute = v31;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          uniqueID3 = [firstEVStep uniqueID];
          *buf = 138412546;
          v38 = uniqueID3;
          v39 = 2112;
          v40 = v31;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Could not find waypointId: %@ in route: %@", buf, 0x16u);
        }

        v22 = sub_10006D178();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v38 = "[RoutePlanningOverviewViewController evStepInfoForWaypointAtIndex:]";
          v39 = 2080;
          v40 = "RoutePlanningOverviewViewController.m";
          v41 = 1024;
          v42 = 2097;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
        }

        if (sub_100E03634())
        {
          legs = sub_10006D178();
          if (os_log_type_enabled(legs, OS_LOG_TYPE_ERROR))
          {
            v23 = +[NSThread callStackSymbols];
            *buf = 138412290;
            v38 = v23;
            _os_log_impl(&_mh_execute_header, legs, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }

          goto LABEL_35;
        }

LABEL_37:
        evInfo = 0;
        goto LABEL_40;
      }
    }

    v27 = sub_10006D178();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v38 = "[RoutePlanningOverviewViewController evStepInfoForWaypointAtIndex:]";
      v39 = 2080;
      v40 = "RoutePlanningOverviewViewController.m";
      v41 = 1024;
      v42 = 2086;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
    }

    if (sub_100E03634())
    {
      legs = sub_10006D178();
      if (os_log_type_enabled(legs, OS_LOG_TYPE_ERROR))
      {
        v28 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v38 = v28;
        _os_log_impl(&_mh_execute_header, legs, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      firstEVStep = 0;
LABEL_35:
      evInfo = 0;
LABEL_39:

      goto LABEL_40;
    }

    firstEVStep = 0;
    goto LABEL_37;
  }

  v24 = sub_10006D178();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v38 = "[RoutePlanningOverviewViewController evStepInfoForWaypointAtIndex:]";
    v39 = 2080;
    v40 = "RoutePlanningOverviewViewController.m";
    v41 = 1024;
    v42 = 2075;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
  }

  if (!sub_100E03634())
  {
    evInfo = 0;
    goto LABEL_42;
  }

  currentRoute = sub_10006D178();
  if (os_log_type_enabled(currentRoute, OS_LOG_TYPE_ERROR))
  {
    v25 = +[NSThread callStackSymbols];
    *buf = 138412290;
    v38 = v25;
    _os_log_impl(&_mh_execute_header, currentRoute, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
  }

  evInfo = 0;
LABEL_41:

LABEL_42:

  return evInfo;
}

- (id)chargingInfoForWaypointAtIndex:(unint64_t)index
{
  if ([(RoutePlanningOverviewViewController *)self hasValidEVRoute])
  {
    dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    currentRoute = [dataCoordinator currentRoute];

    waypoints = [currentRoute waypoints];
    if ([waypoints count] <= index)
    {
      v9 = 0;
    }

    else
    {
      waypoints2 = [currentRoute waypoints];
      v9 = [waypoints2 objectAtIndexedSubscript:index];
    }

    chargingInfo = [v9 chargingInfo];
  }

  else
  {
    v10 = sub_10006D178();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315650;
      v16 = "[RoutePlanningOverviewViewController chargingInfoForWaypointAtIndex:]";
      v17 = 2080;
      v18 = "RoutePlanningOverviewViewController.m";
      v19 = 1024;
      v20 = 2063;
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

    chargingInfo = 0;
  }

  return chargingInfo;
}

- (BOOL)hasValidEVRoute
{
  dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  currentRoute = [dataCoordinator currentRoute];

  if ([currentRoute isEVRoute])
  {
    origin = [currentRoute origin];
    isCurrentLocation = [origin isCurrentLocation];
  }

  else
  {
    isCurrentLocation = 0;
  }

  return isCurrentLocation;
}

- (BOOL)shouldRefreshRoutePlanningWithCurrentGarage:(id)garage previousGarage:(id)previousGarage
{
  garageCopy = garage;
  previousGarageCopy = previousGarage;
  if ((MapsFeature_IsEnabled_EVRouting() & 1) != 0 || MapsFeature_IsEnabled_Alberta())
  {
    selectedVehicle = [garageCopy selectedVehicle];
    selectedVehicle2 = [previousGarageCopy selectedVehicle];
    if (!(selectedVehicle | selectedVehicle2))
    {
      v29 = 0;
LABEL_29:

      goto LABEL_30;
    }

    identifier = [selectedVehicle identifier];
    identifier2 = [selectedVehicle2 identifier];
    v11 = identifier;
    v12 = identifier2;
    if (v11 | v12)
    {
      v13 = v12;
      v14 = [v11 isEqual:v12];

      if ((v14 & 1) == 0)
      {
        v30 = sub_100798A3C();
        v29 = 1;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v31 = "Will refresh RP because selected vehicle changed.";
LABEL_27:
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, v31, buf, 2u);
        }

LABEL_28:

        goto LABEL_29;
      }
    }

    licensePlate = [selectedVehicle licensePlate];
    licensePlate2 = [selectedVehicle2 licensePlate];
    v17 = licensePlate;
    v18 = licensePlate2;
    if (!(v17 | v18) || (v19 = [v17 isEqual:v18], v18, v17, v19))
    {
      lprPowerType = [selectedVehicle lprPowerType];
      lprPowerType2 = [selectedVehicle2 lprPowerType];
      v22 = lprPowerType;
      v23 = lprPowerType2;
      if (!(v22 | v23) || (v24 = [v22 isEqual:v23], v23, v22, v24))
      {
        lprVehicleType = [selectedVehicle lprVehicleType];
        lprVehicleType2 = [selectedVehicle2 lprVehicleType];
        v27 = lprVehicleType;
        v28 = lprVehicleType2;
        if (!(v27 | v28))
        {

          goto LABEL_17;
        }

        v32 = v28;
        v47 = [v27 isEqual:v28];

        if (v47)
        {
LABEL_17:
          supportedConnectors = [selectedVehicle supportedConnectors];
          if (supportedConnectors == [selectedVehicle2 supportedConnectors])
          {
            usesPreferredNetworksForRouting = [selectedVehicle usesPreferredNetworksForRouting];
            if (usesPreferredNetworksForRouting == [selectedVehicle2 usesPreferredNetworksForRouting])
            {
              preferredChargingNetworks = [selectedVehicle preferredChargingNetworks];
              preferredChargingNetworks2 = [selectedVehicle2 preferredChargingNetworks];
              v38 = preferredChargingNetworks;
              v39 = preferredChargingNetworks2;
              if (v38 | v39 && (v40 = v39, v41 = [v38 isEqual:v39], v40, v38, v40, v38, (v41 & 1) == 0) && objc_msgSend(selectedVehicle, "usesPreferredNetworksForRouting"))
              {
                v30 = sub_100798A3C();
                v29 = 1;
                if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_28;
                }

                *buf = 0;
                v31 = "Will refresh RP because preferredNetworks changed.";
              }

              else
              {
                shouldAssumeFullCharge = [garageCopy shouldAssumeFullCharge];
                if (shouldAssumeFullCharge == [previousGarageCopy shouldAssumeFullCharge])
                {
                  currentVehicleState = [selectedVehicle currentVehicleState];
                  currentVehicleState2 = [selectedVehicle2 currentVehicleState];
                  v45 = [currentVehicleState isSignificantlyDifferentFromVehicleState:currentVehicleState2];

                  v30 = sub_100798A3C();
                  v46 = os_log_type_enabled(v30, OS_LOG_TYPE_INFO);
                  if (!v45)
                  {
                    if (v46)
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Will not refresh RP because the latest change in vehicle was not significant.", buf, 2u);
                    }

                    v29 = 0;
                    goto LABEL_28;
                  }

                  if (!v46)
                  {
                    v29 = 1;
                    goto LABEL_28;
                  }

                  *buf = 0;
                  v31 = "Will refresh RP because the selected vehicle's state changed significantly.";
                  v29 = 1;
                }

                else
                {
                  v30 = sub_100798A3C();
                  v29 = 1;
                  if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
                  {
                    goto LABEL_28;
                  }

                  *buf = 0;
                  v31 = "Will refresh RP because shouldAssumeFullCharge changed.";
                }
              }

              goto LABEL_27;
            }

            v30 = sub_100798A3C();
            v29 = 1;
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              v31 = "Will refresh RP because usesPreferredNetworksForRouting changed.";
              goto LABEL_27;
            }
          }

          else
          {
            v30 = sub_100798A3C();
            v29 = 1;
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              v31 = "Will refresh RP because supportedConnectors changed.";
              goto LABEL_27;
            }
          }

          goto LABEL_28;
        }

LABEL_25:
        v30 = sub_100798A3C();
        v29 = 1;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v31 = "Will refresh RP because lprInfo changed.";
          goto LABEL_27;
        }

        goto LABEL_28;
      }
    }

    goto LABEL_25;
  }

  v29 = 0;
LABEL_30:

  return v29;
}

- (void)_refreshRoutePlanning
{
  dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  platformController = [dataCoordinator platformController];

  currentSession = [platformController currentSession];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = currentSession;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    [v7 requestUpdatedRouteWithRefreshedOrigin:0];
    [(RoutePlanningOverviewViewController *)self _updateForEquivalentRequestState:1];
  }

  else
  {
    v8 = sub_100798A3C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Couldn't refresh route planning as there wasn't a current route planning session", v9, 2u);
    }
  }
}

- (void)virtualGarageDidUpdate:(id)update
{
  updateCopy = update;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1008309A8;
  block[3] = &unk_101661340;
  objc_copyWeak(&v8, &location);
  v7 = updateCopy;
  v5 = updateCopy;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (int)currentUITargetForAnalytics
{
  dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  transportType = [dataCoordinator transportType];
  if ((transportType - 1) >= 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = transportType + 300;
  }

  return v4;
}

- (void)pptTestTransitionBetweenFullAndLightGuidance
{
  v2 = sub_10006D178();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315650;
    v6 = "[RoutePlanningOverviewViewController pptTestTransitionBetweenFullAndLightGuidance]";
    v7 = 2080;
    v8 = "RoutePlanningOverviewViewController.m";
    v9 = 1024;
    v10 = 1941;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v5, 0x1Cu);
  }

  if (sub_100E03634())
  {
    v3 = sub_10006D178();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = +[NSThread callStackSymbols];
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%@", &v5, 0xCu);
    }
  }
}

- (void)pptTestEndNavigation
{
  v2 = sub_10006D178();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315650;
    v6 = "[RoutePlanningOverviewViewController pptTestEndNavigation]";
    v7 = 2080;
    v8 = "RoutePlanningOverviewViewController.m";
    v9 = 1024;
    v10 = 1936;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v5, 0x1Cu);
  }

  if (sub_100E03634())
  {
    v3 = sub_10006D178();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = +[NSThread callStackSymbols];
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%@", &v5, 0xCu);
    }
  }
}

- (void)pptTestStartNavigation
{
  dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  routeCollection = [dataCoordinator routeCollection];
  currentRoute = [routeCollection currentRoute];
  [(RoutePlanningOverviewViewController *)self didTapGoOnRoute:currentRoute];
}

- (void)_updateDigitalIssuanceStateWithUpdateFlag:(int64_t)flag
{
  [(RoutePlanningOverviewViewController *)self setDigitalIssuanceUpdateFlags:[(RoutePlanningOverviewViewController *)self digitalIssuanceUpdateFlags]| flag];
  if (([(RoutePlanningOverviewViewController *)self digitalIssuanceUpdateFlags]& 4) != 0)
  {
    [(RoutePlanningOverviewViewController *)self setHasIncrementedDigitalIssuanceCountForRoute:0];

    [(RoutePlanningOverviewViewController *)self setDigitalIssuanceUpdateFlags:0];
  }
}

- (double)_maximumMediumCardHeight
{
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController availableHeight];
  v5 = v4 * 0.649999976;
  [(RoutePlanningOverviewViewController *)self _heightForFullLayout];
  if (v5 >= v6 + -34.0)
  {
    [(RoutePlanningOverviewViewController *)self _heightForFullLayout];
    v9 = v10 + -34.0;
  }

  else
  {
    cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController2 availableHeight];
    v9 = v8 * 0.649999976;
  }

  return v9;
}

- (double)_minimumMediumCardHeight
{
  view = [(RoutePlanningOverviewViewController *)self view];
  [view bounds];
  if (CGRectGetWidth(v8) <= 325.0)
  {
    v6 = 380.0;
  }

  else
  {
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController availableHeight];
    v6 = v5 * 0.5;
  }

  return v6;
}

- (double)_fittingHeightForMediumLayout
{
  [(RoutePlanningOverviewViewController *)self _cardHeightMinusTableViewHeight];
  v4 = v3;
  viewIfLoaded = [(RoutePlanningOverviewViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];
  screen = [window screen];
  if (screen)
  {
    window2 = [viewIfLoaded window];
    screen2 = [window2 screen];
    [screen2 nativeScale];
    v11 = v10;
  }

  else
  {
    window2 = +[UIScreen mainScreen];
    [window2 nativeScale];
    v11 = v12;
  }

  if (v11 <= 0.0)
  {
    v13 = 1.0;
  }

  else
  {
    v13 = 1.0 / v11;
  }

  +[RouteOverviewCell minimumHeight];
  v15 = v14;
  dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  requestState = [dataCoordinator requestState];

  if (requestState == 3)
  {
    v18 = 192;
LABEL_11:
    [*(&self->super.super.super.super.super.super.isa + v18) fittingHeight];
    v22 = v21;
    goto LABEL_12;
  }

  dataCoordinator2 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  requestState2 = [dataCoordinator2 requestState];

  if (requestState2 == 1)
  {
    v18 = 184;
    goto LABEL_11;
  }

  dataCoordinator3 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  if ([dataCoordinator3 requestState] != 2)
  {

    goto LABEL_32;
  }

  v43 = sub_10000FA08(self);

  if (v43 != 5)
  {
LABEL_32:
    [(RoutePlanningOverviewViewController *)self _rectOfRowToKeepVisible];
    Height = CGRectGetHeight(v59);
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController bottomSafeOffset];
    v51 = v50;

    rootController = [(RoutePlanningOverviewViewController *)self rootController];
    [rootController estimatedFeatureDiscoveryHeight];
    v22 = Height - (v13 + v51) + v53;

    goto LABEL_12;
  }

  [(RoutePlanningOverviewViewController *)self routeCellsHeight];
  if (fabs(v44 + 1.0) <= 2.22044605e-16)
  {
    [(RoutePlanningOverviewViewController *)self _calculatedRouteCellsHeight];
    [(RoutePlanningOverviewViewController *)self setRouteCellsHeight:?];
  }

  [(RoutePlanningOverviewViewController *)self routeCellsHeight];
  if (v45 == -1.0)
  {
    collectionView = [(RoutePlanningOverviewViewController *)self collectionView];
    collectionViewLayout = [collectionView collectionViewLayout];
    [collectionViewLayout collectionViewContentSize];
    v47 = v56 - v13;
  }

  else
  {
    [(RoutePlanningOverviewViewController *)self routeCellsHeight];
    v47 = v46;
  }

  +[RouteOverviewCell minimumVerticalPadding];
  v22 = v57 + v47;
LABEL_12:
  containerHeaderView = [(RoutePlanningOverviewViewController *)self containerHeaderView];
  accessoryView = [containerHeaderView accessoryView];
  if (!accessoryView)
  {
LABEL_15:

    goto LABEL_16;
  }

  v25 = accessoryView;
  v26 = sub_10000FA08(self);

  if (v26 != 5)
  {
    containerHeaderView = [(RoutePlanningOverviewViewController *)self containerHeaderView];
    accessoryView2 = [containerHeaderView accessoryView];
    [accessoryView2 bounds];
    v22 = v22 + CGRectGetHeight(v58) + 8.0;

    goto LABEL_15;
  }

LABEL_16:
  transportTypePicker = [(RoutePlanningOverviewViewController *)self transportTypePicker];
  if (transportTypePicker)
  {
    v29 = transportTypePicker;
    transportTypePicker2 = [(RoutePlanningOverviewViewController *)self transportTypePicker];
    superview = [transportTypePicker2 superview];
    contentView = [(ContaineeViewController *)self contentView];

    if (superview == contentView)
    {
      [(RoutePlanningOverviewViewController *)self transportTypePickerHeight];
      v22 = v22 + v33 + 8.0;
    }
  }

  v34 = fmax(v22, v15) + v4;
  if (sub_10000FA08(self) != 5)
  {
    [(RoutePlanningOverviewViewController *)self _minimumMediumCardHeight];
    if (v34 <= v35)
    {
      [(RoutePlanningOverviewViewController *)self _minimumMediumCardHeight];
      v34 = v36;
    }

    [(RoutePlanningOverviewViewController *)self _maximumMediumCardHeight];
    if (v34 >= v37)
    {
      [(RoutePlanningOverviewViewController *)self _maximumMediumCardHeight];
    }
  }

  viewIfLoaded2 = [(RoutePlanningOverviewViewController *)self viewIfLoaded];
  UIRoundToViewScale();
  v40 = v39;

  return v40;
}

- (double)_calculatedRouteCellsHeight
{
  v3 = -1.0;
  if ([(RoutePlanningOverviewViewController *)self isCollectionViewVisible])
  {
    collectionView = [(RoutePlanningOverviewViewController *)self collectionView];
    numberOfSections = [collectionView numberOfSections];

    if (numberOfSections)
    {
      collectionView2 = [(RoutePlanningOverviewViewController *)self collectionView];
      [collectionView2 layoutIfNeeded];

      collectionView3 = [(RoutePlanningOverviewViewController *)self collectionView];
      numberOfSections2 = [collectionView3 numberOfSections];

      if (numberOfSections2 < 1)
      {
        return 0.0;
      }

      else
      {
        v9 = 0;
        v3 = 0.0;
        while (1)
        {
          collectionView4 = [(RoutePlanningOverviewViewController *)self collectionView];
          v11 = [collectionView4 numberOfItemsInSection:v9];

          if (v11 >= 1)
          {
            break;
          }

LABEL_9:
          ++v9;
          collectionView5 = [(RoutePlanningOverviewViewController *)self collectionView];
          numberOfSections3 = [collectionView5 numberOfSections];

          if (v9 >= numberOfSections3)
          {
            return v3;
          }
        }

        v12 = 0;
        while (1)
        {
          v13 = [NSIndexPath indexPathForRow:v12 inSection:v9];
          collectionView6 = [(RoutePlanningOverviewViewController *)self collectionView];
          v15 = [collectionView6 cellForItemAtIndexPath:v13];

          if (!v15)
          {
            break;
          }

          contentView = [v15 contentView];
          [v15 frame];
          [contentView _maps_compressedSizeForWidth:0 withBlock:CGRectGetWidth(v24)];
          v18 = v17;

          v3 = v18 + v3;
          ++v12;
          collectionView7 = [(RoutePlanningOverviewViewController *)self collectionView];
          v20 = [collectionView7 numberOfItemsInSection:v9];

          if (v12 >= v20)
          {
            goto LABEL_9;
          }
        }

        return -1.0;
      }
    }
  }

  return v3;
}

- (void)_contentSizeCategoryDidChange
{
  collectionView = [(RoutePlanningOverviewViewController *)self collectionView];
  [collectionView reloadData];

  [(RoutePlanningOverviewViewController *)self _scrollToCellToShowAtMediumLayoutAnimated:[(RoutePlanningOverviewViewController *)self isDisplayingSingleTrip]^ 1];
  if ([(RoutePlanningOverviewViewController *)self isDisplayingSingleTrip]&& ![(RoutePlanningOverviewViewController *)self isAnimatingHeightForMediumLayout])
  {
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController updateHeightForCurrentLayout];
  }
}

- (void)_animateUpdatingHeightForSingleTrip
{
  if ([(RoutePlanningOverviewViewController *)self isFittingHeightToRoutes])
  {
    viewIfLoaded = [(RoutePlanningOverviewViewController *)self viewIfLoaded];
    superview = [viewIfLoaded superview];

    if (superview)
    {
      [(RoutePlanningOverviewViewController *)self _fittingHeightForMediumLayout];
      v6 = v5;
      view = [(RoutePlanningOverviewViewController *)self view];
      [view frame];
      Height = CGRectGetHeight(v20);

      if (vabdd_f64(v6, Height) >= 2.22044605e-16)
      {
        if ([(RoutePlanningOverviewViewController *)self isAnimatingHeightForMediumLayout])
        {
          view2 = [(RoutePlanningOverviewViewController *)self view];
          window = [view2 window];
          [window _removeAllAnimations:1];
        }

        [(RoutePlanningOverviewViewController *)self setIsAnimatingHeightForMediumLayout:1];
        cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
        [cardPresentationController updateHeightForCurrentLayout];

        collectionView = [(RoutePlanningOverviewViewController *)self collectionView];
        [collectionView layoutIfNeeded];

        v13 = +[UIDevice currentDevice];
        userInterfaceIdiom = [v13 userInterfaceIdiom];

        if (userInterfaceIdiom == 5)
        {
          headerView = [(ContaineeViewController *)self headerView];
          [headerView layoutBelowIfNeeded];

          collectionView2 = [(RoutePlanningOverviewViewController *)self collectionView];
          loadingModeView = [(RoutePlanningOverviewViewController *)self loadingModeView];
          [collectionView2 _maps_alignTopToView:loadingModeView];
        }

        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_1008317B4;
        v19[3] = &unk_101661B18;
        v19[4] = self;
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_1008317F8;
        v18[3] = &unk_101661738;
        v18[4] = self;
        [UIView animateWithDuration:v19 animations:v18 completion:0.25];
      }
    }
  }
}

- (void)_snapToRectOfRowToKeepVisible
{
  [(RoutePlanningOverviewViewController *)self _rectOfRowToKeepVisible];
  MinY = CGRectGetMinY(v26);
  v4 = -MinY;
  if (![(RoutePlanningOverviewViewController *)self isDisplayingSingleTrip])
  {
    v4 = 0.0;
  }

  collectionView = [(RoutePlanningOverviewViewController *)self collectionView];
  [collectionView contentInset];
  v7 = v6;
  v9 = v8;
  v11 = v10;

  collectionView2 = [(RoutePlanningOverviewViewController *)self collectionView];
  [collectionView2 setContentInset:{v4, v7, v9, v11}];

  collectionView3 = [(RoutePlanningOverviewViewController *)self collectionView];
  [collectionView3 adjustedContentInset];
  v15 = v14;

  collectionView4 = [(RoutePlanningOverviewViewController *)self collectionView];
  [collectionView4 setContentOffset:{0.0, v4 + MinY - v15}];

  v17 = sub_1008319B0();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    collectionView5 = [(RoutePlanningOverviewViewController *)self collectionView];
    [collectionView5 contentOffset];
    v20 = 134349568;
    selfCopy = self;
    v22 = 2048;
    v23 = v4;
    v24 = 2048;
    v25 = v19;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "[%{public}p] Snapping to contentInset.top: %#.1lf, contentOffset.y: %#.1lf", &v20, 0x20u);
  }
}

- (void)_scrollToCellToShowAtMediumLayoutAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _indexPathOfCellToShowAtMediumLayout = [(RoutePlanningOverviewViewController *)self _indexPathOfCellToShowAtMediumLayout];
  if (!_indexPathOfCellToShowAtMediumLayout)
  {
    collectionView = [(RoutePlanningOverviewViewController *)self collectionView];
    [collectionView setContentOffset:0 animated:{CGPointZero.x, CGPointZero.y}];

    goto LABEL_10;
  }

  if ([(RoutePlanningOverviewViewController *)self isDisplayingSingleTrip])
  {
    [(RoutePlanningOverviewViewController *)self _snapToRectOfRowToKeepVisible];
    goto LABEL_10;
  }

  [(RoutePlanningOverviewViewController *)self _rectOfRowToKeepVisible];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  collectionView2 = [(RoutePlanningOverviewViewController *)self collectionView];
  [collectionView2 convertRect:0 toView:{v7, v9, v11, v13}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v44.origin.x = v7;
  rect = v9;
  v44.origin.y = v9;
  v44.size.width = v11;
  v44.size.height = v13;
  MinY = CGRectGetMinY(v44);
  collectionView3 = [(RoutePlanningOverviewViewController *)self collectionView];
  [collectionView3 bounds];
  v25 = MinY < CGRectGetMinY(v45);

  v46.origin.x = v16;
  v46.origin.y = v18;
  v46.size.width = v20;
  v46.size.height = v22;
  MaxY = CGRectGetMaxY(v46);
  collectionView4 = [(RoutePlanningOverviewViewController *)self collectionView];
  window = [collectionView4 window];
  [window bounds];
  v29 = CGRectGetMaxY(v47);

  v30 = v25 || MaxY > v29;
  if (MaxY <= v29)
  {
    MidY = rect;
    if (!v30)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController bottomSafeOffset];
  v13 = v13 - v32;

  v48.origin.x = v7;
  v48.origin.y = rect;
  v48.size.width = v11;
  v48.size.height = v13;
  MidY = CGRectGetMidY(v48);
  if (v30)
  {
LABEL_9:
    v34 = v13 * 0.5;
    v49.origin.x = v7;
    v49.origin.y = MidY;
    v49.size.width = v11;
    v49.size.height = v13 * 0.5;
    v35 = CGRectGetMaxY(v49);
    collectionView5 = [(RoutePlanningOverviewViewController *)self collectionView];
    collectionViewLayout = [collectionView5 collectionViewLayout];
    [collectionViewLayout collectionViewContentSize];
    v39 = v35 - v38;

    collectionView6 = [(RoutePlanningOverviewViewController *)self collectionView];
    [collectionView6 scrollRectToVisible:animatedCopy animated:{v7, MidY, v11, v34 - fmax(v39, 0.0)}];
  }

LABEL_10:
}

- (id)_indexPathOfCellToShowAtMediumLayout
{
  dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  transportType = [dataCoordinator transportType];

  if (transportType == 4)
  {
    v5 = [NSIndexPath indexPathForRow:0 inSection:0];
  }

  else
  {
    rootController = [(RoutePlanningOverviewViewController *)self rootController];
    dataCoordinator2 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    routeCollection = [dataCoordinator2 routeCollection];
    currentRoute = [routeCollection currentRoute];
    v5 = [rootController mostImportantIndexPathWithSelectedRoute:currentRoute];
  }

  return v5;
}

- (BOOL)isFittingHeightToRoutes
{
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  v3 = [cardPresentationController containeeLayout] == 2;

  return v3;
}

- (BOOL)isDisplayingSingleTrip
{
  if (sub_10000FA08(self) == 5)
  {
    return 0;
  }

  return [(RoutePlanningOverviewViewController *)self isFittingHeightToRoutes];
}

- (void)_updateErrorViewButtonVisibilityWithError:(id)error
{
  errorCopy = error;
  if (![errorCopy errorViewShouldShowRoutingApps] || !GEOConfigGetBOOL())
  {
    errorViewFeatureAvailabilityPunchoutURL = [errorCopy errorViewFeatureAvailabilityPunchoutURL];

    if (errorViewFeatureAvailabilityPunchoutURL)
    {
      v10 = +[NSBundle mainBundle];
      v6 = [v10 localizedStringForKey:@"Learn More [Route Planning Cycling Coverage]" value:@"localized string not found" table:0];

      errorViewFeatureAvailabilityPunchoutURL2 = [errorCopy errorViewFeatureAvailabilityPunchoutURL];
      errorModeView = [(RoutePlanningOverviewViewController *)self errorModeView];
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_10083240C;
      v38[3] = &unk_10162B7F0;
      v39 = errorViewFeatureAvailabilityPunchoutURL2;
      v13 = errorViewFeatureAvailabilityPunchoutURL2;
      [errorModeView setButtonTitle:v6 handler:v38];

      goto LABEL_7;
    }

    if ([errorCopy errorViewShouldShowRegularDirectionsFallback])
    {
      v14 = +[NSBundle mainBundle];
      v15 = [v14 localizedStringForKey:@"View Directions [Route Planning EV fallback]" value:@"localized string not found" table:0];

      errorModeView2 = [(RoutePlanningOverviewViewController *)self errorModeView];
      v17 = errorModeView2;
      v18 = &stru_10162B810;
    }

    else
    {
      if ([errorCopy errorCode] != 21)
      {
        incidentMessage = [errorCopy incidentMessage];
        transitIncidents = [incidentMessage transitIncidents];
        v22 = [transitIncidents count];

        if (!v22)
        {
          if (!GEOConfigGetBOOL() || [errorCopy errorCode] != 2 && objc_msgSend(errorCopy, "errorCode") != 22)
          {
            errorModeView3 = [(RoutePlanningOverviewViewController *)self errorModeView];
            [errorModeView3 setButtonTitle:0 handler:0];

            goto LABEL_14;
          }

          v31 = +[NSBundle mainBundle];
          v6 = [v31 localizedStringForKey:@"Turn Off" value:@"localized string not found" table:@"Offline"];

          objc_initWeak(&location, self);
          errorModeView4 = [(RoutePlanningOverviewViewController *)self errorModeView];
          v8 = v33;
          v33[0] = _NSConcreteStackBlock;
          v33[1] = 3221225472;
          v33[2] = sub_1008324DC;
          v33[3] = &unk_10165D828;
          objc_copyWeak(&v34, &location);
          [errorModeView4 setButtonTitle:v6 handler:v33];
          goto LABEL_4;
        }

        incidentMessage2 = [errorCopy incidentMessage];
        transitIncidents2 = [incidentMessage2 transitIncidents];

        v25 = [transitIncidents2 count];
        v26 = +[NSBundle mainBundle];
        v27 = v26;
        if (v25 == 1)
        {
          v28 = @"View Incident Singular [SideView]";
        }

        else
        {
          v28 = @"View Incident Plural [SideView]";
        }

        v29 = [v26 localizedStringForKey:v28 value:@"localized string not found" table:0];

        objc_initWeak(&location, self);
        errorModeView5 = [(RoutePlanningOverviewViewController *)self errorModeView];
        v35[0] = _NSConcreteStackBlock;
        v35[1] = 3221225472;
        v35[2] = sub_100832470;
        v35[3] = &unk_10162F4D0;
        objc_copyWeak(&v37, &location);
        v15 = transitIncidents2;
        v36 = v15;
        [errorModeView5 setButtonTitle:v29 handler:v35];

        objc_destroyWeak(&v37);
        objc_destroyWeak(&location);

LABEL_13:
        goto LABEL_14;
      }

      v19 = +[NSBundle mainBundle];
      v15 = [v19 localizedStringForKey:@"View Directions [Route Planning LPR fallback]" value:@"localized string not found" table:0];

      errorModeView2 = [(RoutePlanningOverviewViewController *)self errorModeView];
      v17 = errorModeView2;
      v18 = &stru_10162B830;
    }

    [errorModeView2 setButtonTitle:v15 handler:v18];

    goto LABEL_13;
  }

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"View Routing apps [Route Planning]" value:@"localized string not found" table:0];

  objc_initWeak(&location, self);
  errorModeView4 = [(RoutePlanningOverviewViewController *)self errorModeView];
  v8 = v40;
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_1008323B0;
  v40[3] = &unk_10165D828;
  objc_copyWeak(&v41, &location);
  [errorModeView4 setButtonTitle:v6 handler:v40];
LABEL_4:

  objc_destroyWeak(v8 + 4);
  objc_destroyWeak(&location);
LABEL_7:

LABEL_14:
}

- (void)_setErrorViewVisible:(BOOL)visible routePlanningError:(id)error
{
  visibleCopy = visible;
  errorCopy = error;
  if ([(RoutePlanningOverviewViewController *)self isErrorViewVisible]!= visibleCopy)
  {
    errorModeView = [(RoutePlanningOverviewViewController *)self errorModeView];
    errorTitle = [errorCopy errorTitle];
    errorMessage = [errorCopy errorMessage];
    [errorModeView setTitle:errorTitle andMessage:errorMessage];

    errorModeView2 = [(RoutePlanningOverviewViewController *)self errorModeView];
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController bottomSafeOffset];
    [errorModeView2 setVerticalAdjustment:-v11];

    [(RoutePlanningOverviewViewController *)self _updateErrorViewButtonVisibilityWithError:errorCopy];
    if (visibleCopy)
    {
      contentView = [(ContaineeViewController *)self contentView];
      errorModeView3 = [(RoutePlanningOverviewViewController *)self errorModeView];
      [contentView addSubview:errorModeView3];

      [(RoutePlanningOverviewViewController *)self _loadingAndErrorViewFrame];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      errorModeView4 = [(RoutePlanningOverviewViewController *)self errorModeView];
      [errorModeView4 setFrame:{v15, v17, v19, v21}];
    }

    else
    {
      [(ErrorModeView *)self->_errorModeView removeFromSuperview];
    }
  }
}

- (BOOL)isErrorViewVisible
{
  selfCopy = self;
  superview = [(ErrorModeView *)self->_errorModeView superview];
  contentView = [(ContaineeViewController *)selfCopy contentView];
  LOBYTE(selfCopy) = superview == contentView;

  return selfCopy;
}

- (void)_updateLoadingViewBottomInset
{
  v3 = sub_10000FA08(self);
  loadingModeView = self->_loadingModeView;
  if (v3 == 5)
  {

    [(LoadingModeView *)loadingModeView setBottomInset:8.0];
  }

  else
  {
    [(LoadingModeView *)loadingModeView fittingHeight];
    v6 = v5;
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController bottomSafeOffset];
    [(LoadingModeView *)self->_loadingModeView setBottomInset:?];

    if ([(RoutePlanningOverviewViewController *)self isLoadingViewVisible])
    {
      [(LoadingModeView *)self->_loadingModeView fittingHeight];
      if (vabdd_f64(v8, v6) > 2.22044605e-16)
      {
        cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
        [cardPresentationController2 updateHeightForCurrentLayout];
      }
    }
  }
}

- (void)_setLoadingViewVisible:(BOOL)visible
{
  visibleCopy = visible;
  if ([(RoutePlanningOverviewViewController *)self isLoadingViewVisible]!= visible)
  {
    if (visibleCopy)
    {
      contentView = [(ContaineeViewController *)self contentView];
      loadingModeView = [(RoutePlanningOverviewViewController *)self loadingModeView];
      [contentView addSubview:loadingModeView];

      [(RoutePlanningOverviewViewController *)self _loadingAndErrorViewFrame];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      loadingModeView2 = [(RoutePlanningOverviewViewController *)self loadingModeView];
      [loadingModeView2 setFrame:{v8, v10, v12, v14}];
    }

    else
    {
      [(LoadingModeView *)self->_loadingModeView removeFromSuperview];
    }

    [(RoutePlanningOverviewViewController *)self _updateLoadingViewBottomInset];
  }
}

- (BOOL)isLoadingViewVisible
{
  selfCopy = self;
  superview = [(LoadingModeView *)self->_loadingModeView superview];
  contentView = [(ContaineeViewController *)selfCopy contentView];
  LOBYTE(selfCopy) = superview == contentView;

  return selfCopy;
}

- (void)_setCollectionViewVisible:(BOOL)visible
{
  visibleCopy = visible;
  if ([(RoutePlanningOverviewViewController *)self isCollectionViewVisible]!= visible)
  {
    [(RoutePlanningOverviewViewController *)self setRouteCellsHeight:-1.0];
    [(RoutePlanningOutlineController *)self->_rideBookingSource setHideContent:!visibleCopy];
    rootController = [(RoutePlanningOverviewViewController *)self rootController];
    [rootController setHideContent:!visibleCopy];

    if (visibleCopy)
    {
      v6 = 749.0;
    }

    else
    {
      v6 = 50.0;
    }

    collectionViewToBottomConstraint = [(RoutePlanningOverviewViewController *)self collectionViewToBottomConstraint];
    *&v7 = v6;
    [collectionViewToBottomConstraint setPriority:v7];
  }
}

- (BOOL)isCollectionViewVisible
{
  if (self->_collectionView)
  {
    rootController = [(RoutePlanningOverviewViewController *)self rootController];
    v3 = [rootController hideContent] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)_forceChangeOrigin
{
  v4 = sub_10006D178();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315650;
    v8 = "[RoutePlanningOverviewViewController _forceChangeOrigin]";
    v9 = 2080;
    v10 = "RoutePlanningOverviewViewController.m";
    v11 = 1024;
    v12 = 1589;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v7, 0x1Cu);
  }

  if (sub_100E03634())
  {
    v5 = sub_10006D178();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = +[NSThread callStackSymbols];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%@", &v7, 0xCu);
    }
  }

  [(RoutePlanningOverviewViewController *)self doesNotRecognizeSelector:a2];
}

- (void)_setupAdvisoryFooterView
{
  collectionView = [(RoutePlanningOverviewViewController *)self collectionView];
  dataSource = [collectionView dataSource];

  if ([dataSource shouldShowAdvisoryFooter])
  {
    dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    advisoriesInfo = [dataCoordinator advisoriesInfo];

    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x3032000000;
    v14[3] = sub_100832F08;
    v14[4] = sub_100832F18;
    v15 = 0;
    genericAdvisorys = [advisoriesInfo genericAdvisorys];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100832F20;
    v13[3] = &unk_101631208;
    v13[4] = v14;
    [genericAdvisorys enumerateObjectsUsingBlock:v13];

    objc_initWeak(&location, self);
    dataCoordinator2 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    advisoriesInfo2 = [dataCoordinator2 advisoriesInfo];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100832F98;
    v10[3] = &unk_10162B7C8;
    objc_copyWeak(&v11, &location);
    v10[4] = self;
    v10[5] = v14;
    [dataSource setupAdvisoryInfoLayout:advisoriesInfo2 tapHandler:v10];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
    _Block_object_dispose(v14, 8);
  }

  else
  {
    [dataSource setupAdvisoryInfoLayout:0 tapHandler:0];
  }
}

- (void)_updateForEquivalentRequestState:(int64_t)state
{
  v5 = sub_10000FA08(self);
  if (state > 1)
  {
    if (state == 2)
    {
      [(RoutePlanningOverviewViewController *)self _setupAdvisoryFooterView];
      routePlanningError = 0;
      v8 = 0;
      v11 = 0;
      v9 = 1;
      v10 = 1;
    }

    else if (state == 3)
    {
      dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
      routePlanningError = [dataCoordinator routePlanningError];

      v8 = 0;
      v9 = 0;
      v10 = 1;
      v11 = 1;
    }

    else
    {
      routePlanningError = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
    }
  }

  else
  {
    v6 = state == 1;
    v7 = state == 0;
    routePlanningError = 0;
    if (state)
    {
      v8 = state == 1;
    }

    else
    {
      v8 = 0;
    }

    v9 = 0;
    if (v7)
    {
      v10 = v5 == 5;
    }

    else
    {
      v10 = v6;
    }

    v11 = 0;
  }

  [(RoutePlanningOverviewViewController *)self _setLoadingViewVisible:v8];
  [(RoutePlanningOverviewViewController *)self _setCollectionViewVisible:v9];
  [(RoutePlanningOverviewViewController *)self _setErrorViewVisible:v11 routePlanningError:routePlanningError];
  if ([routePlanningError errorCode] == 16)
  {
    [(RoutePlanningOverviewViewController *)self _forceChangeOrigin];
  }

  if (v10)
  {
    if (v5 == 5 && (-[ContaineeViewController cardPresentationController](self, "cardPresentationController"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 containeeLayout], v13, v14 != 2))
    {
      cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
      [cardPresentationController wantsLayout:2];
    }

    else
    {
      cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
      [cardPresentationController updateHeightForCurrentLayoutAnimated:1];
    }
  }
}

- (void)_resetCountOfRideOptionsBooked
{
  self->_countOfRideOptionsBooked = 0;
  dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  rideOptionStateObserver = [dataCoordinator rideOptionStateObserver];
  analyticsBookingSession = [rideOptionStateObserver analyticsBookingSession];
  [analyticsBookingSession setExploredOtherOptions:0];
}

- (void)_incrementCountOfRideOptionsBooked
{
  v2 = self->_countOfRideOptionsBooked + 1;
  self->_countOfRideOptionsBooked = v2;
  v3 = v2 > 1;
  dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  rideOptionStateObserver = [dataCoordinator rideOptionStateObserver];
  analyticsBookingSession = [rideOptionStateObserver analyticsBookingSession];
  [analyticsBookingSession setExploredOtherOptions:v3];
}

- (void)didSelectRideOption:(id)option
{
  optionCopy = option;
  if (optionCopy)
  {
    [(RoutePlanningOverviewViewController *)self _incrementCountOfRideOptionsBooked];
    application = [optionCopy application];
    [RidesharingAppPreferenceManager recordAppSelection:application];

    [RidesharingAppPreferenceManager recordRideChoice:optionCopy];
    userActivityForBookingInApplication = [optionCopy userActivityForBookingInApplication];

    if (!userActivityForBookingInApplication)
    {
      dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
      rideOptionStateObserver = [dataCoordinator rideOptionStateObserver];
      analyticsBookingSession = [rideOptionStateObserver analyticsBookingSession];
      application2 = [optionCopy application];
      identifier = [application2 identifier];
      application3 = [optionCopy application];
      version = [application3 version];
      [analyticsBookingSession captureBookedApp:identifier version:version];

      dataCoordinator2 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
      rideOptionStateObserver2 = [dataCoordinator2 rideOptionStateObserver];
      analyticsBookingSession2 = [rideOptionStateObserver2 analyticsBookingSession];
      name = [optionCopy name];
      [analyticsBookingSession2 captureBookedRideOptionName:name];

      dataCoordinator3 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
      rideOptionStateObserver3 = [dataCoordinator3 rideOptionStateObserver];
      [rideOptionStateObserver3 startRequestRideForRideOption:optionCopy];

      routePlanningDelegate = [(RoutePlanningOverviewViewController *)self routePlanningDelegate];
      [routePlanningDelegate startRideBookingSessionWithRideOption:optionCopy];
      goto LABEL_6;
    }

    application4 = [optionCopy application];
    userActivityForBookingInApplication2 = [optionCopy userActivityForBookingInApplication];
    [application4 openWithActivity:userActivityForBookingInApplication2];

    routePlanningDelegate = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    rideOptionStateObserver4 = [routePlanningDelegate rideOptionStateObserver];
    analyticsBookingSession3 = [rideOptionStateObserver4 analyticsBookingSession];
    [analyticsBookingSession3 endSessionOnView:1 state:4];

LABEL_4:
LABEL_6:

    goto LABEL_7;
  }

  v25 = sub_10006D178();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = 136315906;
    v27 = "[RoutePlanningOverviewViewController didSelectRideOption:]";
    v28 = 2080;
    v29 = "RoutePlanningOverviewViewController.m";
    v30 = 1024;
    v31 = 1455;
    v32 = 2080;
    v33 = "nil != rideOption";
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", &v26, 0x26u);
  }

  if (sub_100E03634())
  {
    routePlanningDelegate = sub_10006D178();
    if (!os_log_type_enabled(routePlanningDelegate, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    rideOptionStateObserver4 = +[NSThread callStackSymbols];
    v26 = 138412290;
    v27 = rideOptionStateObserver4;
    _os_log_impl(&_mh_execute_header, routePlanningDelegate, OS_LOG_TYPE_ERROR, "%@", &v26, 0xCu);
    goto LABEL_4;
  }

LABEL_7:
}

- (void)didSelectAppStoreSuggestionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[MKMapService sharedService];
  [v5 captureUserAction:14001 onTarget:-[RoutePlanningOverviewViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];

  routePlanningDelegate = [(RoutePlanningOverviewViewController *)self routePlanningDelegate];
  [routePlanningDelegate displayStoreViewControllerForAppWithiTunesIdentifier:identifierCopy clientIdentifier:@"RidesharingStoreProductClientIdentifier"];
}

- (void)didSelectFeedbackWithAppIdentifier:(id)identifier
{
  if (identifier)
  {
    identifierCopy = identifier;
    routePlanningDelegate = [(RoutePlanningOverviewViewController *)self routePlanningDelegate];
    [routePlanningDelegate continueRideBookingSessionWithApplicationIdentifier:identifierCopy];
  }
}

- (void)_sceneDidBackground:(id)background
{
  object = [background object];
  view = [(RoutePlanningOverviewViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];

  if (object == windowScene)
  {
    referenceDateUpdater = [(RoutePlanningOverviewViewController *)self referenceDateUpdater];
    [referenceDateUpdater setActive:0];
  }
}

- (void)_sceneWillForeground:(id)foreground
{
  object = [foreground object];
  view = [(RoutePlanningOverviewViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];

  if (object == windowScene)
  {
    referenceDateUpdater = [(RoutePlanningOverviewViewController *)self referenceDateUpdater];
    [referenceDateUpdater setActive:1];
  }
}

- (void)_stopReferenceDateUpdates
{
  referenceDateUpdater = [(RoutePlanningOverviewViewController *)self referenceDateUpdater];

  if (referenceDateUpdater)
  {
    referenceDateUpdater2 = [(RoutePlanningOverviewViewController *)self referenceDateUpdater];
    [referenceDateUpdater2 setActive:0];

    [(RoutePlanningOverviewViewController *)self setReferenceDateUpdater:0];
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 removeObserver:self name:UISceneWillEnterForegroundNotification object:0];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 removeObserver:self name:UISceneDidEnterBackgroundNotification object:0];
  }
}

- (void)_startReferenceDateUpdates
{
  rootController = [(RoutePlanningOverviewViewController *)self rootController];
  transportType = [rootController transportType];

  if (transportType == 4)
  {
    v12 = sub_10006D178();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v18 = "[RoutePlanningOverviewViewController _startReferenceDateUpdates]";
      v19 = 2080;
      v20 = "RoutePlanningOverviewViewController.m";
      v21 = 1024;
      v22 = 1393;
      v23 = 2080;
      v24 = "viewingTransitRoutes";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v13 = sub_10006D178();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v18 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    v15 = sub_100798A3C();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Attempted to start reference date updates but current routes are not Transit", buf, 2u);
    }

    [(RoutePlanningOverviewViewController *)self _stopReferenceDateUpdates];
  }

  else
  {
    referenceDateUpdater = [(RoutePlanningOverviewViewController *)self referenceDateUpdater];

    if (!referenceDateUpdater)
    {
      v6 = [[MKTransitItemReferenceDateUpdater alloc] initWithDelegate:self];
      [(RoutePlanningOverviewViewController *)self setReferenceDateUpdater:v6];

      v7 = +[NSNotificationCenter defaultCenter];
      [v7 addObserver:self selector:"_sceneWillForeground:" name:UISceneWillEnterForegroundNotification object:0];

      v8 = +[NSNotificationCenter defaultCenter];
      [v8 addObserver:self selector:"_sceneDidBackground:" name:UISceneDidEnterBackgroundNotification object:0];
    }

    _currentSceneActivationState = [(RoutePlanningOverviewViewController *)self _currentSceneActivationState];
    v11 = _currentSceneActivationState != 2 && _currentSceneActivationState != -1;
    referenceDateUpdater2 = [(RoutePlanningOverviewViewController *)self referenceDateUpdater];
    [referenceDateUpdater2 setActive:v11];
  }
}

- (void)transitItemReferenceDateUpdater:(id)updater didUpdateToReferenceDate:(id)date
{
  rootController3 = [(RoutePlanningOverviewViewController *)self collectionView:updater];
  dataSource = [rootController3 dataSource];
  rootController = [(RoutePlanningOverviewViewController *)self rootController];
  v7 = rootController;
  if (dataSource == rootController)
  {
    rootController2 = [(RoutePlanningOverviewViewController *)self rootController];
    transportType = [rootController2 transportType];

    if (transportType == 4)
    {
      return;
    }

    rootController3 = [(RoutePlanningOverviewViewController *)self rootController];
    [rootController3 reloadVisibleRouteCells];
  }

  else
  {
  }
}

- (void)didTapReportAProblemButtonOnRoutePlanningFooterView:(id)view
{
  dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  transportType = [dataCoordinator transportType];

  if (transportType > 2)
  {
    if (transportType == 3)
    {
      v7 = 303;
      goto LABEL_22;
    }

    if (transportType != 4)
    {
      if (transportType == 5)
      {
        v7 = 305;
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_22;
    }
  }

  else if (transportType)
  {
    if (transportType == 2)
    {
      v6 = 302;
    }

    else
    {
      v6 = 0;
    }

    if (transportType == 1)
    {
      v7 = 301;
    }

    else
    {
      v7 = v6;
    }

    goto LABEL_22;
  }

  v8 = sub_10006D178();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v14 = 136315650;
    v15 = "[RoutePlanningOverviewViewController didTapReportAProblemButtonOnRoutePlanningFooterView:]";
    v16 = 2080;
    v17 = "RoutePlanningOverviewViewController.m";
    v18 = 1024;
    v19 = 1367;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v14, 0x1Cu);
  }

  if (sub_100E03634())
  {
    v9 = sub_10006D178();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = +[NSThread callStackSymbols];
      v14 = 138412290;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@", &v14, 0xCu);
    }
  }

  v7 = 0;
LABEL_22:
  v11 = +[MKMapService sharedService];
  [v11 captureUserAction:5013 onTarget:v7 eventValue:0];

  _maps_mapsSceneDelegate = [(RoutePlanningOverviewViewController *)self _maps_mapsSceneDelegate];
  rapPresenter = [_maps_mapsSceneDelegate rapPresenter];
  [rapPresenter presentReportAProblemForRouteFromEntryPoint:v7];
}

- (void)_collectRevealAnalyticForTransportType:(int64_t)type
{
  if (type > 5)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_101213674[type];
  }

  [GEOAPPortal captureUserAction:21 target:v3 value:0];
}

- (void)_updateToTransportType:(int64_t)type
{
  dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  transportType = [dataCoordinator transportType];

  if (transportType != type)
  {
    v7 = +[MKMapService sharedService];
    if (type > 5)
    {
      v8 = 3012;
    }

    else
    {
      v8 = dword_10121365C[type];
    }

    [v7 captureUserAction:v8 onTarget:-[RoutePlanningOverviewViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];
  }

  dataCoordinator2 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  [dataCoordinator2 updateTransportType:type];

  [(RoutePlanningOverviewViewController *)self _refreshTimingDisplay];
  [(RoutePlanningOverviewViewController *)self _refreshOptionsVisibility];
  [(RoutePlanningOverviewViewController *)self _refreshContentInset];
  [(RoutePlanningOverviewViewController *)self _refreshSelectedVehicleDisplay];
  if (sub_10000FA08(self) == 5)
  {
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController updateHeightForCurrentLayout];
  }

  v11 = sub_100798A3C();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if ((type - 1) > 4)
    {
      v12 = @"Undefined";
    }

    else
    {
      v12 = *(&off_10162B9C8 + type - 1);
    }

    v13 = 138412290;
    v14 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "User manually changed the transport type: %@", &v13, 0xCu);
  }

  [(RoutePlanningOverviewViewController *)self _cancelAutoLaunch];
}

- (void)dataSource:(id)source didSelectRowForRoute:(id)route
{
  sourceCopy = source;
  routeCopy = route;
  if (-[RoutePlanningOverviewViewController isDisplayingSingleTrip](self, "isDisplayingSingleTrip") && (-[RoutePlanningOverviewViewController dataCoordinator](self, "dataCoordinator"), v7 = objc_claimAutoreleasedReturnValue(), [v7 routeCollection], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "currentRoute"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(routeCopy, "isEqual:", v9), v9, v8, v7, v10))
  {
    routePlanningDelegate = [(RoutePlanningOverviewViewController *)self routePlanningDelegate];
    [routePlanningDelegate presentRoutePlanningViewType:2];

    v12 = +[MKMapService sharedService];
    [v12 captureUserAction:3004 onTarget:-[RoutePlanningOverviewViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];
  }

  else
  {
    rootController = [(RoutePlanningOverviewViewController *)self rootController];

    if (rootController != sourceCopy)
    {
      goto LABEL_9;
    }

    routePlanningDelegate2 = [(RoutePlanningOverviewViewController *)self routePlanningDelegate];
    [routePlanningDelegate2 presentRoutePlanningViewType:0];

    dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    [dataCoordinator updateCurrentRoute:routeCopy];

    rootController2 = [(RoutePlanningOverviewViewController *)self rootController];
    allowsPersistentHighlight = [rootController2 allowsPersistentHighlight];

    if ((allowsPersistentHighlight & 1) == 0)
    {
      cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
      [cardPresentationController wantsLayout:2];
    }

    v12 = +[MKMapService sharedService];
    [v12 captureUserAction:3015 onTarget:-[RoutePlanningOverviewViewController currentUITargetForAnalytics](self eventValue:"currentUITargetForAnalytics") routeIndex:{0, objc_msgSend(routeCopy, "_maps_routeIndex")}];
  }

LABEL_9:
}

- (void)didTapAutomaticSharingButtonForRouteOverviewCell:(id)cell
{
  routePlanningDelegate = [(RoutePlanningOverviewViewController *)self routePlanningDelegate];
  [routePlanningDelegate presentRoutePlanningViewType:7];
}

- (void)didTapDetailsButtonForRouteOverviewCell:(id)cell
{
  cellCopy = cell;
  collectionView = [(RoutePlanningOverviewViewController *)self collectionView];
  dataSource = [collectionView dataSource];
  rootController = [(RoutePlanningOverviewViewController *)self rootController];

  if (dataSource == rootController)
  {
    collectionView2 = [(RoutePlanningOverviewViewController *)self collectionView];
    v8 = [collectionView2 indexPathForCell:cellCopy];

    v9 = sub_10000FA08(self);
    rootController2 = [(RoutePlanningOverviewViewController *)self rootController];
    v11 = rootController2;
    if (v9 == 5)
    {
      [rootController2 toggleStepsExpansionForRouteAtIndexPath:v8];
    }

    else
    {
      v12 = [rootController2 routeForRowAtIndexPath:v8];

      if (v12)
      {
        dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
        [dataCoordinator updateCurrentRoute:v12];

        routePlanningDelegate = [(RoutePlanningOverviewViewController *)self routePlanningDelegate];
        [routePlanningDelegate presentRoutePlanningViewType:2];

        v11 = v12;
      }

      else
      {
        v11 = 0;
      }
    }

    v15 = +[MKMapService sharedService];
    [v15 captureUserAction:3004 onTarget:-[RoutePlanningOverviewViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];
  }
}

- (void)_startNavigationForRouteCollection:(id)collection navigationDetailsOptions:(NavigationDetailsOptions *)options
{
  collectionCopy = collection;
  routePlanningDelegate = [(RoutePlanningOverviewViewController *)self routePlanningDelegate];
  v8 = *&options->guidanceType;
  v9[0] = *&options->shouldSimulateLocations;
  v9[1] = v8;
  v9[2] = *&options->isReconnecting;
  navigationModeContext = options->navigationModeContext;
  [routePlanningDelegate startNavigationWithRouteCollection:collectionCopy navigationDetailsOptions:v9];
}

- (void)_promptForSimulationAndStartNavigationForRouteCollection:(id)collection
{
  collectionCopy = collection;
  if (!collectionCopy)
  {
    v19 = sub_10006D178();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *location = 136315906;
      *&location[4] = "[RoutePlanningOverviewViewController _promptForSimulationAndStartNavigationForRouteCollection:]";
      v30 = 2080;
      v31 = "RoutePlanningOverviewViewController.m";
      v32 = 1024;
      v33 = 1234;
      v34 = 2080;
      v35 = "routeCollection != nil";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", location, 0x26u);
    }

    if (sub_100E03634())
    {
      v20 = sub_10006D178();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = +[NSThread callStackSymbols];
        *location = 138412290;
        *&location[4] = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%@", location, 0xCu);
      }
    }
  }

  _maps_platformController = [(RoutePlanningOverviewViewController *)self _maps_platformController];
  currentSession = [_maps_platformController currentSession];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = currentSession;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    currentRoute = [collectionCopy currentRoute];
    if (([currentRoute isMultipointRoute]& 1) == 0)
    {
      origin = [currentRoute origin];
      geoMapItem = [origin geoMapItem];

      destination = [currentRoute destination];
      geoMapItem2 = [destination geoMapItem];

      if (geoMapItem && geoMapItem2)
      {
        transportType = [currentRoute transportType];
        v14 = +[MapsSuggestionsPredictor sharedPredictor];
        v15 = MapsSuggestionsMapItemConvertIfNeeded();
        v16 = MapsSuggestionsMapItemConvertIfNeeded();
        [v14 captureActualTransportationMode:transportType originMapItem:v15 destinationMapItem:v16];
      }
    }

    objc_initWeak(location, self);
    configuration = [v7 configuration];
    isNavigationTracePlayback = [configuration isNavigationTracePlayback];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100834B8C;
    v26[3] = &unk_10165F2B8;
    objc_copyWeak(&v28, location);
    v27 = collectionCopy;
    [NavigationSimulationPromptController promptIfNeededForSimulationForRoute:currentRoute navigationTracePlayback:isNavigationTracePlayback continueWithOptions:v26];

    objc_destroyWeak(&v28);
    objc_destroyWeak(location);
  }

  else
  {
    v22 = sub_10006D178();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *location = 136315906;
      *&location[4] = "[RoutePlanningOverviewViewController _promptForSimulationAndStartNavigationForRouteCollection:]";
      v30 = 2080;
      v31 = "RoutePlanningOverviewViewController.m";
      v32 = 1024;
      v33 = 1238;
      v34 = 2080;
      v35 = "routePlanningSession != nil";
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", location, 0x26u);
    }

    if (sub_100E03634())
    {
      v23 = sub_10006D178();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = +[NSThread callStackSymbols];
        *location = 138412290;
        *&location[4] = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%@", location, 0xCu);
      }
    }

    currentRoute = sub_100798A3C();
    if (os_log_type_enabled(currentRoute, OS_LOG_TYPE_ERROR))
    {
      *location = 0;
      _os_log_impl(&_mh_execute_header, currentRoute, OS_LOG_TYPE_ERROR, "Attempt to go from route planning to navigation without a currently active RoutePlanningSession", location, 2u);
    }
  }
}

- (void)_doPromptsAndStartNavForRouteCollection:(id)collection
{
  collectionCopy = collection;
  if (SBUIIsSystemApertureEnabled())
  {
    [(RoutePlanningOverviewViewController *)self _promptForSimulationAndStartNavigationForRouteCollection:collectionCopy];
  }

  else
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100834CFC;
    v5[3] = &unk_10162B7A0;
    v5[4] = self;
    v6 = collectionCopy;
    [PushNotificationPrompt checkShouldRepeatForUserAction:v5];
  }
}

- (void)didTapRideBookingActionForRouteOverviewCell:(id)cell
{
  cellCopy = cell;
  [(RoutePlanningOverviewViewController *)self _cancelAutoLaunch];
  collectionView = [(RoutePlanningOverviewViewController *)self collectionView];
  dataSource = [collectionView dataSource];
  rideBookingSource = [(RoutePlanningOverviewViewController *)self rideBookingSource];

  if (dataSource != rideBookingSource)
  {
    v21 = sub_10006D178();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [NSString stringWithFormat:@"Data source is not ride booking ignoring go button tap"];;
      v25 = 136316162;
      v26 = "[RoutePlanningOverviewViewController didTapRideBookingActionForRouteOverviewCell:]";
      v27 = 2080;
      v28 = "RoutePlanningOverviewViewController.m";
      v29 = 1024;
      v30 = 1192;
      v31 = 2080;
      v32 = "self.collectionView.dataSource == self.rideBookingSource";
      v33 = 2112;
      v34 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", &v25, 0x30u);
    }

    if (sub_100E03634())
    {
      v23 = sub_10006D178();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = +[NSThread callStackSymbols];
        v25 = 138412290;
        v26 = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%@", &v25, 0xCu);
      }
    }
  }

  collectionView2 = [(RoutePlanningOverviewViewController *)self collectionView];
  dataSource2 = [collectionView2 dataSource];
  rideBookingSource2 = [(RoutePlanningOverviewViewController *)self rideBookingSource];

  if (dataSource2 == rideBookingSource2)
  {
    collectionView3 = [(RoutePlanningOverviewViewController *)self collectionView];
    v12 = [collectionView3 indexPathForCell:cellCopy];

    v13 = sub_100798A3C();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v25 = 138412290;
      v26 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Go button was tapped at cell indexPath: %@", &v25, 0xCu);
    }

    collectionView4 = [(RoutePlanningOverviewViewController *)self collectionView];
    dataSource3 = [collectionView4 dataSource];

    v16 = [dataSource3 outlineSectionAtIndex:{objc_msgSend(v12, "section")}];
    [v16 didSelectItemAtIndexPath:v12];
    v17 = +[MKMapService sharedService];
    currentUITargetForAnalytics = [(RoutePlanningOverviewViewController *)self currentUITargetForAnalytics];
    v19 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v12 section]);
    stringValue = [v19 stringValue];
    [v17 captureUserAction:14003 onTarget:currentUITargetForAnalytics eventValue:stringValue];
  }
}

- (void)didTapGoOnRoute:(id)route
{
  routeCopy = route;
  [(RoutePlanningOverviewViewController *)self _cancelAutoLaunch];
  if (routeCopy)
  {
    uniqueRouteID = [routeCopy uniqueRouteID];
    dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    routeCollection = [dataCoordinator routeCollection];

    v8 = [(RouteCollection *)routeCollection indexForUniqueRouteID:uniqueRouteID];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = sub_100798A3C();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v34 = uniqueRouteID;
        v35 = 2114;
        v36 = routeCollection;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "routeID: %{public}@ not found in dataCoordinator's routeCollection: %{public}@", buf, 0x16u);
      }

      v10 = sub_10006D178();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v34 = "[RoutePlanningOverviewViewController didTapGoOnRoute:]";
        v35 = 2080;
        v36 = "RoutePlanningOverviewViewController.m";
        v37 = 1024;
        v38 = 1165;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
      }

      if (sub_100E03634())
      {
        v11 = sub_10006D178();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v34 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }

      rootController = [(RoutePlanningOverviewViewController *)self rootController];
      routeCollection2 = [rootController routeCollection];

      v15 = [(RouteCollection *)routeCollection2 indexForUniqueRouteID:uniqueRouteID];
      if (v15 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v16 = sub_100798A3C();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v34 = uniqueRouteID;
          v35 = 2114;
          v36 = routeCollection2;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "routeID: %{public}@ not found in rootController's routeCollection: %{public}@", buf, 0x16u);
        }

        v17 = sub_10006D178();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v34 = "[RoutePlanningOverviewViewController didTapGoOnRoute:]";
          v35 = 2080;
          v36 = "RoutePlanningOverviewViewController.m";
          v37 = 1024;
          v38 = 1170;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
        }

        if (sub_100E03634())
        {
          v18 = sub_10006D178();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v19 = +[NSThread callStackSymbols];
            *buf = 138412290;
            v34 = v19;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }
        }

        v20 = [RouteCollection alloc];
        v32 = routeCopy;
        v21 = [NSArray arrayWithObjects:&v32 count:1];
        routeCollection = [(RouteCollection *)v20 initWithRoutes:v21 currentRouteIndex:0];

        v22 = 0;
      }

      else
      {
        v22 = v15;
        routeCollection = routeCollection2;
      }
    }

    else
    {
      v22 = v8;
    }

    v26 = [(RouteCollection *)routeCollection routeCollectionByChangingCurrentRouteIndex:v22];

    v27 = sub_100798A3C();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v34 = v26;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "starting navigation with route collection: %{public}@", buf, 0xCu);
    }

    if ([routeCopy isFamiliarRoute])
    {
      dataCoordinator2 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
      transportType = [dataCoordinator2 transportType];

      if (transportType == 1)
      {
        v30 = +[MKMapService sharedService];
        [v30 captureUserAction:527 onTarget:301 eventValue:0];
      }
    }

    dataCoordinator3 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    [dataCoordinator3 updateCurrentRouteIndex:v22];

    [(RoutePlanningOverviewViewController *)self _doPromptsAndStartNavForRouteCollection:v26];
    [(RoutePlanningOverviewViewController *)self _markFeatureDiscoveryShown];

LABEL_36:
    goto LABEL_37;
  }

  v23 = sub_100798A3C();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "didTapGoOnRoute had no route provided", buf, 2u);
  }

  v24 = sub_10006D178();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v34 = "[RoutePlanningOverviewViewController didTapGoOnRoute:]";
    v35 = 2080;
    v36 = "RoutePlanningOverviewViewController.m";
    v37 = 1024;
    v38 = 1156;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
  }

  if (sub_100E03634())
  {
    uniqueRouteID = sub_10006D178();
    if (os_log_type_enabled(uniqueRouteID, OS_LOG_TYPE_ERROR))
    {
      v25 = +[NSThread callStackSymbols];
      *buf = 138412290;
      v34 = v25;
      _os_log_impl(&_mh_execute_header, uniqueRouteID, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    goto LABEL_36;
  }

LABEL_37:
}

- (void)_cancelAutoLaunch
{
  dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  platformController = [dataCoordinator platformController];
  auxiliaryTasksManager = [platformController auxiliaryTasksManager];
  v5 = [auxiliaryTasksManager auxilaryTaskForClass:objc_opt_class()];

  [v5 cancelNavigationAutoLaunchIfNeccessary];
}

- (void)didTapRouteCreationButtonForCell:(id)cell
{
  if (!self->_hasPushedRouteCreation)
  {
    v4 = sub_100798A3C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Pressed enter route creation (new route)", buf, 2u);
    }

    self->_hasPushedRouteCreation = 1;
    dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    resolvedWaypointSet = [dataCoordinator resolvedWaypointSet];
    origin = [resolvedWaypointSet origin];

    if (origin && ([origin coordinate], v9 = v8, objc_msgSend(origin, "coordinate"), v30 = CLLocationCoordinate2DMake(v9, v10), CLLocationCoordinate2DIsValid(v30)))
    {
      mkMapItem = [origin mkMapItem];
      v12 = sub_100798A3C();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        shortDescription = [origin shortDescription];
        *buf = 138477827;
        v29 = shortDescription;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Providing a pre-selected origin: %{private}@", buf, 0xCu);
      }
    }

    else
    {
      v12 = sub_100798A3C();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Origin doesn't have a valid coordinate to use", buf, 2u);
      }

      mkMapItem = 0;
    }

    resolvedWaypointSet2 = [dataCoordinator resolvedWaypointSet];
    destination = [resolvedWaypointSet2 destination];

    if (destination && ([destination coordinate], v17 = v16, objc_msgSend(destination, "coordinate"), v31 = CLLocationCoordinate2DMake(v17, v18), CLLocationCoordinate2DIsValid(v31)))
    {
      mkMapItem2 = [destination mkMapItem];
      v20 = sub_100798A3C();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        shortDescription2 = [destination shortDescription];
        *buf = 138477827;
        v29 = shortDescription2;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Providing a pre-selected destination: %{private}@", buf, 0xCu);
      }
    }

    else
    {
      v20 = sub_100798A3C();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Destination doesn't have a valid coordinate to use", buf, 2u);
      }

      mkMapItem2 = 0;
    }

    v22 = +[MKMapService sharedService];
    [v22 captureUserAction:465 onTarget:-[RoutePlanningOverviewViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];

    _maps_mapsSceneDelegate = [(RoutePlanningOverviewViewController *)self _maps_mapsSceneDelegate];
    appCoordinator = [_maps_mapsSceneDelegate appCoordinator];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100835D10;
    v26[3] = &unk_101661B18;
    v27 = dataCoordinator;
    v25 = dataCoordinator;
    [appCoordinator enterRouteCreationWithRoute:0 originMapItem:mkMapItem destinationMapItem:mkMapItem2 userInfo:0 completion:v26];
  }
}

- (void)dataSource:(id)source requiresDeletionOfIndexSet:(id)set reloadOfIndexSet:(id)indexSet insertionOfIndexSet:(id)ofIndexSet
{
  sourceCopy = source;
  setCopy = set;
  indexSetCopy = indexSet;
  ofIndexSetCopy = ofIndexSet;
  rideBookingSource = [(RoutePlanningOverviewViewController *)self rideBookingSource];

  if (rideBookingSource != sourceCopy)
  {
    v18 = sub_10006D178();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v26 = "[RoutePlanningOverviewViewController dataSource:requiresDeletionOfIndexSet:reloadOfIndexSet:insertionOfIndexSet:]";
      v27 = 2080;
      v28 = "RoutePlanningOverviewViewController.m";
      v29 = 1024;
      v30 = 1093;
      v31 = 2080;
      v32 = "dataSource == self.rideBookingSource";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v19 = sub_10006D178();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v26 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  collectionView = [(RoutePlanningOverviewViewController *)self collectionView];
  dataSource = [collectionView dataSource];

  if (dataSource == sourceCopy)
  {
    collectionView2 = [(RoutePlanningOverviewViewController *)self collectionView];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100835FA8;
    v21[3] = &unk_101656A00;
    v21[4] = self;
    v22 = indexSetCopy;
    v23 = setCopy;
    v24 = ofIndexSetCopy;
    [collectionView2 performBatchUpdates:v21 completion:&stru_10162B778];
  }
}

- (void)dataSource:(id)source requiresReloadOfSection:(unint64_t)section
{
  sourceCopy = source;
  rideBookingSource = [(RoutePlanningOverviewViewController *)self rideBookingSource];

  if (rideBookingSource != sourceCopy)
  {
    v11 = sub_10006D178();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v17 = "[RoutePlanningOverviewViewController dataSource:requiresReloadOfSection:]";
      v18 = 2080;
      v19 = "RoutePlanningOverviewViewController.m";
      v20 = 1024;
      v21 = 1076;
      v22 = 2080;
      v23 = "dataSource == self.rideBookingSource";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v12 = sub_10006D178();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v17 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  collectionView = [(RoutePlanningOverviewViewController *)self collectionView];
  dataSource = [collectionView dataSource];

  if (dataSource == sourceCopy)
  {
    [(RoutePlanningOverviewViewController *)self _updateRidesharingAnalytics];
    collectionView2 = [(RoutePlanningOverviewViewController *)self collectionView];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1008362A4;
    v15[3] = &unk_101661650;
    v15[4] = self;
    v15[5] = section;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100836318;
    v14[3] = &unk_101661738;
    v14[4] = self;
    [collectionView2 performBatchUpdates:v15 completion:v14];
  }
}

- (void)dataSourceRequiresReload:(id)reload
{
  reloadCopy = reload;
  collectionView = [(RoutePlanningOverviewViewController *)self collectionView];
  dataSource = [collectionView dataSource];

  if (dataSource == reloadCopy)
  {
    [(RoutePlanningOverviewViewController *)self _updateRidesharingAnalytics];
    collectionView2 = [(RoutePlanningOverviewViewController *)self collectionView];
    [collectionView2 _maps_reloadDataWithoutFocus];

    [(RoutePlanningOverviewViewController *)self _animateUpdatingHeightForSingleTrip];
  }
}

- (void)headerViewButtonTapped:(id)tapped buttonType:(unint64_t)type
{
  tappedCopy = tapped;
  [(RoutePlanningOverviewViewController *)self _markFeatureDiscoveryShown];
  [(RoutePlanningOverviewViewController *)self handleDismissAction:tappedCopy];
}

- (BOOL)_areWaypointsInCountryCode:(id)code
{
  codeCopy = code;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  rootController = [(RoutePlanningOverviewViewController *)self rootController];
  routeCollection = [rootController routeCollection];
  currentRoute = [routeCollection currentRoute];
  waypoints = [currentRoute waypoints];

  v9 = [waypoints countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(waypoints);
        }

        mapItemStorage = [*(*(&v18 + 1) + 8 * i) mapItemStorage];
        _bestAvailableCountryCode = [mapItemStorage _bestAvailableCountryCode];
        v15 = [_bestAvailableCountryCode isEqual:codeCopy];

        if (!v15)
        {
          v16 = 0;
          goto LABEL_11;
        }
      }

      v10 = [waypoints countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16 = 1;
LABEL_11:

  return v16;
}

- (void)_markFeatureDiscoveryShown
{
  if ([(RoutePlanningOverviewViewController *)self _areWaypointsInCountryCode:@"FR"])
  {
    rootController = [(RoutePlanningOverviewViewController *)self rootController];
    [rootController markFeatureDiscoveryShown];
  }
}

- (void)_presentRouteOptions
{
  dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  transportType = [dataCoordinator transportType];

  if (!transportType)
  {
    dataCoordinator2 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    transportType = [dataCoordinator2 desiredTransportType];
  }

  v6 = 17099;
  if (transportType > 2)
  {
    v8 = 3035;
    if (transportType == 5)
    {
      v6 = 3048;
    }

    else
    {
      v6 = 17099;
    }

    v7 = transportType == 3;
  }

  else
  {
    if (!transportType)
    {
      return;
    }

    v7 = transportType == 1;
    v8 = 3036;
  }

  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  v10 = +[MKMapService sharedService];
  [v10 captureUserAction:v9 onTarget:-[RoutePlanningOverviewViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];

  routePlanningDelegate = [(RoutePlanningOverviewViewController *)self routePlanningDelegate];
  [routePlanningDelegate presentRoutePlanningViewType:4];
}

- (void)_presentEbikeOptions
{
  dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  transportType = [dataCoordinator transportType];

  if (!transportType)
  {
    dataCoordinator2 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    transportType = [dataCoordinator2 desiredTransportType];
  }

  if (transportType == 5 && sub_10072B0F0())
  {
    routePlanningDelegate = [(RoutePlanningOverviewViewController *)self routePlanningDelegate];
    [routePlanningDelegate presentRoutePlanningViewType:8];
  }
}

- (BOOL)_shouldPermitAutomaticSharingContacts
{
  dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  [dataCoordinator transportType];
  v3 = MSPSharedTripSharingSupportedForTransportType();

  return v3;
}

- (void)_refreshContactsDisplayForAutomaticTripSharing
{
  dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  platformController = [dataCoordinator platformController];

  currentSession = [platformController currentSession];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = currentSession;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  configuration = [v7 configuration];

  automaticSharingContacts = [configuration automaticSharingContacts];

  if ([(RoutePlanningOverviewViewController *)self _shouldPermitAutomaticSharingContacts])
  {
    v10 = sub_1000946AC();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v19 = 134217984;
      v20 = [automaticSharingContacts count];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "RoutePlanningOverviewViewController updating routes list with %lu autosharing contacts", &v19, 0xCu);
    }

    rootController = [(RoutePlanningOverviewViewController *)self rootController];
    v12 = rootController;
    v13 = automaticSharingContacts;
LABEL_15:
    [rootController setAutomaticSharingContacts:v13];

    goto LABEL_16;
  }

  if ([automaticSharingContacts count])
  {
    v14 = sub_1000946AC();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [automaticSharingContacts count];
      dataCoordinator2 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
      transportType = [dataCoordinator2 transportType];
      if ((transportType - 1) > 4)
      {
        v18 = @"Undefined";
      }

      else
      {
        v18 = *(&off_10162B9C8 + (transportType - 1));
      }

      v19 = 134218242;
      v20 = v15;
      v21 = 2112;
      v22 = v18;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "RoutePlanningOverviewViewController have %lu autosharing contacts but incompatible transport type: %@", &v19, 0x16u);
    }

    rootController = [(RoutePlanningOverviewViewController *)self rootController];
    v12 = rootController;
    v13 = &__NSArray0__struct;
    goto LABEL_15;
  }

LABEL_16:
}

- (void)_updateDataSourceRouteCollection:(id)collection
{
  collectionCopy = collection;
  rootController = [(RoutePlanningOverviewViewController *)self rootController];
  dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  transportType = [dataCoordinator transportType];
  dataCoordinator2 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  [rootController updateWithTransportType:transportType routeCollection:collectionCopy isInACustomRouteRegion:{objc_msgSend(dataCoordinator2, "inACustomRouteRegion")}];
}

- (BOOL)_hasModalViewControllerInTransition
{
  presentedViewController = [(RoutePlanningOverviewViewController *)self presentedViewController];
  if ([presentedViewController isBeingPresented])
  {
    isBeingDismissed = 1;
  }

  else
  {
    presentedViewController2 = [(RoutePlanningOverviewViewController *)self presentedViewController];
    isBeingDismissed = [presentedViewController2 isBeingDismissed];
  }

  return isBeingDismissed;
}

- (void)_finishLaunchingIntoNavIfPossible:(id)possible
{
  possibleCopy = possible;
  v5 = +[MNNavigationService sharedService];
  isInNavigatingState = [v5 isInNavigatingState];

  _hasModalViewControllerInTransition = [(RoutePlanningOverviewViewController *)self _hasModalViewControllerInTransition];
  if ((isInNavigatingState & 1) == 0 && (_hasModalViewControllerInTransition & 1) == 0)
  {
    +[StartNavigationDetailsBuilder defaultNavigationDetailsOptions];
    [(RoutePlanningOverviewViewController *)self _startNavigationForRouteCollection:possibleCopy navigationDetailsOptions:v8];
  }
}

- (void)routePlanningDataCoordinator:(id)coordinator didUpdateRoutes:(id)routes
{
  routesCopy = routes;
  [PPTNotificationCenter postNotificationIfNeededWithName:@"MapsTestingTransitRouteUpdateWillUpdateSummary" object:0 userInfo:0];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = routesCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        rootController = [(RoutePlanningOverviewViewController *)self rootController];
        [rootController reloadExistingCellForRoute:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [PPTNotificationCenter postNotificationIfNeededWithName:@"MapsTestingTransitRouteUpdateDidUpdateSummary" object:0 userInfo:0];
}

- (void)routePlanningDataCoordinator:(id)coordinator didUpdateRouteCollection:(id)collection
{
  coordinatorCopy = coordinator;
  collectionCopy = collection;
  v7 = +[UIMenuSystem mainSystem];
  [v7 setNeedsRebuild];

  [(RoutePlanningOverviewViewController *)self setRouteCellsHeight:-1.0];
  if ([collectionCopy count])
  {
    [CATransaction setFrameStallSkipRequest:1];
    transportTypePicker = [(RoutePlanningOverviewViewController *)self transportTypePicker];
    if (transportTypePicker)
    {
      v9 = transportTypePicker;
      desiredTransportType = [coordinatorCopy desiredTransportType];
      transportTypePicker2 = [(RoutePlanningOverviewViewController *)self transportTypePicker];
      selectedType = [transportTypePicker2 selectedType];

      if (desiredTransportType != selectedType)
      {
        desiredTransportType2 = [coordinatorCopy desiredTransportType];
        transportTypePicker3 = [(RoutePlanningOverviewViewController *)self transportTypePicker];
        [transportTypePicker3 setSelectedType:desiredTransportType2];
      }
    }

    [(RoutePlanningOverviewViewController *)self _refreshTimingDisplay];
    [(RoutePlanningOverviewViewController *)self _refreshContactsDisplayForAutomaticTripSharing];
    [(RoutePlanningOverviewViewController *)self _updateDataSourceRouteCollection:collectionCopy];
    [(RoutePlanningOverviewViewController *)self _scrollToCellToShowAtMediumLayoutAnimated:[(RoutePlanningOverviewViewController *)self isDisplayingSingleTrip]^ 1];
    [(RoutePlanningOverviewViewController *)self _setupAdvisoryFooterView];
    [(RoutePlanningOverviewViewController *)self _animateUpdatingHeightForSingleTrip];
    v15 = +[NSNotificationCenter defaultCenter];
    [v15 postNotificationName:@"MapsRoutePlanningShowingRoutesNotification" object:self];
  }
}

- (void)_updateRidesharingAnalytics
{
  collectionView = [(RoutePlanningOverviewViewController *)self collectionView];
  dataSource = [collectionView dataSource];
  rideBookingSource = [(RoutePlanningOverviewViewController *)self rideBookingSource];

  if (dataSource == rideBookingSource)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    rideOptionStateObserver = [dataCoordinator rideOptionStateObserver];
    rideOptionState = [rideOptionStateObserver rideOptionState];
    rideOptionStatusMap = [rideOptionState rideOptionStatusMap];
    allValues = [rideOptionStatusMap allValues];

    v11 = [allValues countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v24;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(allValues);
          }

          rideOptions = [*(*(&v23 + 1) + 8 * i) rideOptions];
          v13 += [rideOptions count];
        }

        v12 = [allValues countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v12);
    }

    else
    {
      v13 = 0;
    }

    dataCoordinator2 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    rideOptionStateObserver2 = [dataCoordinator2 rideOptionStateObserver];
    analyticsBookingSession = [rideOptionStateObserver2 analyticsBookingSession];
    [analyticsBookingSession captureRideOptionCount:v13];

    dataCoordinator3 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    rideOptionStateObserver3 = [dataCoordinator3 rideOptionStateObserver];
    analyticsBookingSession2 = [rideOptionStateObserver3 analyticsBookingSession];
    [analyticsBookingSession2 captureView:1];
  }
}

- (void)routePlanningDataCoordinator:(id)coordinator didUpdateRequestState:(int64_t)state
{
  delegate = [(ControlContaineeViewController *)self delegate];
  [delegate refreshRoutePlanningTimingIfNeeded];

  [(RoutePlanningOverviewViewController *)self _updateForEquivalentRequestState:state];
}

- (void)routePlanningDataCoordinator:(id)coordinator didUpdateRideBookingRideOptionState:(id)state
{
  stateCopy = state;
  rideBookingSource = [(RoutePlanningOverviewViewController *)self rideBookingSource];
  [rideBookingSource configureWithRideBookingRideOptionState:stateCopy];
}

- (void)routePlanningDataCoordinator:(id)coordinator didUpdateTransportType:(int64_t)type
{
  coordinatorCopy = coordinator;
  delegate = [(ControlContaineeViewController *)self delegate];
  [delegate dismissRoutePlanningPlaceCardIfNeeded];

  transportTypePicker = [(RoutePlanningOverviewViewController *)self transportTypePicker];

  if (transportTypePicker)
  {
    transportTypePicker2 = [(RoutePlanningOverviewViewController *)self transportTypePicker];
    [transportTypePicker2 setSelectedType:type];
  }

  v9 = sub_100016C50();
  if (type == 4 && v9)
  {
    [(RoutePlanningOverviewViewController *)self _stopReferenceDateUpdates];
    [(RoutePlanningOverviewViewController *)self _prepareRideBookingForFirstUse];
    collectionView = [(RoutePlanningOverviewViewController *)self collectionView];
    dataSource = [collectionView dataSource];
    rideBookingSource = [(RoutePlanningOverviewViewController *)self rideBookingSource];
    v13 = rideBookingSource;
    if (dataSource == rideBookingSource)
    {
      collectionView2 = [(RoutePlanningOverviewViewController *)self collectionView];
      delegate2 = [collectionView2 delegate];
      rideBookingSource2 = [(RoutePlanningOverviewViewController *)self rideBookingSource];

      if (delegate2 == rideBookingSource2)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

    rootController = [(RoutePlanningOverviewViewController *)self rootController];
    [rootController setCollectionView:0];

    collectionView3 = [(RoutePlanningOverviewViewController *)self collectionView];
    rideBookingSource3 = [(RoutePlanningOverviewViewController *)self rideBookingSource];
    [rideBookingSource3 setCollectionView:collectionView3];

    rootController2 = [(RoutePlanningOverviewViewController *)self rootController];
    headerView = [rootController2 headerView];
    rideBookingSource4 = [(RoutePlanningOverviewViewController *)self rideBookingSource];
    [rideBookingSource4 setHeaderView:headerView];
  }

  else
  {
    dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    rideOptionStateObserver = [dataCoordinator rideOptionStateObserver];
    analyticsBookingSession = [rideOptionStateObserver analyticsBookingSession];
    [analyticsBookingSession endSessionOnView:1 state:2];

    [(RoutePlanningOverviewViewController *)self _resetCountOfRideOptionsBooked];
    rootController3 = [(RoutePlanningOverviewViewController *)self rootController];
    routeCollection = [coordinatorCopy routeCollection];
    [rootController3 updateWithTransportType:type routeCollection:routeCollection isInACustomRouteRegion:{objc_msgSend(coordinatorCopy, "inACustomRouteRegion")}];

    if (type == 4)
    {
      [(RoutePlanningOverviewViewController *)self _stopReferenceDateUpdates];
    }

    else
    {
      [(RoutePlanningOverviewViewController *)self _startReferenceDateUpdates];
    }

    [(RoutePlanningOverviewViewController *)self _refreshContactsDisplayForAutomaticTripSharing];
    collectionView4 = [(RoutePlanningOverviewViewController *)self collectionView];
    dataSource2 = [collectionView4 dataSource];
    rootController4 = [(RoutePlanningOverviewViewController *)self rootController];
    v22 = rootController4;
    if (dataSource2 == rootController4)
    {
      collectionView5 = [(RoutePlanningOverviewViewController *)self collectionView];
      delegate3 = [collectionView5 delegate];
      rootController5 = [(RoutePlanningOverviewViewController *)self rootController];

      if (delegate3 == rootController5)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

    rideBookingSource5 = [(RoutePlanningOverviewViewController *)self rideBookingSource];
    [rideBookingSource5 setCollectionView:0];

    collectionView6 = [(RoutePlanningOverviewViewController *)self collectionView];
    rootController6 = [(RoutePlanningOverviewViewController *)self rootController];
    [rootController6 setCollectionView:collectionView6];

    rideBookingSource6 = [(RoutePlanningOverviewViewController *)self rideBookingSource];
    headerView2 = [rideBookingSource6 headerView];
    rootController7 = [(RoutePlanningOverviewViewController *)self rootController];
    [rootController7 setHeaderView:headerView2];

    [(RoutePlanningOverviewViewController *)self _scrollToCellToShowAtMediumLayoutAnimated:[(RoutePlanningOverviewViewController *)self isDisplayingSingleTrip]^ 1];
  }

LABEL_16:
  [(RoutePlanningOverviewViewController *)self _refreshTimingDisplay];
  [(RoutePlanningOverviewViewController *)self _refreshOptionsVisibility];
  [(RoutePlanningOverviewViewController *)self _refreshContentInset];
  [(RoutePlanningOverviewViewController *)self _collectRevealAnalyticForTransportType:type];
}

- (void)routePlanningDataCoordinator:(id)coordinator didUpdateResolvedWaypointSet:(id)set
{
  coordinatorCopy = coordinator;
  v6 = [CLLocation alloc];
  resolvedWaypointSet = [coordinatorCopy resolvedWaypointSet];
  origin = [resolvedWaypointSet origin];
  latLng = [origin latLng];
  [latLng lat];
  v10 = v9;
  resolvedWaypointSet2 = [coordinatorCopy resolvedWaypointSet];
  origin2 = [resolvedWaypointSet2 origin];
  latLng2 = [origin2 latLng];
  [latLng2 lng];
  v15 = [v6 initWithLatitude:v10 longitude:v14];
  dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  rideOptionStateObserver = [dataCoordinator rideOptionStateObserver];
  analyticsBookingSession = [rideOptionStateObserver analyticsBookingSession];
  [analyticsBookingSession setOrigin:v15];

  v19 = [CLLocation alloc];
  resolvedWaypointSet3 = [coordinatorCopy resolvedWaypointSet];
  destination = [resolvedWaypointSet3 destination];
  latLng3 = [destination latLng];
  [latLng3 lat];
  v23 = v22;
  resolvedWaypointSet4 = [coordinatorCopy resolvedWaypointSet];

  destination2 = [resolvedWaypointSet4 destination];
  latLng4 = [destination2 latLng];
  [latLng4 lng];
  v28 = [v19 initWithLatitude:v23 longitude:v27];
  dataCoordinator2 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  rideOptionStateObserver2 = [dataCoordinator2 rideOptionStateObserver];
  analyticsBookingSession2 = [rideOptionStateObserver2 analyticsBookingSession];
  [analyticsBookingSession2 setDestination:v28];

  [(RoutePlanningOverviewViewController *)self _updateDigitalIssuanceStateWithUpdateFlag:4];
}

- (void)viewSafeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = RoutePlanningOverviewViewController;
  [(RoutePlanningOverviewViewController *)&v3 viewSafeAreaInsetsDidChange];
  [(RoutePlanningOverviewViewController *)self _updateLoadingViewBottomInset];
}

- (void)didBecomeCurrent
{
  v7.receiver = self;
  v7.super_class = RoutePlanningOverviewViewController;
  [(ContaineeViewController *)&v7 didBecomeCurrent];
  if (self->_restoreRoutePlanningAfterRouteCreation)
  {
    self->_restoreRoutePlanningAfterRouteCreation = 0;
    _maps_platformController = [(RoutePlanningOverviewViewController *)self _maps_platformController];
    currentSession = [_maps_platformController currentSession];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
      [dataCoordinator resume];
    }
  }
}

- (void)willBecomeCurrent:(BOOL)current
{
  v8.receiver = self;
  v8.super_class = RoutePlanningOverviewViewController;
  [(ContaineeViewController *)&v8 willBecomeCurrent:current];
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  containerStyle = [cardPresentationController containerStyle];
  v6 = (containerStyle > 7) | (0x5Cu >> containerStyle);

  rootController = [(RoutePlanningOverviewViewController *)self rootController];
  [rootController setAllowPersistentHighlight:v6 & 1];

  if (self->_hasPushedRouteCreation)
  {
    self->_hasPushedRouteCreation = 0;
    self->_restoreRoutePlanningAfterRouteCreation = 1;
  }
}

- (void)didChangeContainerStyle:(unint64_t)style
{
  [(RoutePlanningOverviewViewController *)self _updateLoadingViewBottomInset];
  collectionView = [(RoutePlanningOverviewViewController *)self collectionView];
  [collectionView reloadData];
}

- (void)willChangeContainerStyle:(unint64_t)style
{
  v3 = (style > 7) | (0x5Cu >> style);
  rootController = [(RoutePlanningOverviewViewController *)self rootController];
  [rootController setAllowPersistentHighlight:v3 & 1];
}

- (CGRect)_rectOfRowToKeepVisible
{
  dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  transportType = [dataCoordinator transportType];

  if (transportType == 4)
  {
    rootController = [NSIndexPath indexPathForRow:0 inSection:0];
    collectionView = [(RoutePlanningOverviewViewController *)self collectionView];
    collectionViewLayout = [collectionView collectionViewLayout];
    currentRouteCollection = [collectionViewLayout layoutAttributesForItemAtIndexPath:rootController];

    [currentRouteCollection frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
  }

  else
  {
    dataCoordinator2 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    platformController = [dataCoordinator2 platformController];
    currentSession = [platformController currentSession];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = currentSession;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    rootController = [(RoutePlanningOverviewViewController *)self rootController];
    currentRouteCollection = [v21 currentRouteCollection];

    currentRoute = [currentRouteCollection currentRoute];
    [rootController mostImportantRectToFrameWithSelectedRoute:currentRoute];
    v10 = v23;
    v12 = v24;
    v14 = v25;
    v16 = v26;
  }

  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController bottomSafeOffset];
  v29 = v28 + v16;

  v30 = v10;
  v31 = v12;
  v32 = v14;
  v33 = v29;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (double)_cardHeightMinusTableViewHeight
{
  [(ContaineeViewController *)self headerHeight];
  v4 = v3;
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController bottomSafeOffset];
  v7 = v6 + v4;

  return v7;
}

- (void)applyAlphaToContent:(double)content
{
  v6.receiver = self;
  v6.super_class = RoutePlanningOverviewViewController;
  [(ContaineeViewController *)&v6 applyAlphaToContent:?];
  transportTypePicker = [(RoutePlanningOverviewViewController *)self transportTypePicker];
  [transportTypePicker setAlpha:content];
}

- (void)handleDismissAction:(id)action
{
  actionCopy = action;
  dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  platformController = [dataCoordinator platformController];
  currentSession = [platformController currentSession];

  objc_opt_class();
  LOBYTE(dataCoordinator) = objc_opt_isKindOfClass();

  if ((dataCoordinator & 1) == 0 || !currentSession)
  {
    v9 = +[MKMapService sharedService];
    [v9 captureUserAction:4 onTarget:-[RoutePlanningOverviewViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];

    v10 = +[MapsSuggestionsPredictor sharedPredictor];
    [v10 cancelCapturingAnalytics];

    delegate = [(ControlContaineeViewController *)self delegate];

    if (delegate)
    {
      delegate2 = [(ControlContaineeViewController *)self delegate];
      [delegate2 viewControllerGoPreviousState:self withSender:actionCopy];
    }

    else
    {
      containeeDelegate = [(ContaineeViewController *)self containeeDelegate];

      if (!containeeDelegate)
      {
LABEL_11:
        rideBookingSource = [(RoutePlanningOverviewViewController *)self rideBookingSource];
        [rideBookingSource tableViewDismissed];

        dataCoordinator2 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
        rideOptionStateObserver = [dataCoordinator2 rideOptionStateObserver];
        analyticsBookingSession = [rideOptionStateObserver analyticsBookingSession];
        [analyticsBookingSession endSessionOnView:1 state:2];

        [(RoutePlanningOverviewViewController *)self _resetCountOfRideOptionsBooked];
        goto LABEL_12;
      }

      delegate2 = [(ContaineeViewController *)self containeeDelegate];
      [delegate2 containeeViewControllerGoToPreviousState:self withSender:actionCopy];
    }

    goto LABEL_11;
  }

  v8 = sub_100798A3C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "User tapped route planning close button but we are currently in navigation; ignoring", v18, 2u);
  }

LABEL_12:
}

- (double)heightForLayout:(unint64_t)layout
{
  v5 = sub_10006D178();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v9 = 136315650;
    v10 = "[RoutePlanningOverviewViewController heightForLayout:]";
    v11 = 2080;
    v12 = "RoutePlanningOverviewViewController.m";
    v13 = 1024;
    v14 = 684;
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

  [(RoutePlanningOverviewViewController *)self doesNotRecognizeSelector:a2];
  return 0.0;
}

- (void)shouldDismissForHorizontalSwipe_nonUIKitCardsOnly
{
  routePlanningDelegate = [(RoutePlanningOverviewViewController *)self routePlanningDelegate];
  [routePlanningDelegate closeRoutePlanningViewController:self withSender:0];
}

- (void)willChangeLayout:(unint64_t)layout
{
  v14.receiver = self;
  v14.super_class = RoutePlanningOverviewViewController;
  [(ContaineeViewController *)&v14 willChangeLayout:?];
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  containeeLayout = [cardPresentationController containeeLayout];

  if (((containeeLayout - 1) | (layout - 3)) <= 1)
  {
    v7 = +[MKMapService sharedService];
    [v7 captureUserAction:3010 onTarget:-[RoutePlanningOverviewViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];

    collectionView = [(RoutePlanningOverviewViewController *)self collectionView];
    dataSource = [collectionView dataSource];
    rideBookingSource = [(RoutePlanningOverviewViewController *)self rideBookingSource];

    if (dataSource == rideBookingSource)
    {
      dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
      rideOptionStateObserver = [dataCoordinator rideOptionStateObserver];
      analyticsBookingSession = [rideOptionStateObserver analyticsBookingSession];
      [analyticsBookingSession setComparedRideOptions:1];
    }
  }
}

- (void)_loadGarage
{
  objc_initWeak(&location, self);
  v2 = +[VGVirtualGarageService sharedService];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100838348;
  v3[3] = &unk_101655840;
  objc_copyWeak(&v4, &location);
  [v2 virtualGarageGetGarageWithReply:v3];

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (id)_initialConstraints
{
  collectionView = [(RoutePlanningOverviewViewController *)self collectionView];
  superview = [collectionView superview];

  collectionView2 = [(RoutePlanningOverviewViewController *)self collectionView];
  bottomAnchor = [collectionView2 bottomAnchor];
  bottomAnchor2 = [superview bottomAnchor];
  v8 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [(RoutePlanningOverviewViewController *)self setCollectionViewToBottomConstraint:v8];

  if ([(RoutePlanningOverviewViewController *)self isCollectionViewVisible])
  {
    v9 = 749.0;
  }

  else
  {
    v9 = 50.0;
  }

  collectionViewToBottomConstraint = [(RoutePlanningOverviewViewController *)self collectionViewToBottomConstraint];
  *&v11 = v9;
  [collectionViewToBottomConstraint setPriority:v11];

  v12 = objc_alloc_init(NSMutableArray);
  containerHeaderView = [(RoutePlanningOverviewViewController *)self containerHeaderView];
  headerView = [(ContaineeViewController *)self headerView];
  LODWORD(v15) = 1148846080;
  v16 = [containerHeaderView _maps_constraintsEqualToEdgesOfView:headerView priority:v15];
  allConstraints = [v16 allConstraints];
  [v12 addObjectsFromArray:allConstraints];

  return v12;
}

- (void)_setupSubviews
{
  v3 = [_RoutePlanningCollectionView alloc];
  v4 = +[RoutePlanningOutlineController defaultCollectionViewLayout];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(_RoutePlanningCollectionView *)v3 initWithFrame:v4 collectionViewLayout:CGRectZero.origin.x, y, width, height];
  [(RoutePlanningOverviewViewController *)self setCollectionView:height];

  collectionView = [(RoutePlanningOverviewViewController *)self collectionView];
  [collectionView setTranslatesAutoresizingMaskIntoConstraints:0];

  v10 = +[UIColor clearColor];
  collectionView2 = [(RoutePlanningOverviewViewController *)self collectionView];
  [collectionView2 setBackgroundColor:v10];

  collectionView3 = [(RoutePlanningOverviewViewController *)self collectionView];
  [collectionView3 setAlwaysBounceVertical:1];

  collectionView4 = [(RoutePlanningOverviewViewController *)self collectionView];
  [collectionView4 setRemembersLastFocusedIndexPath:0];

  collectionView5 = [(RoutePlanningOverviewViewController *)self collectionView];
  [collectionView5 setAllowsMultipleSelection:1];

  collectionView6 = [(RoutePlanningOverviewViewController *)self collectionView];
  [collectionView6 setPreservesSuperviewLayoutMargins:1];

  collectionView7 = [(RoutePlanningOverviewViewController *)self collectionView];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  [collectionView7 setAccessibilityIdentifier:v18];

  collectionView8 = [(RoutePlanningOverviewViewController *)self collectionView];
  [collectionView8 _setVisibleRectEdgeInsets:{-10000.0, 0.0, -10000.0, 0.0}];

  contentView = [(ContaineeViewController *)self contentView];
  collectionView9 = [(RoutePlanningOverviewViewController *)self collectionView];
  [contentView addSubview:collectionView9];

  collectionView10 = [(RoutePlanningOverviewViewController *)self collectionView];
  [(ContaineeViewController *)self setContentScrollView:collectionView10 forEdge:1];

  height2 = [[ContainerHeaderView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  [(RoutePlanningOverviewViewController *)self setContainerHeaderView:height2];

  containerHeaderView = [(RoutePlanningOverviewViewController *)self containerHeaderView];
  [containerHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];

  containerHeaderView2 = [(RoutePlanningOverviewViewController *)self containerHeaderView];
  [containerHeaderView2 setDelegate:self];

  containerHeaderView3 = [(RoutePlanningOverviewViewController *)self containerHeaderView];
  LODWORD(v27) = 1148846080;
  [containerHeaderView3 setContentCompressionResistancePriority:1 forAxis:v27];

  containerHeaderView4 = [(RoutePlanningOverviewViewController *)self containerHeaderView];
  containerHeaderView5 = [(RoutePlanningOverviewViewController *)self containerHeaderView];
  v30 = objc_opt_class();
  v31 = NSStringFromClass(v30);
  v32 = [@"RoutePlanning" stringByAppendingString:v31];
  [containerHeaderView4 setAccessibilityIdentifier:v32];

  headerView = [(ContaineeViewController *)self headerView];
  containerHeaderView6 = [(RoutePlanningOverviewViewController *)self containerHeaderView];
  [headerView addSubview:containerHeaderView6];

  v35 = objc_alloc_init(TransportTypePicker);
  [(RoutePlanningOverviewViewController *)self setTransportTypePicker:v35];

  transportTypePicker = [(RoutePlanningOverviewViewController *)self transportTypePicker];
  [transportTypePicker setTranslatesAutoresizingMaskIntoConstraints:0];

  transportTypePicker2 = [(RoutePlanningOverviewViewController *)self transportTypePicker];
  [transportTypePicker2 setDelegate:self];

  transportTypePicker3 = [(RoutePlanningOverviewViewController *)self transportTypePicker];
  LODWORD(v39) = 1148846080;
  [transportTypePicker3 setContentCompressionResistancePriority:1 forAxis:v39];

  v40 = [LoadingModeView alloc];
  v41 = +[NSBundle mainBundle];
  v42 = [v41 localizedStringForKey:@"Loading ..." value:@"localized string not found" table:0];
  v43 = [(LoadingModeView *)v40 initWithTitle:v42];
  [(RoutePlanningOverviewViewController *)self setLoadingModeView:v43];

  loadingModeView = [(RoutePlanningOverviewViewController *)self loadingModeView];
  [loadingModeView setAutoresizingMask:18];

  v45 = [RoutePlanningOutlineRootController alloc];
  collectionView11 = [(RoutePlanningOverviewViewController *)self collectionView];
  v47 = [(RoutePlanningOutlineRootController *)v45 initWithCollectionView:collectionView11];
  [(RoutePlanningOverviewViewController *)self setRootController:v47];

  dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  rootController = [(RoutePlanningOverviewViewController *)self rootController];
  [rootController setDataCoordinator:dataCoordinator];

  rootController2 = [(RoutePlanningOverviewViewController *)self rootController];
  [rootController2 setRouteCellDelegate:self];

  rootController3 = [(RoutePlanningOverviewViewController *)self rootController];
  [rootController3 setRouteCreationDelegate:self];

  rootController4 = [(RoutePlanningOverviewViewController *)self rootController];
  [rootController4 setCustomRouteDelegate:self];

  rootController5 = [(RoutePlanningOverviewViewController *)self rootController];
  [rootController5 setRouteSelectionDelegate:self];

  routePlanningDelegate = [(RoutePlanningOverviewViewController *)self routePlanningDelegate];
  rootController6 = [(RoutePlanningOverviewViewController *)self rootController];
  [rootController6 setTransitPayActionDelegate:routePlanningDelegate];

  containerHeaderView7 = [(RoutePlanningOverviewViewController *)self containerHeaderView];
  [containerHeaderView7 setHairLineAlpha:0.0];
}

- (int64_t)_currentSceneActivationState
{
  view = [(RoutePlanningOverviewViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];

  if (windowScene)
  {
    activationState = [windowScene activationState];
  }

  else
  {
    activationState = -1;
  }

  return activationState;
}

- (void)updateTheme
{
  v3.receiver = self;
  v3.super_class = RoutePlanningOverviewViewController;
  [(MapsThemeViewController *)&v3 updateTheme];
  [(RoutePlanningOverviewViewController *)self setRouteCellsHeight:-1.0];
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  coordinatorCopy = coordinator;
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  containerStyle = [cardPresentationController containerStyle];
  if (containerStyle > 7 || ((1 << containerStyle) & 0xA3) == 0)
  {
    goto LABEL_5;
  }

  cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
  containeeLayout = [cardPresentationController2 containeeLayout];

  if (containeeLayout != 3)
  {
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController wantsLayout:3];
LABEL_5:
  }

  v12.receiver = self;
  v12.super_class = RoutePlanningOverviewViewController;
  [(RoutePlanningOverviewViewController *)&v12 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinatorCopy];
}

- (void)didMoveToParentViewController:(id)controller
{
  _currentSceneActivationState = [(RoutePlanningOverviewViewController *)self _currentSceneActivationState];
  v6 = _currentSceneActivationState != 2 && _currentSceneActivationState != -1;
  referenceDateUpdater = [(RoutePlanningOverviewViewController *)self referenceDateUpdater];
  [referenceDateUpdater setActive:v6];
}

- (CGRect)_loadingAndErrorViewFrame
{
  contentView = [(ContaineeViewController *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  collectionView = [(RoutePlanningOverviewViewController *)self collectionView];
  [collectionView frame];
  v12 = v11;

  p_errorModeView = &self->_errorModeView;
  superview = [(ErrorModeView *)self->_errorModeView superview];

  if (superview || (p_errorModeView = &self->_loadingModeView, [(LoadingModeView *)self->_loadingModeView superview], v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
  {
    [*p_errorModeView fittingHeight];
    v17 = v16;
  }

  else
  {
    v17 = 0.0;
  }

  v27.origin.x = v5;
  v27.origin.y = v12;
  v27.size.width = v7;
  v27.size.height = v9;
  Height = CGRectGetHeight(v27);
  v28.origin.x = v5;
  v28.origin.y = v12;
  v28.size.width = v7;
  v28.size.height = v9;
  MinY = CGRectGetMinY(v28);
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController bottomSafeOffset];
  v22 = Height - (MinY + v21);

  v23 = fmax(v17, v22);
  v24 = v5;
  v25 = v12;
  v26 = v7;
  result.size.height = v23;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (BOOL)_isWaypointListScrollable
{
  if (sub_10000FA08(self) == 5 || ([(RoutePlanningOverviewViewController *)self fieldsView], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    isKindOfClass = 0;
  }

  else
  {
    v4 = v3;
    do
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        break;
      }

      superview = [v4 superview];

      v4 = superview;
    }

    while (superview);
  }

  return isKindOfClass & 1;
}

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = RoutePlanningOverviewViewController;
  [(ContaineeViewController *)&v13 viewDidLayoutSubviews];
  superview = [(ErrorModeView *)self->_errorModeView superview];
  if (superview)
  {
  }

  else
  {
    superview2 = [(LoadingModeView *)self->_loadingModeView superview];

    if (!superview2)
    {
      return;
    }
  }

  [(RoutePlanningOverviewViewController *)self _loadingAndErrorViewFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(ErrorModeView *)self->_errorModeView setFrame:?];
  [(LoadingModeView *)self->_loadingModeView setFrame:v6, v8, v10, v12];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = RoutePlanningOverviewViewController;
  [(RoutePlanningOverviewViewController *)&v4 viewDidDisappear:disappear];
  [(RoutePlanningOverviewViewController *)self _updateDataSourceRouteCollection:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = RoutePlanningOverviewViewController;
  [(RoutePlanningOverviewViewController *)&v8 viewDidAppear:appear];
  _currentSceneActivationState = [(RoutePlanningOverviewViewController *)self _currentSceneActivationState];
  v6 = _currentSceneActivationState != 2 && _currentSceneActivationState != -1;
  referenceDateUpdater = [(RoutePlanningOverviewViewController *)self referenceDateUpdater];
  [referenceDateUpdater setActive:v6];
}

- (void)viewWillAppear:(BOOL)appear
{
  v12.receiver = self;
  v12.super_class = RoutePlanningOverviewViewController;
  [(ContaineeViewController *)&v12 viewWillAppear:appear];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"[Route Planning] Directions Title" value:@"localized string not found" table:0];
  containerHeaderView = [(RoutePlanningOverviewViewController *)self containerHeaderView];
  [containerHeaderView setTitle:v5];

  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  containerStyle = [cardPresentationController containerStyle];
  LODWORD(v5) = (containerStyle > 7) | (0x5Cu >> containerStyle);

  rootController = [(RoutePlanningOverviewViewController *)self rootController];
  [rootController setAllowPersistentHighlight:v5 & 1];

  dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  routeCollection = [dataCoordinator routeCollection];
  [(RoutePlanningOverviewViewController *)self _updateDataSourceRouteCollection:routeCollection];

  [(RoutePlanningOverviewViewController *)self _loadGarage];
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = RoutePlanningOverviewViewController;
  [(ContaineeViewController *)&v13 viewDidLoad];
  view = [(RoutePlanningOverviewViewController *)self view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v5 stringByReplacingOccurrencesOfString:@"ViewController" withString:&stru_1016631F0];
  [(RoutePlanningOverviewViewController *)self setAccessibilityIdentifier:v6];

  [(RoutePlanningOverviewViewController *)self _setupSubviews];
  _initialConstraints = [(RoutePlanningOverviewViewController *)self _initialConstraints];
  [NSLayoutConstraint activateConstraints:_initialConstraints];
  [DynamicTypeWizard makeObject:self performSelector:"_contentSizeCategoryDidChange" whenSizeCategoryChangesWithOrder:2];
  dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  [dataCoordinator addObserver:self];

  dataCoordinator2 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  [dataCoordinator2 setupDataForObserver:self];

  v10 = +[NSNotificationCenter defaultCenter];
  [v10 addObserver:self selector:"_resetCountOfRideOptionsBooked" name:UIApplicationDidEnterBackgroundNotification object:0];

  v11 = +[NSNotificationCenter defaultCenter];
  [v11 addObserver:self selector:"_resetCountOfRideOptionsBooked" name:@"RidesharingDidRequestRideNotificationKey" object:0];

  v12 = +[VGVirtualGarageService sharedService];
  [v12 registerObserver:self];
}

- (double)transportTypePickerHeight
{
  v2 = _UISolariumEnabled();
  result = 38.0;
  if (v2)
  {
    return 48.0;
  }

  return result;
}

- (void)_prepareRideBookingForFirstUse
{
  if (sub_100016C50() && !self->_rideBookingSource)
  {
    v3 = [RideBookingOutlineController alloc];
    collectionView = [(RoutePlanningOverviewViewController *)self collectionView];
    v5 = [(RideBookingOutlineController *)v3 initWithCollectionView:collectionView];
    rideBookingSource = self->_rideBookingSource;
    self->_rideBookingSource = v5;

    [(RideBookingOutlineController *)self->_rideBookingSource setDelegate:self];
    rootController = [(RoutePlanningOverviewViewController *)self rootController];
    -[RoutePlanningOutlineController setHideContent:](self->_rideBookingSource, "setHideContent:", [rootController hideContent]);
  }
}

- (ErrorModeView)errorModeView
{
  errorModeView = self->_errorModeView;
  if (!errorModeView)
  {
    v4 = objc_alloc_init(ErrorModeView);
    v5 = self->_errorModeView;
    self->_errorModeView = v4;

    [(ErrorModeView *)self->_errorModeView setAutoresizingMask:18];
    errorModeView = self->_errorModeView;
  }

  return errorModeView;
}

- (void)dealloc
{
  v3 = +[VGVirtualGarageService sharedService];
  [v3 unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = RoutePlanningOverviewViewController;
  [(RoutePlanningOverviewViewController *)&v4 dealloc];
}

- (RoutePlanningPresentation)routePlanningDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_routePlanningDelegate);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    delegate = WeakRetained;
  }

  else
  {
    delegate = [(ControlContaineeViewController *)self delegate];
  }

  v6 = delegate;

  return v6;
}

- (RoutePlanningOverviewViewController)initWithDataCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v9.receiver = self;
  v9.super_class = RoutePlanningOverviewViewController;
  v5 = [(RoutePlanningOverviewViewController *)&v9 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataCoordinator, coordinatorCopy);
    v7 = +[VGVirtualGarageService sharedService];
    [v7 registerObserver:v6];
  }

  return v6;
}

+ (RoutePlanningOverviewViewController)routePlanningOverviewViewControllerWithDataCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  if ((_UISolariumEnabled() & 1) != 0 || (+[UIDevice currentDevice](UIDevice, "currentDevice"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 userInterfaceIdiom], v4, v5 != 5))
  {
    v6 = off_1015F6268;
  }

  else
  {
    v6 = off_1015F62C0;
  }

  v7 = [objc_alloc(*v6) initWithDataCoordinator:coordinatorCopy];

  return v7;
}

@end