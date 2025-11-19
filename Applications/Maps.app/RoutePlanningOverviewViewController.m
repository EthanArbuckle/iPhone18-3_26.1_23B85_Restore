@interface RoutePlanningOverviewViewController
+ (RoutePlanningOverviewViewController)routePlanningOverviewViewControllerWithDataCoordinator:(id)a3;
- (BOOL)_areWaypointsInCountryCode:(id)a3;
- (BOOL)_hasModalViewControllerInTransition;
- (BOOL)_isWaypointListScrollable;
- (BOOL)_shouldPermitAutomaticSharingContacts;
- (BOOL)hasValidEVRoute;
- (BOOL)isCollectionViewVisible;
- (BOOL)isDisplayingSingleTrip;
- (BOOL)isErrorViewVisible;
- (BOOL)isFittingHeightToRoutes;
- (BOOL)isLoadingViewVisible;
- (BOOL)shouldRefreshRoutePlanningWithCurrentGarage:(id)a3 previousGarage:(id)a4;
- (CGRect)_loadingAndErrorViewFrame;
- (CGRect)_rectOfRowToKeepVisible;
- (ErrorModeView)errorModeView;
- (RoutePlanningDataCoordinator)dataCoordinator;
- (RoutePlanningOverviewViewController)initWithDataCoordinator:(id)a3;
- (RoutePlanningPresentation)routePlanningDelegate;
- (UIView)routeOptionsPopoverSourceView;
- (double)_calculatedRouteCellsHeight;
- (double)_cardHeightMinusTableViewHeight;
- (double)_fittingHeightForMediumLayout;
- (double)_maximumMediumCardHeight;
- (double)_minimumMediumCardHeight;
- (double)heightForLayout:(unint64_t)a3;
- (double)transportTypePickerHeight;
- (id)_indexPathOfCellToShowAtMediumLayout;
- (id)_initialConstraints;
- (id)chargingInfoForWaypointAtIndex:(unint64_t)a3;
- (id)evStepInfoForWaypointAtIndex:(unint64_t)a3;
- (int)currentUITargetForAnalytics;
- (int64_t)_currentSceneActivationState;
- (void)_animateUpdatingHeightForSingleTrip;
- (void)_cancelAutoLaunch;
- (void)_collectRevealAnalyticForTransportType:(int64_t)a3;
- (void)_contentSizeCategoryDidChange;
- (void)_doPromptsAndStartNavForRouteCollection:(id)a3;
- (void)_finishLaunchingIntoNavIfPossible:(id)a3;
- (void)_forceChangeOrigin;
- (void)_incrementCountOfRideOptionsBooked;
- (void)_loadGarage;
- (void)_markFeatureDiscoveryShown;
- (void)_prepareRideBookingForFirstUse;
- (void)_presentEbikeOptions;
- (void)_presentRouteOptions;
- (void)_promptForSimulationAndStartNavigationForRouteCollection:(id)a3;
- (void)_refreshContactsDisplayForAutomaticTripSharing;
- (void)_refreshRoutePlanning;
- (void)_resetCountOfRideOptionsBooked;
- (void)_sceneDidBackground:(id)a3;
- (void)_sceneWillForeground:(id)a3;
- (void)_scrollToCellToShowAtMediumLayoutAnimated:(BOOL)a3;
- (void)_setCollectionViewVisible:(BOOL)a3;
- (void)_setErrorViewVisible:(BOOL)a3 routePlanningError:(id)a4;
- (void)_setLoadingViewVisible:(BOOL)a3;
- (void)_setupAdvisoryFooterView;
- (void)_setupSubviews;
- (void)_snapToRectOfRowToKeepVisible;
- (void)_startNavigationForRouteCollection:(id)a3 navigationDetailsOptions:(NavigationDetailsOptions *)a4;
- (void)_startReferenceDateUpdates;
- (void)_stopReferenceDateUpdates;
- (void)_updateDataSourceRouteCollection:(id)a3;
- (void)_updateDigitalIssuanceStateWithUpdateFlag:(int64_t)a3;
- (void)_updateErrorViewButtonVisibilityWithError:(id)a3;
- (void)_updateForEquivalentRequestState:(int64_t)a3;
- (void)_updateLoadingViewBottomInset;
- (void)_updateRidesharingAnalytics;
- (void)_updateToTransportType:(int64_t)a3;
- (void)applyAlphaToContent:(double)a3;
- (void)dataSource:(id)a3 didSelectRowForRoute:(id)a4;
- (void)dataSource:(id)a3 requiresDeletionOfIndexSet:(id)a4 reloadOfIndexSet:(id)a5 insertionOfIndexSet:(id)a6;
- (void)dataSource:(id)a3 requiresReloadOfSection:(unint64_t)a4;
- (void)dataSourceRequiresReload:(id)a3;
- (void)dealloc;
- (void)didBecomeCurrent;
- (void)didChangeContainerStyle:(unint64_t)a3;
- (void)didMoveToParentViewController:(id)a3;
- (void)didSelectAppStoreSuggestionWithIdentifier:(id)a3;
- (void)didSelectFeedbackWithAppIdentifier:(id)a3;
- (void)didSelectRideOption:(id)a3;
- (void)didTapAutomaticSharingButtonForRouteOverviewCell:(id)a3;
- (void)didTapDetailsButtonForRouteOverviewCell:(id)a3;
- (void)didTapGoOnRoute:(id)a3;
- (void)didTapReportAProblemButtonOnRoutePlanningFooterView:(id)a3;
- (void)didTapRideBookingActionForRouteOverviewCell:(id)a3;
- (void)didTapRouteCreationButtonForCell:(id)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)floatingControlsOverlayDidTapTTRButton:(id)a3;
- (void)handleDismissAction:(id)a3;
- (void)headerViewButtonTapped:(id)a3 buttonType:(unint64_t)a4;
- (void)pptTestEndNavigation;
- (void)pptTestStartNavigation;
- (void)pptTestTransitionBetweenFullAndLightGuidance;
- (void)routePlanningDataCoordinator:(id)a3 didUpdateRequestState:(int64_t)a4;
- (void)routePlanningDataCoordinator:(id)a3 didUpdateResolvedWaypointSet:(id)a4;
- (void)routePlanningDataCoordinator:(id)a3 didUpdateRideBookingRideOptionState:(id)a4;
- (void)routePlanningDataCoordinator:(id)a3 didUpdateRouteCollection:(id)a4;
- (void)routePlanningDataCoordinator:(id)a3 didUpdateRoutes:(id)a4;
- (void)routePlanningDataCoordinator:(id)a3 didUpdateTransportType:(int64_t)a4;
- (void)shouldDismissForHorizontalSwipe_nonUIKitCardsOnly;
- (void)transitItemReferenceDateUpdater:(id)a3 didUpdateToReferenceDate:(id)a4;
- (void)updateTheme;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)virtualGarageDidUpdate:(id)a3;
- (void)willBecomeCurrent:(BOOL)a3;
- (void)willChangeContainerStyle:(unint64_t)a3;
- (void)willChangeLayout:(unint64_t)a3;
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

- (void)floatingControlsOverlayDidTapTTRButton:(id)a3
{
  v4 = sub_100798A3C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Handling TTR button tap during route planning", buf, 2u);
  }

  v5 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v6 = [v5 routeCollection];
  v7 = [v6 routes];
  v8 = sub_100030774(v7, &stru_10162B870);

  if (MapsFeature_IsEnabled_LocationIntelligenceMaps())
  {
    v9 = objc_opt_new();
    v10 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    v11 = [v10 routeCollection];
    v12 = [v11 routes];
    v13 = sub_100021DB0(v12, &stru_10162B890);
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

- (id)evStepInfoForWaypointAtIndex:(unint64_t)a3
{
  if ([(RoutePlanningOverviewViewController *)self hasValidEVRoute])
  {
    v5 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    v6 = [v5 currentRoute];

    if (!a3)
    {
      v9 = [v6 firstEVStep];
      v26 = [v9 evInfo];
LABEL_40:

      goto LABEL_41;
    }

    v7 = [v6 waypoints];
    if ([v7 count] <= a3)
    {
    }

    else
    {
      v8 = [v6 waypoints];
      v9 = [v8 objectAtIndexedSubscript:a3];

      if (v9)
      {
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v31 = v6;
        v10 = [v6 legs];
        v11 = [v10 countByEnumeratingWithState:&v32 objects:v36 count:16];
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
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v32 + 1) + 8 * i);
              v16 = [v15 destination];
              v17 = [v16 uniqueID];
              v18 = [v9 uniqueID];
              v19 = [v17 isEqual:v18];

              if (v19)
              {
                v6 = v31;
                v29 = -[NSObject lastEVStepInLegWithIndex:](v31, "lastEVStepInLegWithIndex:", [v15 legIndex]);
                v26 = [v29 evInfo];

                goto LABEL_39;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v32 objects:v36 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v20 = sub_100798A3C();
        v6 = v31;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = [v9 uniqueID];
          *buf = 138412546;
          v38 = v21;
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
          v10 = sub_10006D178();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v23 = +[NSThread callStackSymbols];
            *buf = 138412290;
            v38 = v23;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }

          goto LABEL_35;
        }

LABEL_37:
        v26 = 0;
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
      v10 = sub_10006D178();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v28 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v38 = v28;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      v9 = 0;
LABEL_35:
      v26 = 0;
LABEL_39:

      goto LABEL_40;
    }

    v9 = 0;
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
    v26 = 0;
    goto LABEL_42;
  }

  v6 = sub_10006D178();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v25 = +[NSThread callStackSymbols];
    *buf = 138412290;
    v38 = v25;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
  }

  v26 = 0;
LABEL_41:

LABEL_42:

  return v26;
}

- (id)chargingInfoForWaypointAtIndex:(unint64_t)a3
{
  if ([(RoutePlanningOverviewViewController *)self hasValidEVRoute])
  {
    v5 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    v6 = [v5 currentRoute];

    v7 = [v6 waypoints];
    if ([v7 count] <= a3)
    {
      v9 = 0;
    }

    else
    {
      v8 = [v6 waypoints];
      v9 = [v8 objectAtIndexedSubscript:a3];
    }

    v13 = [v9 chargingInfo];
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

    v13 = 0;
  }

  return v13;
}

- (BOOL)hasValidEVRoute
{
  v2 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v3 = [v2 currentRoute];

  if ([v3 isEVRoute])
  {
    v4 = [v3 origin];
    v5 = [v4 isCurrentLocation];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)shouldRefreshRoutePlanningWithCurrentGarage:(id)a3 previousGarage:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ((MapsFeature_IsEnabled_EVRouting() & 1) != 0 || MapsFeature_IsEnabled_Alberta())
  {
    v7 = [v5 selectedVehicle];
    v8 = [v6 selectedVehicle];
    if (!(v7 | v8))
    {
      v29 = 0;
LABEL_29:

      goto LABEL_30;
    }

    v9 = [v7 identifier];
    v10 = [v8 identifier];
    v11 = v9;
    v12 = v10;
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

    v15 = [v7 licensePlate];
    v16 = [v8 licensePlate];
    v17 = v15;
    v18 = v16;
    if (!(v17 | v18) || (v19 = [v17 isEqual:v18], v18, v17, v19))
    {
      v20 = [v7 lprPowerType];
      v21 = [v8 lprPowerType];
      v22 = v20;
      v23 = v21;
      if (!(v22 | v23) || (v24 = [v22 isEqual:v23], v23, v22, v24))
      {
        v25 = [v7 lprVehicleType];
        v26 = [v8 lprVehicleType];
        v27 = v25;
        v28 = v26;
        if (!(v27 | v28))
        {

          goto LABEL_17;
        }

        v32 = v28;
        v47 = [v27 isEqual:v28];

        if (v47)
        {
LABEL_17:
          v33 = [v7 supportedConnectors];
          if (v33 == [v8 supportedConnectors])
          {
            v34 = [v7 usesPreferredNetworksForRouting];
            if (v34 == [v8 usesPreferredNetworksForRouting])
            {
              v36 = [v7 preferredChargingNetworks];
              v37 = [v8 preferredChargingNetworks];
              v38 = v36;
              v39 = v37;
              if (v38 | v39 && (v40 = v39, v41 = [v38 isEqual:v39], v40, v38, v40, v38, (v41 & 1) == 0) && objc_msgSend(v7, "usesPreferredNetworksForRouting"))
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
                v42 = [v5 shouldAssumeFullCharge];
                if (v42 == [v6 shouldAssumeFullCharge])
                {
                  v43 = [v7 currentVehicleState];
                  v44 = [v8 currentVehicleState];
                  v45 = [v43 isSignificantlyDifferentFromVehicleState:v44];

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
  v3 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v4 = [v3 platformController];

  v5 = [v4 currentSession];
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

- (void)virtualGarageDidUpdate:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1008309A8;
  block[3] = &unk_101661340;
  objc_copyWeak(&v8, &location);
  v7 = v4;
  v5 = v4;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (int)currentUITargetForAnalytics
{
  v2 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v3 = [v2 transportType];
  if ((v3 - 1) >= 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3 + 300;
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
  v5 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v3 = [v5 routeCollection];
  v4 = [v3 currentRoute];
  [(RoutePlanningOverviewViewController *)self didTapGoOnRoute:v4];
}

- (void)_updateDigitalIssuanceStateWithUpdateFlag:(int64_t)a3
{
  [(RoutePlanningOverviewViewController *)self setDigitalIssuanceUpdateFlags:[(RoutePlanningOverviewViewController *)self digitalIssuanceUpdateFlags]| a3];
  if (([(RoutePlanningOverviewViewController *)self digitalIssuanceUpdateFlags]& 4) != 0)
  {
    [(RoutePlanningOverviewViewController *)self setHasIncrementedDigitalIssuanceCountForRoute:0];

    [(RoutePlanningOverviewViewController *)self setDigitalIssuanceUpdateFlags:0];
  }
}

- (double)_maximumMediumCardHeight
{
  v3 = [(ContaineeViewController *)self cardPresentationController];
  [v3 availableHeight];
  v5 = v4 * 0.649999976;
  [(RoutePlanningOverviewViewController *)self _heightForFullLayout];
  if (v5 >= v6 + -34.0)
  {
    [(RoutePlanningOverviewViewController *)self _heightForFullLayout];
    v9 = v10 + -34.0;
  }

  else
  {
    v7 = [(ContaineeViewController *)self cardPresentationController];
    [v7 availableHeight];
    v9 = v8 * 0.649999976;
  }

  return v9;
}

- (double)_minimumMediumCardHeight
{
  v3 = [(RoutePlanningOverviewViewController *)self view];
  [v3 bounds];
  if (CGRectGetWidth(v8) <= 325.0)
  {
    v6 = 380.0;
  }

  else
  {
    v4 = [(ContaineeViewController *)self cardPresentationController];
    [v4 availableHeight];
    v6 = v5 * 0.5;
  }

  return v6;
}

- (double)_fittingHeightForMediumLayout
{
  [(RoutePlanningOverviewViewController *)self _cardHeightMinusTableViewHeight];
  v4 = v3;
  v5 = [(RoutePlanningOverviewViewController *)self viewIfLoaded];
  v6 = [v5 window];
  v7 = [v6 screen];
  if (v7)
  {
    v8 = [v5 window];
    v9 = [v8 screen];
    [v9 nativeScale];
    v11 = v10;
  }

  else
  {
    v8 = +[UIScreen mainScreen];
    [v8 nativeScale];
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
  v16 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v17 = [v16 requestState];

  if (v17 == 3)
  {
    v18 = 192;
LABEL_11:
    [*(&self->super.super.super.super.super.super.isa + v18) fittingHeight];
    v22 = v21;
    goto LABEL_12;
  }

  v19 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v20 = [v19 requestState];

  if (v20 == 1)
  {
    v18 = 184;
    goto LABEL_11;
  }

  v42 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  if ([v42 requestState] != 2)
  {

    goto LABEL_32;
  }

  v43 = sub_10000FA08(self);

  if (v43 != 5)
  {
LABEL_32:
    [(RoutePlanningOverviewViewController *)self _rectOfRowToKeepVisible];
    Height = CGRectGetHeight(v59);
    v49 = [(ContaineeViewController *)self cardPresentationController];
    [v49 bottomSafeOffset];
    v51 = v50;

    v52 = [(RoutePlanningOverviewViewController *)self rootController];
    [v52 estimatedFeatureDiscoveryHeight];
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
    v54 = [(RoutePlanningOverviewViewController *)self collectionView];
    v55 = [v54 collectionViewLayout];
    [v55 collectionViewContentSize];
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
  v23 = [(RoutePlanningOverviewViewController *)self containerHeaderView];
  v24 = [v23 accessoryView];
  if (!v24)
  {
LABEL_15:

    goto LABEL_16;
  }

  v25 = v24;
  v26 = sub_10000FA08(self);

  if (v26 != 5)
  {
    v23 = [(RoutePlanningOverviewViewController *)self containerHeaderView];
    v27 = [v23 accessoryView];
    [v27 bounds];
    v22 = v22 + CGRectGetHeight(v58) + 8.0;

    goto LABEL_15;
  }

LABEL_16:
  v28 = [(RoutePlanningOverviewViewController *)self transportTypePicker];
  if (v28)
  {
    v29 = v28;
    v30 = [(RoutePlanningOverviewViewController *)self transportTypePicker];
    v31 = [v30 superview];
    v32 = [(ContaineeViewController *)self contentView];

    if (v31 == v32)
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

  v38 = [(RoutePlanningOverviewViewController *)self viewIfLoaded];
  UIRoundToViewScale();
  v40 = v39;

  return v40;
}

- (double)_calculatedRouteCellsHeight
{
  v3 = -1.0;
  if ([(RoutePlanningOverviewViewController *)self isCollectionViewVisible])
  {
    v4 = [(RoutePlanningOverviewViewController *)self collectionView];
    v5 = [v4 numberOfSections];

    if (v5)
    {
      v6 = [(RoutePlanningOverviewViewController *)self collectionView];
      [v6 layoutIfNeeded];

      v7 = [(RoutePlanningOverviewViewController *)self collectionView];
      v8 = [v7 numberOfSections];

      if (v8 < 1)
      {
        return 0.0;
      }

      else
      {
        v9 = 0;
        v3 = 0.0;
        while (1)
        {
          v10 = [(RoutePlanningOverviewViewController *)self collectionView];
          v11 = [v10 numberOfItemsInSection:v9];

          if (v11 >= 1)
          {
            break;
          }

LABEL_9:
          ++v9;
          v21 = [(RoutePlanningOverviewViewController *)self collectionView];
          v22 = [v21 numberOfSections];

          if (v9 >= v22)
          {
            return v3;
          }
        }

        v12 = 0;
        while (1)
        {
          v13 = [NSIndexPath indexPathForRow:v12 inSection:v9];
          v14 = [(RoutePlanningOverviewViewController *)self collectionView];
          v15 = [v14 cellForItemAtIndexPath:v13];

          if (!v15)
          {
            break;
          }

          v16 = [v15 contentView];
          [v15 frame];
          [v16 _maps_compressedSizeForWidth:0 withBlock:CGRectGetWidth(v24)];
          v18 = v17;

          v3 = v18 + v3;
          ++v12;
          v19 = [(RoutePlanningOverviewViewController *)self collectionView];
          v20 = [v19 numberOfItemsInSection:v9];

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
  v3 = [(RoutePlanningOverviewViewController *)self collectionView];
  [v3 reloadData];

  [(RoutePlanningOverviewViewController *)self _scrollToCellToShowAtMediumLayoutAnimated:[(RoutePlanningOverviewViewController *)self isDisplayingSingleTrip]^ 1];
  if ([(RoutePlanningOverviewViewController *)self isDisplayingSingleTrip]&& ![(RoutePlanningOverviewViewController *)self isAnimatingHeightForMediumLayout])
  {
    v4 = [(ContaineeViewController *)self cardPresentationController];
    [v4 updateHeightForCurrentLayout];
  }
}

- (void)_animateUpdatingHeightForSingleTrip
{
  if ([(RoutePlanningOverviewViewController *)self isFittingHeightToRoutes])
  {
    v3 = [(RoutePlanningOverviewViewController *)self viewIfLoaded];
    v4 = [v3 superview];

    if (v4)
    {
      [(RoutePlanningOverviewViewController *)self _fittingHeightForMediumLayout];
      v6 = v5;
      v7 = [(RoutePlanningOverviewViewController *)self view];
      [v7 frame];
      Height = CGRectGetHeight(v20);

      if (vabdd_f64(v6, Height) >= 2.22044605e-16)
      {
        if ([(RoutePlanningOverviewViewController *)self isAnimatingHeightForMediumLayout])
        {
          v9 = [(RoutePlanningOverviewViewController *)self view];
          v10 = [v9 window];
          [v10 _removeAllAnimations:1];
        }

        [(RoutePlanningOverviewViewController *)self setIsAnimatingHeightForMediumLayout:1];
        v11 = [(ContaineeViewController *)self cardPresentationController];
        [v11 updateHeightForCurrentLayout];

        v12 = [(RoutePlanningOverviewViewController *)self collectionView];
        [v12 layoutIfNeeded];

        v13 = +[UIDevice currentDevice];
        v14 = [v13 userInterfaceIdiom];

        if (v14 == 5)
        {
          v15 = [(ContaineeViewController *)self headerView];
          [v15 layoutBelowIfNeeded];

          v16 = [(RoutePlanningOverviewViewController *)self collectionView];
          v17 = [(RoutePlanningOverviewViewController *)self loadingModeView];
          [v16 _maps_alignTopToView:v17];
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

  v5 = [(RoutePlanningOverviewViewController *)self collectionView];
  [v5 contentInset];
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(RoutePlanningOverviewViewController *)self collectionView];
  [v12 setContentInset:{v4, v7, v9, v11}];

  v13 = [(RoutePlanningOverviewViewController *)self collectionView];
  [v13 adjustedContentInset];
  v15 = v14;

  v16 = [(RoutePlanningOverviewViewController *)self collectionView];
  [v16 setContentOffset:{0.0, v4 + MinY - v15}];

  v17 = sub_1008319B0();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = [(RoutePlanningOverviewViewController *)self collectionView];
    [v18 contentOffset];
    v20 = 134349568;
    v21 = self;
    v22 = 2048;
    v23 = v4;
    v24 = 2048;
    v25 = v19;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "[%{public}p] Snapping to contentInset.top: %#.1lf, contentOffset.y: %#.1lf", &v20, 0x20u);
  }
}

- (void)_scrollToCellToShowAtMediumLayoutAnimated:(BOOL)a3
{
  v3 = a3;
  v42 = [(RoutePlanningOverviewViewController *)self _indexPathOfCellToShowAtMediumLayout];
  if (!v42)
  {
    v5 = [(RoutePlanningOverviewViewController *)self collectionView];
    [v5 setContentOffset:0 animated:{CGPointZero.x, CGPointZero.y}];

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
  v14 = [(RoutePlanningOverviewViewController *)self collectionView];
  [v14 convertRect:0 toView:{v7, v9, v11, v13}];
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
  v24 = [(RoutePlanningOverviewViewController *)self collectionView];
  [v24 bounds];
  v25 = MinY < CGRectGetMinY(v45);

  v46.origin.x = v16;
  v46.origin.y = v18;
  v46.size.width = v20;
  v46.size.height = v22;
  MaxY = CGRectGetMaxY(v46);
  v27 = [(RoutePlanningOverviewViewController *)self collectionView];
  v28 = [v27 window];
  [v28 bounds];
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

  v31 = [(ContaineeViewController *)self cardPresentationController];
  [v31 bottomSafeOffset];
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
    v36 = [(RoutePlanningOverviewViewController *)self collectionView];
    v37 = [v36 collectionViewLayout];
    [v37 collectionViewContentSize];
    v39 = v35 - v38;

    v40 = [(RoutePlanningOverviewViewController *)self collectionView];
    [v40 scrollRectToVisible:v3 animated:{v7, MidY, v11, v34 - fmax(v39, 0.0)}];
  }

LABEL_10:
}

- (id)_indexPathOfCellToShowAtMediumLayout
{
  v3 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v4 = [v3 transportType];

  if (v4 == 4)
  {
    v5 = [NSIndexPath indexPathForRow:0 inSection:0];
  }

  else
  {
    v6 = [(RoutePlanningOverviewViewController *)self rootController];
    v7 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    v8 = [v7 routeCollection];
    v9 = [v8 currentRoute];
    v5 = [v6 mostImportantIndexPathWithSelectedRoute:v9];
  }

  return v5;
}

- (BOOL)isFittingHeightToRoutes
{
  v2 = [(ContaineeViewController *)self cardPresentationController];
  v3 = [v2 containeeLayout] == 2;

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

- (void)_updateErrorViewButtonVisibilityWithError:(id)a3
{
  v4 = a3;
  if (![v4 errorViewShouldShowRoutingApps] || !GEOConfigGetBOOL())
  {
    v9 = [v4 errorViewFeatureAvailabilityPunchoutURL];

    if (v9)
    {
      v10 = +[NSBundle mainBundle];
      v6 = [v10 localizedStringForKey:@"Learn More [Route Planning Cycling Coverage]" value:@"localized string not found" table:0];

      v11 = [v4 errorViewFeatureAvailabilityPunchoutURL];
      v12 = [(RoutePlanningOverviewViewController *)self errorModeView];
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_10083240C;
      v38[3] = &unk_10162B7F0;
      v39 = v11;
      v13 = v11;
      [v12 setButtonTitle:v6 handler:v38];

      goto LABEL_7;
    }

    if ([v4 errorViewShouldShowRegularDirectionsFallback])
    {
      v14 = +[NSBundle mainBundle];
      v15 = [v14 localizedStringForKey:@"View Directions [Route Planning EV fallback]" value:@"localized string not found" table:0];

      v16 = [(RoutePlanningOverviewViewController *)self errorModeView];
      v17 = v16;
      v18 = &stru_10162B810;
    }

    else
    {
      if ([v4 errorCode] != 21)
      {
        v20 = [v4 incidentMessage];
        v21 = [v20 transitIncidents];
        v22 = [v21 count];

        if (!v22)
        {
          if (!GEOConfigGetBOOL() || [v4 errorCode] != 2 && objc_msgSend(v4, "errorCode") != 22)
          {
            v32 = [(RoutePlanningOverviewViewController *)self errorModeView];
            [v32 setButtonTitle:0 handler:0];

            goto LABEL_14;
          }

          v31 = +[NSBundle mainBundle];
          v6 = [v31 localizedStringForKey:@"Turn Off" value:@"localized string not found" table:@"Offline"];

          objc_initWeak(&location, self);
          v7 = [(RoutePlanningOverviewViewController *)self errorModeView];
          v8 = v33;
          v33[0] = _NSConcreteStackBlock;
          v33[1] = 3221225472;
          v33[2] = sub_1008324DC;
          v33[3] = &unk_10165D828;
          objc_copyWeak(&v34, &location);
          [v7 setButtonTitle:v6 handler:v33];
          goto LABEL_4;
        }

        v23 = [v4 incidentMessage];
        v24 = [v23 transitIncidents];

        v25 = [v24 count];
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
        v30 = [(RoutePlanningOverviewViewController *)self errorModeView];
        v35[0] = _NSConcreteStackBlock;
        v35[1] = 3221225472;
        v35[2] = sub_100832470;
        v35[3] = &unk_10162F4D0;
        objc_copyWeak(&v37, &location);
        v15 = v24;
        v36 = v15;
        [v30 setButtonTitle:v29 handler:v35];

        objc_destroyWeak(&v37);
        objc_destroyWeak(&location);

LABEL_13:
        goto LABEL_14;
      }

      v19 = +[NSBundle mainBundle];
      v15 = [v19 localizedStringForKey:@"View Directions [Route Planning LPR fallback]" value:@"localized string not found" table:0];

      v16 = [(RoutePlanningOverviewViewController *)self errorModeView];
      v17 = v16;
      v18 = &stru_10162B830;
    }

    [v16 setButtonTitle:v15 handler:v18];

    goto LABEL_13;
  }

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"View Routing apps [Route Planning]" value:@"localized string not found" table:0];

  objc_initWeak(&location, self);
  v7 = [(RoutePlanningOverviewViewController *)self errorModeView];
  v8 = v40;
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_1008323B0;
  v40[3] = &unk_10165D828;
  objc_copyWeak(&v41, &location);
  [v7 setButtonTitle:v6 handler:v40];
LABEL_4:

  objc_destroyWeak(v8 + 4);
  objc_destroyWeak(&location);
LABEL_7:

LABEL_14:
}

- (void)_setErrorViewVisible:(BOOL)a3 routePlanningError:(id)a4
{
  v4 = a3;
  v23 = a4;
  if ([(RoutePlanningOverviewViewController *)self isErrorViewVisible]!= v4)
  {
    v6 = [(RoutePlanningOverviewViewController *)self errorModeView];
    v7 = [v23 errorTitle];
    v8 = [v23 errorMessage];
    [v6 setTitle:v7 andMessage:v8];

    v9 = [(RoutePlanningOverviewViewController *)self errorModeView];
    v10 = [(ContaineeViewController *)self cardPresentationController];
    [v10 bottomSafeOffset];
    [v9 setVerticalAdjustment:-v11];

    [(RoutePlanningOverviewViewController *)self _updateErrorViewButtonVisibilityWithError:v23];
    if (v4)
    {
      v12 = [(ContaineeViewController *)self contentView];
      v13 = [(RoutePlanningOverviewViewController *)self errorModeView];
      [v12 addSubview:v13];

      [(RoutePlanningOverviewViewController *)self _loadingAndErrorViewFrame];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v22 = [(RoutePlanningOverviewViewController *)self errorModeView];
      [v22 setFrame:{v15, v17, v19, v21}];
    }

    else
    {
      [(ErrorModeView *)self->_errorModeView removeFromSuperview];
    }
  }
}

- (BOOL)isErrorViewVisible
{
  v2 = self;
  v3 = [(ErrorModeView *)self->_errorModeView superview];
  v4 = [(ContaineeViewController *)v2 contentView];
  LOBYTE(v2) = v3 == v4;

  return v2;
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
    v7 = [(ContaineeViewController *)self cardPresentationController];
    [v7 bottomSafeOffset];
    [(LoadingModeView *)self->_loadingModeView setBottomInset:?];

    if ([(RoutePlanningOverviewViewController *)self isLoadingViewVisible])
    {
      [(LoadingModeView *)self->_loadingModeView fittingHeight];
      if (vabdd_f64(v8, v6) > 2.22044605e-16)
      {
        v9 = [(ContaineeViewController *)self cardPresentationController];
        [v9 updateHeightForCurrentLayout];
      }
    }
  }
}

- (void)_setLoadingViewVisible:(BOOL)a3
{
  v3 = a3;
  if ([(RoutePlanningOverviewViewController *)self isLoadingViewVisible]!= a3)
  {
    if (v3)
    {
      v5 = [(ContaineeViewController *)self contentView];
      v6 = [(RoutePlanningOverviewViewController *)self loadingModeView];
      [v5 addSubview:v6];

      [(RoutePlanningOverviewViewController *)self _loadingAndErrorViewFrame];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v15 = [(RoutePlanningOverviewViewController *)self loadingModeView];
      [v15 setFrame:{v8, v10, v12, v14}];
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
  v2 = self;
  v3 = [(LoadingModeView *)self->_loadingModeView superview];
  v4 = [(ContaineeViewController *)v2 contentView];
  LOBYTE(v2) = v3 == v4;

  return v2;
}

- (void)_setCollectionViewVisible:(BOOL)a3
{
  v3 = a3;
  if ([(RoutePlanningOverviewViewController *)self isCollectionViewVisible]!= a3)
  {
    [(RoutePlanningOverviewViewController *)self setRouteCellsHeight:-1.0];
    [(RoutePlanningOutlineController *)self->_rideBookingSource setHideContent:!v3];
    v5 = [(RoutePlanningOverviewViewController *)self rootController];
    [v5 setHideContent:!v3];

    if (v3)
    {
      v6 = 749.0;
    }

    else
    {
      v6 = 50.0;
    }

    v8 = [(RoutePlanningOverviewViewController *)self collectionViewToBottomConstraint];
    *&v7 = v6;
    [v8 setPriority:v7];
  }
}

- (BOOL)isCollectionViewVisible
{
  if (self->_collectionView)
  {
    v2 = [(RoutePlanningOverviewViewController *)self rootController];
    v3 = [v2 hideContent] ^ 1;
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
  v3 = [(RoutePlanningOverviewViewController *)self collectionView];
  v4 = [v3 dataSource];

  if ([v4 shouldShowAdvisoryFooter])
  {
    v5 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    v6 = [v5 advisoriesInfo];

    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x3032000000;
    v14[3] = sub_100832F08;
    v14[4] = sub_100832F18;
    v15 = 0;
    v7 = [v6 genericAdvisorys];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100832F20;
    v13[3] = &unk_101631208;
    v13[4] = v14;
    [v7 enumerateObjectsUsingBlock:v13];

    objc_initWeak(&location, self);
    v8 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    v9 = [v8 advisoriesInfo];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100832F98;
    v10[3] = &unk_10162B7C8;
    objc_copyWeak(&v11, &location);
    v10[4] = self;
    v10[5] = v14;
    [v4 setupAdvisoryInfoLayout:v9 tapHandler:v10];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
    _Block_object_dispose(v14, 8);
  }

  else
  {
    [v4 setupAdvisoryInfoLayout:0 tapHandler:0];
  }
}

- (void)_updateForEquivalentRequestState:(int64_t)a3
{
  v5 = sub_10000FA08(self);
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      [(RoutePlanningOverviewViewController *)self _setupAdvisoryFooterView];
      v16 = 0;
      v8 = 0;
      v11 = 0;
      v9 = 1;
      v10 = 1;
    }

    else if (a3 == 3)
    {
      v12 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
      v16 = [v12 routePlanningError];

      v8 = 0;
      v9 = 0;
      v10 = 1;
      v11 = 1;
    }

    else
    {
      v16 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
    }
  }

  else
  {
    v6 = a3 == 1;
    v7 = a3 == 0;
    v16 = 0;
    if (a3)
    {
      v8 = a3 == 1;
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
  [(RoutePlanningOverviewViewController *)self _setErrorViewVisible:v11 routePlanningError:v16];
  if ([v16 errorCode] == 16)
  {
    [(RoutePlanningOverviewViewController *)self _forceChangeOrigin];
  }

  if (v10)
  {
    if (v5 == 5 && (-[ContaineeViewController cardPresentationController](self, "cardPresentationController"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 containeeLayout], v13, v14 != 2))
    {
      v15 = [(ContaineeViewController *)self cardPresentationController];
      [v15 wantsLayout:2];
    }

    else
    {
      v15 = [(ContaineeViewController *)self cardPresentationController];
      [v15 updateHeightForCurrentLayoutAnimated:1];
    }
  }
}

- (void)_resetCountOfRideOptionsBooked
{
  self->_countOfRideOptionsBooked = 0;
  v4 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v2 = [v4 rideOptionStateObserver];
  v3 = [v2 analyticsBookingSession];
  [v3 setExploredOtherOptions:0];
}

- (void)_incrementCountOfRideOptionsBooked
{
  v2 = self->_countOfRideOptionsBooked + 1;
  self->_countOfRideOptionsBooked = v2;
  v3 = v2 > 1;
  v6 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v4 = [v6 rideOptionStateObserver];
  v5 = [v4 analyticsBookingSession];
  [v5 setExploredOtherOptions:v3];
}

- (void)didSelectRideOption:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(RoutePlanningOverviewViewController *)self _incrementCountOfRideOptionsBooked];
    v5 = [v4 application];
    [RidesharingAppPreferenceManager recordAppSelection:v5];

    [RidesharingAppPreferenceManager recordRideChoice:v4];
    v6 = [v4 userActivityForBookingInApplication];

    if (!v6)
    {
      v12 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
      v13 = [v12 rideOptionStateObserver];
      v14 = [v13 analyticsBookingSession];
      v15 = [v4 application];
      v16 = [v15 identifier];
      v17 = [v4 application];
      v18 = [v17 version];
      [v14 captureBookedApp:v16 version:v18];

      v19 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
      v20 = [v19 rideOptionStateObserver];
      v21 = [v20 analyticsBookingSession];
      v22 = [v4 name];
      [v21 captureBookedRideOptionName:v22];

      v23 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
      v24 = [v23 rideOptionStateObserver];
      [v24 startRequestRideForRideOption:v4];

      v9 = [(RoutePlanningOverviewViewController *)self routePlanningDelegate];
      [v9 startRideBookingSessionWithRideOption:v4];
      goto LABEL_6;
    }

    v7 = [v4 application];
    v8 = [v4 userActivityForBookingInApplication];
    [v7 openWithActivity:v8];

    v9 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    v10 = [v9 rideOptionStateObserver];
    v11 = [v10 analyticsBookingSession];
    [v11 endSessionOnView:1 state:4];

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
    v9 = sub_10006D178();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v10 = +[NSThread callStackSymbols];
    v26 = 138412290;
    v27 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@", &v26, 0xCu);
    goto LABEL_4;
  }

LABEL_7:
}

- (void)didSelectAppStoreSuggestionWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[MKMapService sharedService];
  [v5 captureUserAction:14001 onTarget:-[RoutePlanningOverviewViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];

  v6 = [(RoutePlanningOverviewViewController *)self routePlanningDelegate];
  [v6 displayStoreViewControllerForAppWithiTunesIdentifier:v4 clientIdentifier:@"RidesharingStoreProductClientIdentifier"];
}

- (void)didSelectFeedbackWithAppIdentifier:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(RoutePlanningOverviewViewController *)self routePlanningDelegate];
    [v5 continueRideBookingSessionWithApplicationIdentifier:v4];
  }
}

- (void)_sceneDidBackground:(id)a3
{
  v4 = [a3 object];
  v5 = [(RoutePlanningOverviewViewController *)self view];
  v6 = [v5 window];
  v7 = [v6 windowScene];

  if (v4 == v7)
  {
    v8 = [(RoutePlanningOverviewViewController *)self referenceDateUpdater];
    [v8 setActive:0];
  }
}

- (void)_sceneWillForeground:(id)a3
{
  v4 = [a3 object];
  v5 = [(RoutePlanningOverviewViewController *)self view];
  v6 = [v5 window];
  v7 = [v6 windowScene];

  if (v4 == v7)
  {
    v8 = [(RoutePlanningOverviewViewController *)self referenceDateUpdater];
    [v8 setActive:1];
  }
}

- (void)_stopReferenceDateUpdates
{
  v3 = [(RoutePlanningOverviewViewController *)self referenceDateUpdater];

  if (v3)
  {
    v4 = [(RoutePlanningOverviewViewController *)self referenceDateUpdater];
    [v4 setActive:0];

    [(RoutePlanningOverviewViewController *)self setReferenceDateUpdater:0];
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 removeObserver:self name:UISceneWillEnterForegroundNotification object:0];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 removeObserver:self name:UISceneDidEnterBackgroundNotification object:0];
  }
}

- (void)_startReferenceDateUpdates
{
  v3 = [(RoutePlanningOverviewViewController *)self rootController];
  v4 = [v3 transportType];

  if (v4 == 4)
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
    v5 = [(RoutePlanningOverviewViewController *)self referenceDateUpdater];

    if (!v5)
    {
      v6 = [[MKTransitItemReferenceDateUpdater alloc] initWithDelegate:self];
      [(RoutePlanningOverviewViewController *)self setReferenceDateUpdater:v6];

      v7 = +[NSNotificationCenter defaultCenter];
      [v7 addObserver:self selector:"_sceneWillForeground:" name:UISceneWillEnterForegroundNotification object:0];

      v8 = +[NSNotificationCenter defaultCenter];
      [v8 addObserver:self selector:"_sceneDidBackground:" name:UISceneDidEnterBackgroundNotification object:0];
    }

    v9 = [(RoutePlanningOverviewViewController *)self _currentSceneActivationState];
    v11 = v9 != 2 && v9 != -1;
    v16 = [(RoutePlanningOverviewViewController *)self referenceDateUpdater];
    [v16 setActive:v11];
  }
}

- (void)transitItemReferenceDateUpdater:(id)a3 didUpdateToReferenceDate:(id)a4
{
  v10 = [(RoutePlanningOverviewViewController *)self collectionView:a3];
  v5 = [v10 dataSource];
  v6 = [(RoutePlanningOverviewViewController *)self rootController];
  v7 = v6;
  if (v5 == v6)
  {
    v8 = [(RoutePlanningOverviewViewController *)self rootController];
    v9 = [v8 transportType];

    if (v9 == 4)
    {
      return;
    }

    v10 = [(RoutePlanningOverviewViewController *)self rootController];
    [v10 reloadVisibleRouteCells];
  }

  else
  {
  }
}

- (void)didTapReportAProblemButtonOnRoutePlanningFooterView:(id)a3
{
  v4 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v5 = [v4 transportType];

  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v7 = 303;
      goto LABEL_22;
    }

    if (v5 != 4)
    {
      if (v5 == 5)
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

  else if (v5)
  {
    if (v5 == 2)
    {
      v6 = 302;
    }

    else
    {
      v6 = 0;
    }

    if (v5 == 1)
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

  v12 = [(RoutePlanningOverviewViewController *)self _maps_mapsSceneDelegate];
  v13 = [v12 rapPresenter];
  [v13 presentReportAProblemForRouteFromEntryPoint:v7];
}

- (void)_collectRevealAnalyticForTransportType:(int64_t)a3
{
  if (a3 > 5)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_101213674[a3];
  }

  [GEOAPPortal captureUserAction:21 target:v3 value:0];
}

- (void)_updateToTransportType:(int64_t)a3
{
  v5 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v6 = [v5 transportType];

  if (v6 != a3)
  {
    v7 = +[MKMapService sharedService];
    if (a3 > 5)
    {
      v8 = 3012;
    }

    else
    {
      v8 = dword_10121365C[a3];
    }

    [v7 captureUserAction:v8 onTarget:-[RoutePlanningOverviewViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];
  }

  v9 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  [v9 updateTransportType:a3];

  [(RoutePlanningOverviewViewController *)self _refreshTimingDisplay];
  [(RoutePlanningOverviewViewController *)self _refreshOptionsVisibility];
  [(RoutePlanningOverviewViewController *)self _refreshContentInset];
  [(RoutePlanningOverviewViewController *)self _refreshSelectedVehicleDisplay];
  if (sub_10000FA08(self) == 5)
  {
    v10 = [(ContaineeViewController *)self cardPresentationController];
    [v10 updateHeightForCurrentLayout];
  }

  v11 = sub_100798A3C();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if ((a3 - 1) > 4)
    {
      v12 = @"Undefined";
    }

    else
    {
      v12 = *(&off_10162B9C8 + a3 - 1);
    }

    v13 = 138412290;
    v14 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "User manually changed the transport type: %@", &v13, 0xCu);
  }

  [(RoutePlanningOverviewViewController *)self _cancelAutoLaunch];
}

- (void)dataSource:(id)a3 didSelectRowForRoute:(id)a4
{
  v19 = a3;
  v6 = a4;
  if (-[RoutePlanningOverviewViewController isDisplayingSingleTrip](self, "isDisplayingSingleTrip") && (-[RoutePlanningOverviewViewController dataCoordinator](self, "dataCoordinator"), v7 = objc_claimAutoreleasedReturnValue(), [v7 routeCollection], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "currentRoute"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v6, "isEqual:", v9), v9, v8, v7, v10))
  {
    v11 = [(RoutePlanningOverviewViewController *)self routePlanningDelegate];
    [v11 presentRoutePlanningViewType:2];

    v12 = +[MKMapService sharedService];
    [v12 captureUserAction:3004 onTarget:-[RoutePlanningOverviewViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];
  }

  else
  {
    v13 = [(RoutePlanningOverviewViewController *)self rootController];

    if (v13 != v19)
    {
      goto LABEL_9;
    }

    v14 = [(RoutePlanningOverviewViewController *)self routePlanningDelegate];
    [v14 presentRoutePlanningViewType:0];

    v15 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    [v15 updateCurrentRoute:v6];

    v16 = [(RoutePlanningOverviewViewController *)self rootController];
    v17 = [v16 allowsPersistentHighlight];

    if ((v17 & 1) == 0)
    {
      v18 = [(ContaineeViewController *)self cardPresentationController];
      [v18 wantsLayout:2];
    }

    v12 = +[MKMapService sharedService];
    [v12 captureUserAction:3015 onTarget:-[RoutePlanningOverviewViewController currentUITargetForAnalytics](self eventValue:"currentUITargetForAnalytics") routeIndex:{0, objc_msgSend(v6, "_maps_routeIndex")}];
  }

LABEL_9:
}

- (void)didTapAutomaticSharingButtonForRouteOverviewCell:(id)a3
{
  v3 = [(RoutePlanningOverviewViewController *)self routePlanningDelegate];
  [v3 presentRoutePlanningViewType:7];
}

- (void)didTapDetailsButtonForRouteOverviewCell:(id)a3
{
  v16 = a3;
  v4 = [(RoutePlanningOverviewViewController *)self collectionView];
  v5 = [v4 dataSource];
  v6 = [(RoutePlanningOverviewViewController *)self rootController];

  if (v5 == v6)
  {
    v7 = [(RoutePlanningOverviewViewController *)self collectionView];
    v8 = [v7 indexPathForCell:v16];

    v9 = sub_10000FA08(self);
    v10 = [(RoutePlanningOverviewViewController *)self rootController];
    v11 = v10;
    if (v9 == 5)
    {
      [v10 toggleStepsExpansionForRouteAtIndexPath:v8];
    }

    else
    {
      v12 = [v10 routeForRowAtIndexPath:v8];

      if (v12)
      {
        v13 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
        [v13 updateCurrentRoute:v12];

        v14 = [(RoutePlanningOverviewViewController *)self routePlanningDelegate];
        [v14 presentRoutePlanningViewType:2];

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

- (void)_startNavigationForRouteCollection:(id)a3 navigationDetailsOptions:(NavigationDetailsOptions *)a4
{
  v6 = a3;
  v7 = [(RoutePlanningOverviewViewController *)self routePlanningDelegate];
  v8 = *&a4->guidanceType;
  v9[0] = *&a4->shouldSimulateLocations;
  v9[1] = v8;
  v9[2] = *&a4->isReconnecting;
  navigationModeContext = a4->navigationModeContext;
  [v7 startNavigationWithRouteCollection:v6 navigationDetailsOptions:v9];
}

- (void)_promptForSimulationAndStartNavigationForRouteCollection:(id)a3
{
  v4 = a3;
  if (!v4)
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

  v25 = [(RoutePlanningOverviewViewController *)self _maps_platformController];
  v5 = [v25 currentSession];
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
    v8 = [v4 currentRoute];
    if (([v8 isMultipointRoute]& 1) == 0)
    {
      v9 = [v8 origin];
      v10 = [v9 geoMapItem];

      v11 = [v8 destination];
      v12 = [v11 geoMapItem];

      if (v10 && v12)
      {
        v13 = [v8 transportType];
        v14 = +[MapsSuggestionsPredictor sharedPredictor];
        v15 = MapsSuggestionsMapItemConvertIfNeeded();
        v16 = MapsSuggestionsMapItemConvertIfNeeded();
        [v14 captureActualTransportationMode:v13 originMapItem:v15 destinationMapItem:v16];
      }
    }

    objc_initWeak(location, self);
    v17 = [v7 configuration];
    v18 = [v17 isNavigationTracePlayback];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100834B8C;
    v26[3] = &unk_10165F2B8;
    objc_copyWeak(&v28, location);
    v27 = v4;
    [NavigationSimulationPromptController promptIfNeededForSimulationForRoute:v8 navigationTracePlayback:v18 continueWithOptions:v26];

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

    v8 = sub_100798A3C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *location = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Attempt to go from route planning to navigation without a currently active RoutePlanningSession", location, 2u);
    }
  }
}

- (void)_doPromptsAndStartNavForRouteCollection:(id)a3
{
  v4 = a3;
  if (SBUIIsSystemApertureEnabled())
  {
    [(RoutePlanningOverviewViewController *)self _promptForSimulationAndStartNavigationForRouteCollection:v4];
  }

  else
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100834CFC;
    v5[3] = &unk_10162B7A0;
    v5[4] = self;
    v6 = v4;
    [PushNotificationPrompt checkShouldRepeatForUserAction:v5];
  }
}

- (void)didTapRideBookingActionForRouteOverviewCell:(id)a3
{
  v4 = a3;
  [(RoutePlanningOverviewViewController *)self _cancelAutoLaunch];
  v5 = [(RoutePlanningOverviewViewController *)self collectionView];
  v6 = [v5 dataSource];
  v7 = [(RoutePlanningOverviewViewController *)self rideBookingSource];

  if (v6 != v7)
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

  v8 = [(RoutePlanningOverviewViewController *)self collectionView];
  v9 = [v8 dataSource];
  v10 = [(RoutePlanningOverviewViewController *)self rideBookingSource];

  if (v9 == v10)
  {
    v11 = [(RoutePlanningOverviewViewController *)self collectionView];
    v12 = [v11 indexPathForCell:v4];

    v13 = sub_100798A3C();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v25 = 138412290;
      v26 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Go button was tapped at cell indexPath: %@", &v25, 0xCu);
    }

    v14 = [(RoutePlanningOverviewViewController *)self collectionView];
    v15 = [v14 dataSource];

    v16 = [v15 outlineSectionAtIndex:{objc_msgSend(v12, "section")}];
    [v16 didSelectItemAtIndexPath:v12];
    v17 = +[MKMapService sharedService];
    v18 = [(RoutePlanningOverviewViewController *)self currentUITargetForAnalytics];
    v19 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v12 section]);
    v20 = [v19 stringValue];
    [v17 captureUserAction:14003 onTarget:v18 eventValue:v20];
  }
}

- (void)didTapGoOnRoute:(id)a3
{
  v4 = a3;
  [(RoutePlanningOverviewViewController *)self _cancelAutoLaunch];
  if (v4)
  {
    v5 = [v4 uniqueRouteID];
    v6 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    v7 = [v6 routeCollection];

    v8 = [(RouteCollection *)v7 indexForUniqueRouteID:v5];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = sub_100798A3C();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v34 = v5;
        v35 = 2114;
        v36 = v7;
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

      v13 = [(RoutePlanningOverviewViewController *)self rootController];
      v14 = [v13 routeCollection];

      v15 = [(RouteCollection *)v14 indexForUniqueRouteID:v5];
      if (v15 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v16 = sub_100798A3C();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v34 = v5;
          v35 = 2114;
          v36 = v14;
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
        v32 = v4;
        v21 = [NSArray arrayWithObjects:&v32 count:1];
        v7 = [(RouteCollection *)v20 initWithRoutes:v21 currentRouteIndex:0];

        v22 = 0;
      }

      else
      {
        v22 = v15;
        v7 = v14;
      }
    }

    else
    {
      v22 = v8;
    }

    v26 = [(RouteCollection *)v7 routeCollectionByChangingCurrentRouteIndex:v22];

    v27 = sub_100798A3C();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v34 = v26;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "starting navigation with route collection: %{public}@", buf, 0xCu);
    }

    if ([v4 isFamiliarRoute])
    {
      v28 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
      v29 = [v28 transportType];

      if (v29 == 1)
      {
        v30 = +[MKMapService sharedService];
        [v30 captureUserAction:527 onTarget:301 eventValue:0];
      }
    }

    v31 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    [v31 updateCurrentRouteIndex:v22];

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
    v5 = sub_10006D178();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v25 = +[NSThread callStackSymbols];
      *buf = 138412290;
      v34 = v25;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    goto LABEL_36;
  }

LABEL_37:
}

- (void)_cancelAutoLaunch
{
  v2 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v3 = [v2 platformController];
  v4 = [v3 auxiliaryTasksManager];
  v5 = [v4 auxilaryTaskForClass:objc_opt_class()];

  [v5 cancelNavigationAutoLaunchIfNeccessary];
}

- (void)didTapRouteCreationButtonForCell:(id)a3
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
    v5 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    v6 = [v5 resolvedWaypointSet];
    v7 = [v6 origin];

    if (v7 && ([v7 coordinate], v9 = v8, objc_msgSend(v7, "coordinate"), v30 = CLLocationCoordinate2DMake(v9, v10), CLLocationCoordinate2DIsValid(v30)))
    {
      v11 = [v7 mkMapItem];
      v12 = sub_100798A3C();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [v7 shortDescription];
        *buf = 138477827;
        v29 = v13;
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

      v11 = 0;
    }

    v14 = [v5 resolvedWaypointSet];
    v15 = [v14 destination];

    if (v15 && ([v15 coordinate], v17 = v16, objc_msgSend(v15, "coordinate"), v31 = CLLocationCoordinate2DMake(v17, v18), CLLocationCoordinate2DIsValid(v31)))
    {
      v19 = [v15 mkMapItem];
      v20 = sub_100798A3C();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = [v15 shortDescription];
        *buf = 138477827;
        v29 = v21;
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

      v19 = 0;
    }

    v22 = +[MKMapService sharedService];
    [v22 captureUserAction:465 onTarget:-[RoutePlanningOverviewViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];

    v23 = [(RoutePlanningOverviewViewController *)self _maps_mapsSceneDelegate];
    v24 = [v23 appCoordinator];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100835D10;
    v26[3] = &unk_101661B18;
    v27 = v5;
    v25 = v5;
    [v24 enterRouteCreationWithRoute:0 originMapItem:v11 destinationMapItem:v19 userInfo:0 completion:v26];
  }
}

- (void)dataSource:(id)a3 requiresDeletionOfIndexSet:(id)a4 reloadOfIndexSet:(id)a5 insertionOfIndexSet:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(RoutePlanningOverviewViewController *)self rideBookingSource];

  if (v14 != v10)
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

  v15 = [(RoutePlanningOverviewViewController *)self collectionView];
  v16 = [v15 dataSource];

  if (v16 == v10)
  {
    v17 = [(RoutePlanningOverviewViewController *)self collectionView];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100835FA8;
    v21[3] = &unk_101656A00;
    v21[4] = self;
    v22 = v12;
    v23 = v11;
    v24 = v13;
    [v17 performBatchUpdates:v21 completion:&stru_10162B778];
  }
}

- (void)dataSource:(id)a3 requiresReloadOfSection:(unint64_t)a4
{
  v6 = a3;
  v7 = [(RoutePlanningOverviewViewController *)self rideBookingSource];

  if (v7 != v6)
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

  v8 = [(RoutePlanningOverviewViewController *)self collectionView];
  v9 = [v8 dataSource];

  if (v9 == v6)
  {
    [(RoutePlanningOverviewViewController *)self _updateRidesharingAnalytics];
    v10 = [(RoutePlanningOverviewViewController *)self collectionView];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1008362A4;
    v15[3] = &unk_101661650;
    v15[4] = self;
    v15[5] = a4;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100836318;
    v14[3] = &unk_101661738;
    v14[4] = self;
    [v10 performBatchUpdates:v15 completion:v14];
  }
}

- (void)dataSourceRequiresReload:(id)a3
{
  v4 = a3;
  v5 = [(RoutePlanningOverviewViewController *)self collectionView];
  v6 = [v5 dataSource];

  if (v6 == v4)
  {
    [(RoutePlanningOverviewViewController *)self _updateRidesharingAnalytics];
    v7 = [(RoutePlanningOverviewViewController *)self collectionView];
    [v7 _maps_reloadDataWithoutFocus];

    [(RoutePlanningOverviewViewController *)self _animateUpdatingHeightForSingleTrip];
  }
}

- (void)headerViewButtonTapped:(id)a3 buttonType:(unint64_t)a4
{
  v5 = a3;
  [(RoutePlanningOverviewViewController *)self _markFeatureDiscoveryShown];
  [(RoutePlanningOverviewViewController *)self handleDismissAction:v5];
}

- (BOOL)_areWaypointsInCountryCode:(id)a3
{
  v4 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [(RoutePlanningOverviewViewController *)self rootController];
  v6 = [v5 routeCollection];
  v7 = [v6 currentRoute];
  v8 = [v7 waypoints];

  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v18 + 1) + 8 * i) mapItemStorage];
        v14 = [v13 _bestAvailableCountryCode];
        v15 = [v14 isEqual:v4];

        if (!v15)
        {
          v16 = 0;
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
    v3 = [(RoutePlanningOverviewViewController *)self rootController];
    [v3 markFeatureDiscoveryShown];
  }
}

- (void)_presentRouteOptions
{
  v3 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v4 = [v3 transportType];

  if (!v4)
  {
    v5 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    v4 = [v5 desiredTransportType];
  }

  v6 = 17099;
  if (v4 > 2)
  {
    v8 = 3035;
    if (v4 == 5)
    {
      v6 = 3048;
    }

    else
    {
      v6 = 17099;
    }

    v7 = v4 == 3;
  }

  else
  {
    if (!v4)
    {
      return;
    }

    v7 = v4 == 1;
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

  v11 = [(RoutePlanningOverviewViewController *)self routePlanningDelegate];
  [v11 presentRoutePlanningViewType:4];
}

- (void)_presentEbikeOptions
{
  v3 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v4 = [v3 transportType];

  if (!v4)
  {
    v5 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    v4 = [v5 desiredTransportType];
  }

  if (v4 == 5 && sub_10072B0F0())
  {
    v6 = [(RoutePlanningOverviewViewController *)self routePlanningDelegate];
    [v6 presentRoutePlanningViewType:8];
  }
}

- (BOOL)_shouldPermitAutomaticSharingContacts
{
  v2 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  [v2 transportType];
  v3 = MSPSharedTripSharingSupportedForTransportType();

  return v3;
}

- (void)_refreshContactsDisplayForAutomaticTripSharing
{
  v3 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v4 = [v3 platformController];

  v5 = [v4 currentSession];
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

  v8 = [v7 configuration];

  v9 = [v8 automaticSharingContacts];

  if ([(RoutePlanningOverviewViewController *)self _shouldPermitAutomaticSharingContacts])
  {
    v10 = sub_1000946AC();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v19 = 134217984;
      v20 = [v9 count];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "RoutePlanningOverviewViewController updating routes list with %lu autosharing contacts", &v19, 0xCu);
    }

    v11 = [(RoutePlanningOverviewViewController *)self rootController];
    v12 = v11;
    v13 = v9;
LABEL_15:
    [v11 setAutomaticSharingContacts:v13];

    goto LABEL_16;
  }

  if ([v9 count])
  {
    v14 = sub_1000946AC();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [v9 count];
      v16 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
      v17 = [v16 transportType];
      if ((v17 - 1) > 4)
      {
        v18 = @"Undefined";
      }

      else
      {
        v18 = *(&off_10162B9C8 + (v17 - 1));
      }

      v19 = 134218242;
      v20 = v15;
      v21 = 2112;
      v22 = v18;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "RoutePlanningOverviewViewController have %lu autosharing contacts but incompatible transport type: %@", &v19, 0x16u);
    }

    v11 = [(RoutePlanningOverviewViewController *)self rootController];
    v12 = v11;
    v13 = &__NSArray0__struct;
    goto LABEL_15;
  }

LABEL_16:
}

- (void)_updateDataSourceRouteCollection:(id)a3
{
  v4 = a3;
  v8 = [(RoutePlanningOverviewViewController *)self rootController];
  v5 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v6 = [v5 transportType];
  v7 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  [v8 updateWithTransportType:v6 routeCollection:v4 isInACustomRouteRegion:{objc_msgSend(v7, "inACustomRouteRegion")}];
}

- (BOOL)_hasModalViewControllerInTransition
{
  v3 = [(RoutePlanningOverviewViewController *)self presentedViewController];
  if ([v3 isBeingPresented])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(RoutePlanningOverviewViewController *)self presentedViewController];
    v4 = [v5 isBeingDismissed];
  }

  return v4;
}

- (void)_finishLaunchingIntoNavIfPossible:(id)a3
{
  v4 = a3;
  v5 = +[MNNavigationService sharedService];
  v6 = [v5 isInNavigatingState];

  v7 = [(RoutePlanningOverviewViewController *)self _hasModalViewControllerInTransition];
  if ((v6 & 1) == 0 && (v7 & 1) == 0)
  {
    +[StartNavigationDetailsBuilder defaultNavigationDetailsOptions];
    [(RoutePlanningOverviewViewController *)self _startNavigationForRouteCollection:v4 navigationDetailsOptions:v8];
  }
}

- (void)routePlanningDataCoordinator:(id)a3 didUpdateRoutes:(id)a4
{
  v5 = a4;
  [PPTNotificationCenter postNotificationIfNeededWithName:@"MapsTestingTransitRouteUpdateWillUpdateSummary" object:0 userInfo:0];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
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
        v12 = [(RoutePlanningOverviewViewController *)self rootController];
        [v12 reloadExistingCellForRoute:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [PPTNotificationCenter postNotificationIfNeededWithName:@"MapsTestingTransitRouteUpdateDidUpdateSummary" object:0 userInfo:0];
}

- (void)routePlanningDataCoordinator:(id)a3 didUpdateRouteCollection:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = +[UIMenuSystem mainSystem];
  [v7 setNeedsRebuild];

  [(RoutePlanningOverviewViewController *)self setRouteCellsHeight:-1.0];
  if ([v6 count])
  {
    [CATransaction setFrameStallSkipRequest:1];
    v8 = [(RoutePlanningOverviewViewController *)self transportTypePicker];
    if (v8)
    {
      v9 = v8;
      v10 = [v16 desiredTransportType];
      v11 = [(RoutePlanningOverviewViewController *)self transportTypePicker];
      v12 = [v11 selectedType];

      if (v10 != v12)
      {
        v13 = [v16 desiredTransportType];
        v14 = [(RoutePlanningOverviewViewController *)self transportTypePicker];
        [v14 setSelectedType:v13];
      }
    }

    [(RoutePlanningOverviewViewController *)self _refreshTimingDisplay];
    [(RoutePlanningOverviewViewController *)self _refreshContactsDisplayForAutomaticTripSharing];
    [(RoutePlanningOverviewViewController *)self _updateDataSourceRouteCollection:v6];
    [(RoutePlanningOverviewViewController *)self _scrollToCellToShowAtMediumLayoutAnimated:[(RoutePlanningOverviewViewController *)self isDisplayingSingleTrip]^ 1];
    [(RoutePlanningOverviewViewController *)self _setupAdvisoryFooterView];
    [(RoutePlanningOverviewViewController *)self _animateUpdatingHeightForSingleTrip];
    v15 = +[NSNotificationCenter defaultCenter];
    [v15 postNotificationName:@"MapsRoutePlanningShowingRoutesNotification" object:self];
  }
}

- (void)_updateRidesharingAnalytics
{
  v3 = [(RoutePlanningOverviewViewController *)self collectionView];
  v4 = [v3 dataSource];
  v5 = [(RoutePlanningOverviewViewController *)self rideBookingSource];

  if (v4 == v5)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    v7 = [v6 rideOptionStateObserver];
    v8 = [v7 rideOptionState];
    v9 = [v8 rideOptionStatusMap];
    v10 = [v9 allValues];

    v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
            objc_enumerationMutation(v10);
          }

          v16 = [*(*(&v23 + 1) + 8 * i) rideOptions];
          v13 += [v16 count];
        }

        v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v12);
    }

    else
    {
      v13 = 0;
    }

    v17 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    v18 = [v17 rideOptionStateObserver];
    v19 = [v18 analyticsBookingSession];
    [v19 captureRideOptionCount:v13];

    v20 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    v21 = [v20 rideOptionStateObserver];
    v22 = [v21 analyticsBookingSession];
    [v22 captureView:1];
  }
}

- (void)routePlanningDataCoordinator:(id)a3 didUpdateRequestState:(int64_t)a4
{
  v6 = [(ControlContaineeViewController *)self delegate];
  [v6 refreshRoutePlanningTimingIfNeeded];

  [(RoutePlanningOverviewViewController *)self _updateForEquivalentRequestState:a4];
}

- (void)routePlanningDataCoordinator:(id)a3 didUpdateRideBookingRideOptionState:(id)a4
{
  v5 = a4;
  v6 = [(RoutePlanningOverviewViewController *)self rideBookingSource];
  [v6 configureWithRideBookingRideOptionState:v5];
}

- (void)routePlanningDataCoordinator:(id)a3 didUpdateTransportType:(int64_t)a4
{
  v41 = a3;
  v6 = [(ControlContaineeViewController *)self delegate];
  [v6 dismissRoutePlanningPlaceCardIfNeeded];

  v7 = [(RoutePlanningOverviewViewController *)self transportTypePicker];

  if (v7)
  {
    v8 = [(RoutePlanningOverviewViewController *)self transportTypePicker];
    [v8 setSelectedType:a4];
  }

  v9 = sub_100016C50();
  if (a4 == 4 && v9)
  {
    [(RoutePlanningOverviewViewController *)self _stopReferenceDateUpdates];
    [(RoutePlanningOverviewViewController *)self _prepareRideBookingForFirstUse];
    v10 = [(RoutePlanningOverviewViewController *)self collectionView];
    v11 = [v10 dataSource];
    v12 = [(RoutePlanningOverviewViewController *)self rideBookingSource];
    v13 = v12;
    if (v11 == v12)
    {
      v32 = [(RoutePlanningOverviewViewController *)self collectionView];
      v33 = [v32 delegate];
      v34 = [(RoutePlanningOverviewViewController *)self rideBookingSource];

      if (v33 == v34)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

    v35 = [(RoutePlanningOverviewViewController *)self rootController];
    [v35 setCollectionView:0];

    v36 = [(RoutePlanningOverviewViewController *)self collectionView];
    v37 = [(RoutePlanningOverviewViewController *)self rideBookingSource];
    [v37 setCollectionView:v36];

    v38 = [(RoutePlanningOverviewViewController *)self rootController];
    v39 = [v38 headerView];
    v40 = [(RoutePlanningOverviewViewController *)self rideBookingSource];
    [v40 setHeaderView:v39];
  }

  else
  {
    v14 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    v15 = [v14 rideOptionStateObserver];
    v16 = [v15 analyticsBookingSession];
    [v16 endSessionOnView:1 state:2];

    [(RoutePlanningOverviewViewController *)self _resetCountOfRideOptionsBooked];
    v17 = [(RoutePlanningOverviewViewController *)self rootController];
    v18 = [v41 routeCollection];
    [v17 updateWithTransportType:a4 routeCollection:v18 isInACustomRouteRegion:{objc_msgSend(v41, "inACustomRouteRegion")}];

    if (a4 == 4)
    {
      [(RoutePlanningOverviewViewController *)self _stopReferenceDateUpdates];
    }

    else
    {
      [(RoutePlanningOverviewViewController *)self _startReferenceDateUpdates];
    }

    [(RoutePlanningOverviewViewController *)self _refreshContactsDisplayForAutomaticTripSharing];
    v19 = [(RoutePlanningOverviewViewController *)self collectionView];
    v20 = [v19 dataSource];
    v21 = [(RoutePlanningOverviewViewController *)self rootController];
    v22 = v21;
    if (v20 == v21)
    {
      v23 = [(RoutePlanningOverviewViewController *)self collectionView];
      v24 = [v23 delegate];
      v25 = [(RoutePlanningOverviewViewController *)self rootController];

      if (v24 == v25)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

    v26 = [(RoutePlanningOverviewViewController *)self rideBookingSource];
    [v26 setCollectionView:0];

    v27 = [(RoutePlanningOverviewViewController *)self collectionView];
    v28 = [(RoutePlanningOverviewViewController *)self rootController];
    [v28 setCollectionView:v27];

    v29 = [(RoutePlanningOverviewViewController *)self rideBookingSource];
    v30 = [v29 headerView];
    v31 = [(RoutePlanningOverviewViewController *)self rootController];
    [v31 setHeaderView:v30];

    [(RoutePlanningOverviewViewController *)self _scrollToCellToShowAtMediumLayoutAnimated:[(RoutePlanningOverviewViewController *)self isDisplayingSingleTrip]^ 1];
  }

LABEL_16:
  [(RoutePlanningOverviewViewController *)self _refreshTimingDisplay];
  [(RoutePlanningOverviewViewController *)self _refreshOptionsVisibility];
  [(RoutePlanningOverviewViewController *)self _refreshContentInset];
  [(RoutePlanningOverviewViewController *)self _collectRevealAnalyticForTransportType:a4];
}

- (void)routePlanningDataCoordinator:(id)a3 didUpdateResolvedWaypointSet:(id)a4
{
  v5 = a3;
  v6 = [CLLocation alloc];
  v32 = [v5 resolvedWaypointSet];
  v7 = [v32 origin];
  v8 = [v7 latLng];
  [v8 lat];
  v10 = v9;
  v11 = [v5 resolvedWaypointSet];
  v12 = [v11 origin];
  v13 = [v12 latLng];
  [v13 lng];
  v15 = [v6 initWithLatitude:v10 longitude:v14];
  v16 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v17 = [v16 rideOptionStateObserver];
  v18 = [v17 analyticsBookingSession];
  [v18 setOrigin:v15];

  v19 = [CLLocation alloc];
  v33 = [v5 resolvedWaypointSet];
  v20 = [v33 destination];
  v21 = [v20 latLng];
  [v21 lat];
  v23 = v22;
  v24 = [v5 resolvedWaypointSet];

  v25 = [v24 destination];
  v26 = [v25 latLng];
  [v26 lng];
  v28 = [v19 initWithLatitude:v23 longitude:v27];
  v29 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v30 = [v29 rideOptionStateObserver];
  v31 = [v30 analyticsBookingSession];
  [v31 setDestination:v28];

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
    v3 = [(RoutePlanningOverviewViewController *)self _maps_platformController];
    v4 = [v3 currentSession];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v6 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
      [v6 resume];
    }
  }
}

- (void)willBecomeCurrent:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = RoutePlanningOverviewViewController;
  [(ContaineeViewController *)&v8 willBecomeCurrent:a3];
  v4 = [(ContaineeViewController *)self cardPresentationController];
  v5 = [v4 containerStyle];
  v6 = (v5 > 7) | (0x5Cu >> v5);

  v7 = [(RoutePlanningOverviewViewController *)self rootController];
  [v7 setAllowPersistentHighlight:v6 & 1];

  if (self->_hasPushedRouteCreation)
  {
    self->_hasPushedRouteCreation = 0;
    self->_restoreRoutePlanningAfterRouteCreation = 1;
  }
}

- (void)didChangeContainerStyle:(unint64_t)a3
{
  [(RoutePlanningOverviewViewController *)self _updateLoadingViewBottomInset];
  v4 = [(RoutePlanningOverviewViewController *)self collectionView];
  [v4 reloadData];
}

- (void)willChangeContainerStyle:(unint64_t)a3
{
  v3 = (a3 > 7) | (0x5Cu >> a3);
  v4 = [(RoutePlanningOverviewViewController *)self rootController];
  [v4 setAllowPersistentHighlight:v3 & 1];
}

- (CGRect)_rectOfRowToKeepVisible
{
  v3 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v4 = [v3 transportType];

  if (v4 == 4)
  {
    v5 = [NSIndexPath indexPathForRow:0 inSection:0];
    v6 = [(RoutePlanningOverviewViewController *)self collectionView];
    v7 = [v6 collectionViewLayout];
    v8 = [v7 layoutAttributesForItemAtIndexPath:v5];

    [v8 frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
  }

  else
  {
    v17 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    v18 = [v17 platformController];
    v19 = [v18 currentSession];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    v5 = [(RoutePlanningOverviewViewController *)self rootController];
    v8 = [v21 currentRouteCollection];

    v22 = [v8 currentRoute];
    [v5 mostImportantRectToFrameWithSelectedRoute:v22];
    v10 = v23;
    v12 = v24;
    v14 = v25;
    v16 = v26;
  }

  v27 = [(ContaineeViewController *)self cardPresentationController];
  [v27 bottomSafeOffset];
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
  v5 = [(ContaineeViewController *)self cardPresentationController];
  [v5 bottomSafeOffset];
  v7 = v6 + v4;

  return v7;
}

- (void)applyAlphaToContent:(double)a3
{
  v6.receiver = self;
  v6.super_class = RoutePlanningOverviewViewController;
  [(ContaineeViewController *)&v6 applyAlphaToContent:?];
  v5 = [(RoutePlanningOverviewViewController *)self transportTypePicker];
  [v5 setAlpha:a3];
}

- (void)handleDismissAction:(id)a3
{
  v4 = a3;
  v5 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v6 = [v5 platformController];
  v7 = [v6 currentSession];

  objc_opt_class();
  LOBYTE(v5) = objc_opt_isKindOfClass();

  if ((v5 & 1) == 0 || !v7)
  {
    v9 = +[MKMapService sharedService];
    [v9 captureUserAction:4 onTarget:-[RoutePlanningOverviewViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];

    v10 = +[MapsSuggestionsPredictor sharedPredictor];
    [v10 cancelCapturingAnalytics];

    v11 = [(ControlContaineeViewController *)self delegate];

    if (v11)
    {
      v12 = [(ControlContaineeViewController *)self delegate];
      [v12 viewControllerGoPreviousState:self withSender:v4];
    }

    else
    {
      v13 = [(ContaineeViewController *)self containeeDelegate];

      if (!v13)
      {
LABEL_11:
        v14 = [(RoutePlanningOverviewViewController *)self rideBookingSource];
        [v14 tableViewDismissed];

        v15 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
        v16 = [v15 rideOptionStateObserver];
        v17 = [v16 analyticsBookingSession];
        [v17 endSessionOnView:1 state:2];

        [(RoutePlanningOverviewViewController *)self _resetCountOfRideOptionsBooked];
        goto LABEL_12;
      }

      v12 = [(ContaineeViewController *)self containeeDelegate];
      [v12 containeeViewControllerGoToPreviousState:self withSender:v4];
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

- (double)heightForLayout:(unint64_t)a3
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
  v3 = [(RoutePlanningOverviewViewController *)self routePlanningDelegate];
  [v3 closeRoutePlanningViewController:self withSender:0];
}

- (void)willChangeLayout:(unint64_t)a3
{
  v14.receiver = self;
  v14.super_class = RoutePlanningOverviewViewController;
  [(ContaineeViewController *)&v14 willChangeLayout:?];
  v5 = [(ContaineeViewController *)self cardPresentationController];
  v6 = [v5 containeeLayout];

  if (((v6 - 1) | (a3 - 3)) <= 1)
  {
    v7 = +[MKMapService sharedService];
    [v7 captureUserAction:3010 onTarget:-[RoutePlanningOverviewViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];

    v8 = [(RoutePlanningOverviewViewController *)self collectionView];
    v9 = [v8 dataSource];
    v10 = [(RoutePlanningOverviewViewController *)self rideBookingSource];

    if (v9 == v10)
    {
      v11 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
      v12 = [v11 rideOptionStateObserver];
      v13 = [v12 analyticsBookingSession];
      [v13 setComparedRideOptions:1];
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
  v3 = [(RoutePlanningOverviewViewController *)self collectionView];
  v4 = [v3 superview];

  v5 = [(RoutePlanningOverviewViewController *)self collectionView];
  v6 = [v5 bottomAnchor];
  v7 = [v4 bottomAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  [(RoutePlanningOverviewViewController *)self setCollectionViewToBottomConstraint:v8];

  if ([(RoutePlanningOverviewViewController *)self isCollectionViewVisible])
  {
    v9 = 749.0;
  }

  else
  {
    v9 = 50.0;
  }

  v10 = [(RoutePlanningOverviewViewController *)self collectionViewToBottomConstraint];
  *&v11 = v9;
  [v10 setPriority:v11];

  v12 = objc_alloc_init(NSMutableArray);
  v13 = [(RoutePlanningOverviewViewController *)self containerHeaderView];
  v14 = [(ContaineeViewController *)self headerView];
  LODWORD(v15) = 1148846080;
  v16 = [v13 _maps_constraintsEqualToEdgesOfView:v14 priority:v15];
  v17 = [v16 allConstraints];
  [v12 addObjectsFromArray:v17];

  return v12;
}

- (void)_setupSubviews
{
  v3 = [_RoutePlanningCollectionView alloc];
  v4 = +[RoutePlanningOutlineController defaultCollectionViewLayout];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v8 = [(_RoutePlanningCollectionView *)v3 initWithFrame:v4 collectionViewLayout:CGRectZero.origin.x, y, width, height];
  [(RoutePlanningOverviewViewController *)self setCollectionView:v8];

  v9 = [(RoutePlanningOverviewViewController *)self collectionView];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v10 = +[UIColor clearColor];
  v11 = [(RoutePlanningOverviewViewController *)self collectionView];
  [v11 setBackgroundColor:v10];

  v12 = [(RoutePlanningOverviewViewController *)self collectionView];
  [v12 setAlwaysBounceVertical:1];

  v13 = [(RoutePlanningOverviewViewController *)self collectionView];
  [v13 setRemembersLastFocusedIndexPath:0];

  v14 = [(RoutePlanningOverviewViewController *)self collectionView];
  [v14 setAllowsMultipleSelection:1];

  v15 = [(RoutePlanningOverviewViewController *)self collectionView];
  [v15 setPreservesSuperviewLayoutMargins:1];

  v16 = [(RoutePlanningOverviewViewController *)self collectionView];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  [v16 setAccessibilityIdentifier:v18];

  v19 = [(RoutePlanningOverviewViewController *)self collectionView];
  [v19 _setVisibleRectEdgeInsets:{-10000.0, 0.0, -10000.0, 0.0}];

  v20 = [(ContaineeViewController *)self contentView];
  v21 = [(RoutePlanningOverviewViewController *)self collectionView];
  [v20 addSubview:v21];

  v22 = [(RoutePlanningOverviewViewController *)self collectionView];
  [(ContaineeViewController *)self setContentScrollView:v22 forEdge:1];

  v23 = [[ContainerHeaderView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  [(RoutePlanningOverviewViewController *)self setContainerHeaderView:v23];

  v24 = [(RoutePlanningOverviewViewController *)self containerHeaderView];
  [v24 setTranslatesAutoresizingMaskIntoConstraints:0];

  v25 = [(RoutePlanningOverviewViewController *)self containerHeaderView];
  [v25 setDelegate:self];

  v26 = [(RoutePlanningOverviewViewController *)self containerHeaderView];
  LODWORD(v27) = 1148846080;
  [v26 setContentCompressionResistancePriority:1 forAxis:v27];

  v28 = [(RoutePlanningOverviewViewController *)self containerHeaderView];
  v29 = [(RoutePlanningOverviewViewController *)self containerHeaderView];
  v30 = objc_opt_class();
  v31 = NSStringFromClass(v30);
  v32 = [@"RoutePlanning" stringByAppendingString:v31];
  [v28 setAccessibilityIdentifier:v32];

  v33 = [(ContaineeViewController *)self headerView];
  v34 = [(RoutePlanningOverviewViewController *)self containerHeaderView];
  [v33 addSubview:v34];

  v35 = objc_alloc_init(TransportTypePicker);
  [(RoutePlanningOverviewViewController *)self setTransportTypePicker:v35];

  v36 = [(RoutePlanningOverviewViewController *)self transportTypePicker];
  [v36 setTranslatesAutoresizingMaskIntoConstraints:0];

  v37 = [(RoutePlanningOverviewViewController *)self transportTypePicker];
  [v37 setDelegate:self];

  v38 = [(RoutePlanningOverviewViewController *)self transportTypePicker];
  LODWORD(v39) = 1148846080;
  [v38 setContentCompressionResistancePriority:1 forAxis:v39];

  v40 = [LoadingModeView alloc];
  v41 = +[NSBundle mainBundle];
  v42 = [v41 localizedStringForKey:@"Loading ..." value:@"localized string not found" table:0];
  v43 = [(LoadingModeView *)v40 initWithTitle:v42];
  [(RoutePlanningOverviewViewController *)self setLoadingModeView:v43];

  v44 = [(RoutePlanningOverviewViewController *)self loadingModeView];
  [v44 setAutoresizingMask:18];

  v45 = [RoutePlanningOutlineRootController alloc];
  v46 = [(RoutePlanningOverviewViewController *)self collectionView];
  v47 = [(RoutePlanningOutlineRootController *)v45 initWithCollectionView:v46];
  [(RoutePlanningOverviewViewController *)self setRootController:v47];

  v48 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v49 = [(RoutePlanningOverviewViewController *)self rootController];
  [v49 setDataCoordinator:v48];

  v50 = [(RoutePlanningOverviewViewController *)self rootController];
  [v50 setRouteCellDelegate:self];

  v51 = [(RoutePlanningOverviewViewController *)self rootController];
  [v51 setRouteCreationDelegate:self];

  v52 = [(RoutePlanningOverviewViewController *)self rootController];
  [v52 setCustomRouteDelegate:self];

  v53 = [(RoutePlanningOverviewViewController *)self rootController];
  [v53 setRouteSelectionDelegate:self];

  v54 = [(RoutePlanningOverviewViewController *)self routePlanningDelegate];
  v55 = [(RoutePlanningOverviewViewController *)self rootController];
  [v55 setTransitPayActionDelegate:v54];

  v56 = [(RoutePlanningOverviewViewController *)self containerHeaderView];
  [v56 setHairLineAlpha:0.0];
}

- (int64_t)_currentSceneActivationState
{
  v2 = [(RoutePlanningOverviewViewController *)self view];
  v3 = [v2 window];
  v4 = [v3 windowScene];

  if (v4)
  {
    v5 = [v4 activationState];
  }

  else
  {
    v5 = -1;
  }

  return v5;
}

- (void)updateTheme
{
  v3.receiver = self;
  v3.super_class = RoutePlanningOverviewViewController;
  [(MapsThemeViewController *)&v3 updateTheme];
  [(RoutePlanningOverviewViewController *)self setRouteCellsHeight:-1.0];
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ContaineeViewController *)self cardPresentationController];
  v9 = [v8 containerStyle];
  if (v9 > 7 || ((1 << v9) & 0xA3) == 0)
  {
    goto LABEL_5;
  }

  v10 = [(ContaineeViewController *)self cardPresentationController];
  v11 = [v10 containeeLayout];

  if (v11 != 3)
  {
    v8 = [(ContaineeViewController *)self cardPresentationController];
    [v8 wantsLayout:3];
LABEL_5:
  }

  v12.receiver = self;
  v12.super_class = RoutePlanningOverviewViewController;
  [(RoutePlanningOverviewViewController *)&v12 didUpdateFocusInContext:v6 withAnimationCoordinator:v7];
}

- (void)didMoveToParentViewController:(id)a3
{
  v4 = [(RoutePlanningOverviewViewController *)self _currentSceneActivationState];
  v6 = v4 != 2 && v4 != -1;
  v7 = [(RoutePlanningOverviewViewController *)self referenceDateUpdater];
  [v7 setActive:v6];
}

- (CGRect)_loadingAndErrorViewFrame
{
  v3 = [(ContaineeViewController *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = [(RoutePlanningOverviewViewController *)self collectionView];
  [v10 frame];
  v12 = v11;

  p_errorModeView = &self->_errorModeView;
  v14 = [(ErrorModeView *)self->_errorModeView superview];

  if (v14 || (p_errorModeView = &self->_loadingModeView, [(LoadingModeView *)self->_loadingModeView superview], v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
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
  v20 = [(ContaineeViewController *)self cardPresentationController];
  [v20 bottomSafeOffset];
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

      v6 = [v4 superview];

      v4 = v6;
    }

    while (v6);
  }

  return isKindOfClass & 1;
}

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = RoutePlanningOverviewViewController;
  [(ContaineeViewController *)&v13 viewDidLayoutSubviews];
  v3 = [(ErrorModeView *)self->_errorModeView superview];
  if (v3)
  {
  }

  else
  {
    v4 = [(LoadingModeView *)self->_loadingModeView superview];

    if (!v4)
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

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = RoutePlanningOverviewViewController;
  [(RoutePlanningOverviewViewController *)&v4 viewDidDisappear:a3];
  [(RoutePlanningOverviewViewController *)self _updateDataSourceRouteCollection:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = RoutePlanningOverviewViewController;
  [(RoutePlanningOverviewViewController *)&v8 viewDidAppear:a3];
  v4 = [(RoutePlanningOverviewViewController *)self _currentSceneActivationState];
  v6 = v4 != 2 && v4 != -1;
  v7 = [(RoutePlanningOverviewViewController *)self referenceDateUpdater];
  [v7 setActive:v6];
}

- (void)viewWillAppear:(BOOL)a3
{
  v12.receiver = self;
  v12.super_class = RoutePlanningOverviewViewController;
  [(ContaineeViewController *)&v12 viewWillAppear:a3];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"[Route Planning] Directions Title" value:@"localized string not found" table:0];
  v6 = [(RoutePlanningOverviewViewController *)self containerHeaderView];
  [v6 setTitle:v5];

  v7 = [(ContaineeViewController *)self cardPresentationController];
  v8 = [v7 containerStyle];
  LODWORD(v5) = (v8 > 7) | (0x5Cu >> v8);

  v9 = [(RoutePlanningOverviewViewController *)self rootController];
  [v9 setAllowPersistentHighlight:v5 & 1];

  v10 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v11 = [v10 routeCollection];
  [(RoutePlanningOverviewViewController *)self _updateDataSourceRouteCollection:v11];

  [(RoutePlanningOverviewViewController *)self _loadGarage];
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = RoutePlanningOverviewViewController;
  [(ContaineeViewController *)&v13 viewDidLoad];
  v3 = [(RoutePlanningOverviewViewController *)self view];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v5 stringByReplacingOccurrencesOfString:@"ViewController" withString:&stru_1016631F0];
  [(RoutePlanningOverviewViewController *)self setAccessibilityIdentifier:v6];

  [(RoutePlanningOverviewViewController *)self _setupSubviews];
  v7 = [(RoutePlanningOverviewViewController *)self _initialConstraints];
  [NSLayoutConstraint activateConstraints:v7];
  [DynamicTypeWizard makeObject:self performSelector:"_contentSizeCategoryDidChange" whenSizeCategoryChangesWithOrder:2];
  v8 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  [v8 addObserver:self];

  v9 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  [v9 setupDataForObserver:self];

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
    v4 = [(RoutePlanningOverviewViewController *)self collectionView];
    v5 = [(RideBookingOutlineController *)v3 initWithCollectionView:v4];
    rideBookingSource = self->_rideBookingSource;
    self->_rideBookingSource = v5;

    [(RideBookingOutlineController *)self->_rideBookingSource setDelegate:self];
    v7 = [(RoutePlanningOverviewViewController *)self rootController];
    -[RoutePlanningOutlineController setHideContent:](self->_rideBookingSource, "setHideContent:", [v7 hideContent]);
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
    v5 = WeakRetained;
  }

  else
  {
    v5 = [(ControlContaineeViewController *)self delegate];
  }

  v6 = v5;

  return v6;
}

- (RoutePlanningOverviewViewController)initWithDataCoordinator:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = RoutePlanningOverviewViewController;
  v5 = [(RoutePlanningOverviewViewController *)&v9 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataCoordinator, v4);
    v7 = +[VGVirtualGarageService sharedService];
    [v7 registerObserver:v6];
  }

  return v6;
}

+ (RoutePlanningOverviewViewController)routePlanningOverviewViewControllerWithDataCoordinator:(id)a3
{
  v3 = a3;
  if ((_UISolariumEnabled() & 1) != 0 || (+[UIDevice currentDevice](UIDevice, "currentDevice"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 userInterfaceIdiom], v4, v5 != 5))
  {
    v6 = off_1015F6268;
  }

  else
  {
    v6 = off_1015F62C0;
  }

  v7 = [objc_alloc(*v6) initWithDataCoordinator:v3];

  return v7;
}

@end