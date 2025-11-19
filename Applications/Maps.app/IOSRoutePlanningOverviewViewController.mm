@interface IOSRoutePlanningOverviewViewController
- (BOOL)_shouldShowPedestrianARTeachableMomentCard;
- (BOOL)accessibilityScroll:(int64_t)a3;
- (BOOL)shouldIgnoreTapOnView:(id)a3 headerView:(id)a4;
- (CGRect)_loadingAndErrorViewFrame;
- (IOSRoutePlanningOverviewViewController)initWithDataCoordinator:(id)a3;
- (PedestrianARSessionStateManager)pedestrianARSessionStateManager;
- (RoutePlanningEbikeRefinementModel)ebikeRefinement;
- (RoutePlanningPreferenceRefinementModel)preferenceRefinement;
- (RoutePlanningPreferredNetworksRefinementModel)preferredNetworksRefinement;
- (RoutePlanningTimingRefinementModel)timingRefinement;
- (RoutePlanningVehicleRefinementModel)vehicleRefinement;
- (double)_cardHeightMinusTableViewHeight;
- (double)_extraBottomPadding;
- (double)_percentCollapsedFullToMedium;
- (double)heightForLayout:(unint64_t)a3;
- (double)widthForCell:(id)a3;
- (id)_initialConstraints;
- (id)currentRefinementsForFieldsView:(id)a3;
- (id)waypointsForFieldsView:(id)a3;
- (int64_t)observedRoutePlanningData;
- (int64_t)transportTypeForFieldsView:(id)a3;
- (void)_captureFamiliarRoutesIfAvailable:(id)a3 routeCollection:(id)a4;
- (void)_createStyleSpecificConstraintsIfNeeded;
- (void)_didSelectWaypoint:(id)a3 atIndex:(unint64_t)a4;
- (void)_didTapHeaderView;
- (void)_forceChangeOrigin;
- (void)_refreshContentInset;
- (void)_refreshRouteForChangeInWaypointListView:(id)a3;
- (void)_refreshRouteForWaypoints:(id)a3;
- (void)_refreshSelectedVehicleDisplay;
- (void)_refreshTimingDisplay;
- (void)_setupSubviews;
- (void)_showPedestrianARFeatureIntroTeachableMomentCardIfNecessary;
- (void)_showPedestrianARRaiseToEnterTeachableMomentCardIfNecessary;
- (void)_updateFieldsViewSuperviewIfNeeded;
- (void)_updateTransitionScrollPosition;
- (void)_updateWaypointsAndRoutesListForCurrentContaineeLayout:(unint64_t)a3;
- (void)dealloc;
- (void)didChangeContainerStyle:(unint64_t)a3;
- (void)didChangeLayout:(unint64_t)a3;
- (void)didResignCurrent;
- (void)didTapAdvisoriesOnCell:(id)a3 atIndex:(int64_t)a4;
- (void)didTapOnCell:(id)a3;
- (void)didTapPreviewOnCell:(id)a3;
- (void)didTapPrimaryActionOnCell:(id)a3;
- (void)didTapTimingInFieldsView:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)replaceOriginWithCurrentLocation;
- (void)routePlanningDataCoordinator:(id)a3 didUpdateCyclePreferences:(id)a4;
- (void)routePlanningDataCoordinator:(id)a3 didUpdateDrivePreferences:(id)a4;
- (void)routePlanningDataCoordinator:(id)a3 didUpdateOriginName:(id)a4 destinationName:(id)a5;
- (void)routePlanningDataCoordinator:(id)a3 didUpdateRequestState:(int64_t)a4;
- (void)routePlanningDataCoordinator:(id)a3 didUpdateResolvedWaypointSet:(id)a4;
- (void)routePlanningDataCoordinator:(id)a3 didUpdateRouteCollection:(id)a4;
- (void)routePlanningDataCoordinator:(id)a3 didUpdateTransitPreferences:(id)a4;
- (void)routePlanningDataCoordinator:(id)a3 didUpdateTransportType:(int64_t)a4;
- (void)routePlanningDataCoordinator:(id)a3 didUpdateVirtualGarage:(id)a4;
- (void)routePlanningDataCoordinator:(id)a3 didUpdateWalkPreferences:(id)a4;
- (void)selectedRefinementModel:(id)a3 identifier:(id)a4 subIdentifier:(id)a5;
- (void)updatedRefinementModel:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)waypointListView:(id)a3 didDeleteWaypointAtIndex:(unint64_t)a4;
- (void)waypointListView:(id)a3 didMoveWaypoint:(id)a4 fromIndex:(unint64_t)a5 toIndex:(unint64_t)a6;
- (void)waypointListView:(id)a3 didSelectCollapsedWaypoints:(id)a4;
- (void)waypointListView:(id)a3 didSelectWaypoint:(id)a4 atIndex:(unint64_t)a5;
- (void)waypointListViewDidSelectAddStop:(id)a3;
- (void)willChangeContainerStyle:(unint64_t)a3;
- (void)willChangeLayout:(unint64_t)a3;
@end

@implementation IOSRoutePlanningOverviewViewController

- (void)_showPedestrianARRaiseToEnterTeachableMomentCardIfNecessary
{
  if ([(IOSRoutePlanningOverviewViewController *)self _shouldShowPedestrianARTeachableMomentCard])
  {
    if (+[PedestrianARRaiseToEnterTeachableMomentContaineeViewController hasShownTeachableMoment])
    {
      v3 = sub_100798A3C();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v19 = 0;
        v4 = "Not showing Pedestrian AR raise to enter teachable moment card because it has already been shown before";
        v5 = &v19;
LABEL_7:
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, v4, v5, 2u);
      }
    }

    else
    {
      v6 = +[PedestrianARSessionUsageTracker sharedInstance];
      v7 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
      v8 = [v7 routeCollection];
      v9 = [v8 currentRoute];
      v10 = [v9 uniqueRouteID];
      v11 = [v10 UUIDString];
      v12 = [v6 hasAREverLocalizedForRoute:v11];

      if ((v12 & 1) == 0)
      {
        v3 = sub_100798A3C();
        if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
        {
          goto LABEL_8;
        }

        v18 = 0;
        v4 = "Not showing Pedestrian AR raise to enter teachable moment card because the user hasn't localized on the current route yet";
        v5 = &v18;
        goto LABEL_7;
      }

      v13 = +[PedestrianARSessionUsageTracker sharedInstance];
      v14 = [v13 hasARElementRendered];

      v3 = sub_100798A3C();
      v15 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
      if ((v14 & 1) == 0)
      {
        if (!v15)
        {
          goto LABEL_8;
        }

        v17 = 0;
        v4 = "Not showing Pedestrian AR raise to enter teachable moment card because the user hasn't seen an AR element yet";
        v5 = &v17;
        goto LABEL_7;
      }

      if (v15)
      {
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Showing the Pedestrian AR raise to enter teachable moment card", v16, 2u);
      }

      v3 = [(ControlContaineeViewController *)self delegate];
      [v3 showPedestrianARRaiseToEnterTeachableMomentCard];
    }
  }

  else
  {
    v3 = sub_100798A3C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v4 = "Not showing Pedestrian AR raise to enter teachable moment card because we should not show any teachable moment cards right now";
      v5 = buf;
      goto LABEL_7;
    }
  }

LABEL_8:
}

- (void)_showPedestrianARFeatureIntroTeachableMomentCardIfNecessary
{
  if (![(IOSRoutePlanningOverviewViewController *)self _shouldShowPedestrianARTeachableMomentCard])
  {
    v4 = sub_100798A3C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Not showing Pedestrian AR feature intro teachable moment card because we should not show any teachable moment cards right now", buf, 2u);
    }

    goto LABEL_12;
  }

  if (!+[PedestrianARFeatureIntroTeachableMomentContaineeViewController shouldShowTeachableMoment])
  {
    v4 = sub_100798A3C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Not showing Pedestrian AR feature intro teachable moment card because it is not eligible to be shown", buf, 2u);
    }

    goto LABEL_12;
  }

  v3 = [(IOSRoutePlanningOverviewViewController *)self pedestrianARFeatureIntroTeachableMomentTimer];

  if (v3)
  {
    v4 = sub_100798A3C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Not showing the Pedestrian AR feature intro teachable moment card because the presentation timer has already been created", buf, 2u);
    }

LABEL_12:

    return;
  }

  GEOConfigGetDouble();
  v6 = v5;
  objc_initWeak(&location, self);
  v7 = sub_100798A3C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Starting feature intro teachable moment card with delay: %f", buf, 0xCu);
  }

  v8 = &_dispatch_main_q;
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100839F40;
  v13 = &unk_1016616E8;
  objc_copyWeak(&v14, &location);
  v9 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:&v10 block:v6];
  [(IOSRoutePlanningOverviewViewController *)self setPedestrianARFeatureIntroTeachableMomentTimer:v9, v10, v11, v12, v13];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (BOOL)_shouldShowPedestrianARTeachableMomentCard
{
  v3 = [(IOSRoutePlanningOverviewViewController *)self pedestrianARSessionStateManager];

  if (v3)
  {
    v4 = +[UIApplication sharedMapsDelegate];
    v5 = [v4 currentInterruptionKind];

    if (v5)
    {
      v6 = sub_100798A3C();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        if ((v5 - 2) > 0x15)
        {
          v7 = @"kMapsInterruptionDirectionsSafetyWarning";
        }

        else
        {
          v7 = *(&off_10162B9F0 + (v5 - 2));
        }

        v26 = 138412290;
        v27 = v7;
        v8 = "Not showing Pedestrian AR teachable moment card because there is currently an interruption present: %@";
        v9 = v6;
        v10 = 12;
        goto LABEL_17;
      }

      goto LABEL_18;
    }

    v11 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    v12 = [v11 platformController];
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

    v6 = v14;

    if (v6)
    {
      v15 = [v6 configuration];
      v16 = [v15 shouldAutoLaunchNavigation];

      if (v16)
      {
        v17 = sub_100798A3C();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          LOWORD(v26) = 0;
          v18 = "Not showing Pedestrian AR teachable moment card because route planning is going to auto launch into nav";
LABEL_29:
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, v18, &v26, 2u);
        }
      }

      else
      {
        v20 = [(ContaineeViewController *)self cardPresentationController];
        v21 = [v20 containerStyle];

        if ((v21 & 0xFFFFFFFFFFFFFFFDLL) == 4)
        {
          v17 = sub_100798A3C();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            LOWORD(v26) = 0;
            v18 = "Not showing Pedestrian AR teachable moment card because the phone is in landscape";
            goto LABEL_29;
          }
        }

        else
        {
          v22 = [(IOSRoutePlanningOverviewViewController *)self pedestrianARSessionStateManager];
          v23 = [v22 shouldShowPedestrianAR];

          v17 = sub_100798A3C();
          v24 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
          if (v23)
          {
            if (v24)
            {
              LOWORD(v26) = 0;
              v19 = 1;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Can show Pedestrian AR teachable moment card", &v26, 2u);
            }

            else
            {
              v19 = 1;
            }

            goto LABEL_31;
          }

          if (v24)
          {
            LOWORD(v26) = 0;
            v18 = "Not showing the Pedestrian AR teachable moment card because the feature is not available right now";
            goto LABEL_29;
          }
        }
      }
    }

    else
    {
      v17 = sub_100798A3C();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        LOWORD(v26) = 0;
        v18 = "Not showing Pedestrian AR teachable moment card because we are no longer in route planning";
        goto LABEL_29;
      }
    }

    v19 = 0;
LABEL_31:

    goto LABEL_32;
  }

  v6 = sub_100798A3C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    LOWORD(v26) = 0;
    v8 = "Not showing Pedestrian AR teachable moment card because the feature is not enabled";
    v9 = v6;
    v10 = 2;
LABEL_17:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, v8, &v26, v10);
  }

LABEL_18:
  v19 = 0;
LABEL_32:

  return v19;
}

- (PedestrianARSessionStateManager)pedestrianARSessionStateManager
{
  v2 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v3 = [v2 platformController];
  v4 = [v3 pedestrianARSessionStateManager];

  return v4;
}

- (void)_refreshSelectedVehicleDisplay
{
  v3 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
  v2 = [v3 refinementBarView];
  [v2 reloadRefinementBar];
}

- (double)_extraBottomPadding
{
  v2 = [(IOSRoutePlanningOverviewViewController *)self view];
  [v2 safeAreaInsets];
  if (v3 <= 0.0)
  {
    v4 = 16.0;
  }

  else
  {
    v4 = 0.0;
  }

  return v4;
}

- (void)_refreshContentInset
{
  v3 = [(RoutePlanningOverviewViewController *)self collectionView];
  [v3 contentInset];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  [(IOSRoutePlanningOverviewViewController *)self _extraBottomPadding];
  v11 = v10;
  v12 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  if ([v12 transportType] == 4)
  {
    v11 = 0.0;
  }

  v13 = [(RoutePlanningOverviewViewController *)self collectionView];
  [v13 setContentInset:{v5, v7, v11, v9}];
}

- (void)_refreshTimingDisplay
{
  if (MapsFeature_IsEnabled_Maps357RoutePlanning())
  {
    [NSSet setWithObjects:&off_1016E7298, &off_1016E7268, 0];
  }

  else
  {
    [NSSet setWithObjects:&off_1016E7298, 0, v14];
  }
  v3 = ;
  v4 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 transportType]);
  if ([v3 containsObject:v5])
  {

LABEL_10:
    v10 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    v11 = [v10 timing];

    goto LABEL_12;
  }

  if (MapsFeature_IsEnabled_Maps357RoutePlanning())
  {
    [NSSet setWithObjects:&off_1016E7298, &off_1016E7268, 0];
  }

  else
  {
    [NSSet setWithObjects:&off_1016E7298, 0, v15];
  }
  v6 = ;
  v7 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 desiredTransportType]);
  v9 = [v6 containsObject:v8];

  if (v9)
  {
    goto LABEL_10;
  }

  v11 = 0;
LABEL_12:
  v12 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
  [v12 setNeedsUpdateRefinements];

  v13 = sub_100798A3C();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Updating timing to: %@", buf, 0xCu);
  }
}

- (void)routePlanningDataCoordinator:(id)a3 didUpdateCyclePreferences:(id)a4
{
  v5 = a4;
  v6 = [(IOSRoutePlanningOverviewViewController *)self preferenceRefinement];
  v7 = [v6 value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = sub_100798A3C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v13 = 138412546;
      v14 = v11;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Redrawing refinements for updated %@: %@", &v13, 0x16u);
    }

    v12 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
    [v12 setNeedsUpdateRefinements];
  }
}

- (void)routePlanningDataCoordinator:(id)a3 didUpdateTransitPreferences:(id)a4
{
  v5 = a4;
  v6 = [(IOSRoutePlanningOverviewViewController *)self preferenceRefinement];
  v7 = [v6 value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = sub_100798A3C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v13 = 138412546;
      v14 = v11;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Redrawing refinements for updated %@: %@", &v13, 0x16u);
    }

    v12 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
    [v12 setNeedsUpdateRefinements];
  }
}

- (void)routePlanningDataCoordinator:(id)a3 didUpdateWalkPreferences:(id)a4
{
  v5 = a4;
  v6 = [(IOSRoutePlanningOverviewViewController *)self preferenceRefinement];
  v7 = [v6 value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = sub_100798A3C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v13 = 138412546;
      v14 = v11;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Redrawing refinements for updated %@: %@", &v13, 0x16u);
    }

    v12 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
    [v12 setNeedsUpdateRefinements];
  }
}

- (void)routePlanningDataCoordinator:(id)a3 didUpdateDrivePreferences:(id)a4
{
  v5 = a4;
  v6 = [(IOSRoutePlanningOverviewViewController *)self preferenceRefinement];
  v7 = [v6 value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = sub_100798A3C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v13 = 138412546;
      v14 = v11;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Redrawing refinements for updated %@: %@", &v13, 0x16u);
    }

    v12 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
    [v12 setNeedsUpdateRefinements];
  }
}

- (void)routePlanningDataCoordinator:(id)a3 didUpdateVirtualGarage:(id)a4
{
  if ([(RoutePlanningOverviewViewController *)self shouldRefreshRoutePlanningWithCurrentGarage:a4 previousGarage:self->super._virtualGarageAtLastRouteRequest])
  {
    v5 = sub_100798A3C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Redrawing refinements for updated virtual garage", v8, 2u);
    }

    v6 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
    [v6 setNeedsUpdateRefinements];

    v7 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
    [v7 setNeedsUpdateWaypointsList];
  }
}

- (void)routePlanningDataCoordinator:(id)a3 didUpdateRouteCollection:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(IOSRoutePlanningOverviewViewController *)self _captureFamiliarRoutesIfAvailable:v7 routeCollection:v6];
  v13.receiver = self;
  v13.super_class = IOSRoutePlanningOverviewViewController;
  [(RoutePlanningOverviewViewController *)&v13 routePlanningDataCoordinator:v7 didUpdateRouteCollection:v6];

  v8 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
  [v8 setNeedsUpdateWaypointsList];

  v9 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
  [v9 setNeedsUpdateRefinements];

  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10083AE10;
  v10[3] = &unk_101661B98;
  objc_copyWeak(&v11, &location);
  dispatch_async(&_dispatch_main_q, v10);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)routePlanningDataCoordinator:(id)a3 didUpdateTransportType:(int64_t)a4
{
  v10.receiver = self;
  v10.super_class = IOSRoutePlanningOverviewViewController;
  [(RoutePlanningOverviewViewController *)&v10 routePlanningDataCoordinator:a3 didUpdateTransportType:a4];
  v5 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
  [v5 updateRefinements];

  v6 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
  [v6 updateWaypointsList];

  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10083AF60;
  v7[3] = &unk_101661B98;
  objc_copyWeak(&v8, &location);
  dispatch_async(&_dispatch_main_q, v7);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)routePlanningDataCoordinator:(id)a3 didUpdateOriginName:(id)a4 destinationName:(id)a5
{
  v7.receiver = self;
  v7.super_class = IOSRoutePlanningOverviewViewController;
  [(RoutePlanningOverviewViewController *)&v7 routePlanningDataCoordinator:a3 didUpdateOriginName:a4 destinationName:a5];
  v6 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
  [v6 setNeedsUpdateWaypointsList];
}

- (void)routePlanningDataCoordinator:(id)a3 didUpdateResolvedWaypointSet:(id)a4
{
  v9.receiver = self;
  v9.super_class = IOSRoutePlanningOverviewViewController;
  v6 = a4;
  [(RoutePlanningOverviewViewController *)&v9 routePlanningDataCoordinator:a3 didUpdateResolvedWaypointSet:v6];
  v7 = [(RoutePlanningOverviewViewController *)self routePlanningDelegate:v9.receiver];
  [v7 routePlanningUpdatedWaypoints:v6];

  v8 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
  [v8 setNeedsUpdateRefinements];
}

- (void)routePlanningDataCoordinator:(id)a3 didUpdateRequestState:(int64_t)a4
{
  v6.receiver = self;
  v6.super_class = IOSRoutePlanningOverviewViewController;
  [(RoutePlanningOverviewViewController *)&v6 routePlanningDataCoordinator:a3 didUpdateRequestState:a4];
  v5 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
  [v5 setNeedsUpdateRefinements];
}

- (void)updatedRefinementModel:(id)a3
{
  v12 = a3;
  v4 = [v12 lastUpdateUsageAction];
  if (v4)
  {
    v5 = v4;
    v6 = +[MKMapService sharedService];
    [v6 captureUserAction:v5 onTarget:-[RoutePlanningOverviewViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];
  }

  [(RoutePlanningOverviewViewController *)self _cancelAutoLaunch];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v12 selectedVehicle];
    v8 = +[VGVirtualGarageService sharedService];
    [v8 virtualGarageSelectVehicle:v7];

    v9 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
    [v9 setNeedsUpdateRefinements];
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v11 = v12;
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_8;
    }

    v7 = [v12 value];
    v9 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    [v9 updateTransitPreferences:v7];
  }

  v11 = v12;
LABEL_8:
}

- (void)selectedRefinementModel:(id)a3 identifier:(id)a4 subIdentifier:(id)a5
{
  v26 = a3;
  v7 = a5;
  v8 = [v26 menuPressUsageAction];
  if (v8)
  {
    v9 = v8;
    v10 = +[MKMapService sharedService];
    [v10 captureUserAction:v9 onTarget:-[RoutePlanningOverviewViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];
  }

  v11 = [v26 buttonPressUsageAction];
  if (v11)
  {
    v12 = v11;
    v13 = +[MKMapService sharedService];
    [v13 captureUserAction:v12 onTarget:-[RoutePlanningOverviewViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];
  }

  [(RoutePlanningOverviewViewController *)self _cancelAutoLaunch];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
    [(IOSRoutePlanningOverviewViewController *)self didTapTimingInFieldsView:v14];
LABEL_7:

    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(RoutePlanningOverviewViewController *)self _presentRouteOptions];
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(RoutePlanningOverviewViewController *)self _presentEbikeOptions];
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v26 selectVehicleWithIdentifier:v7];
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v26;
    v15 = [v14 refinementField];
    if (v15 == 2)
    {
      v24 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v7 intValue]);
      v25 = [v14 preferences];
      [v25 setSurchargeOption:v24];
    }

    else if (v15 == 1)
    {
      v23 = [v7 isEqual:@"EnableIC"];
      v24 = [v14 preferences];
      [v24 setShowICFares:v23];
    }

    else
    {
      if (v15)
      {
LABEL_36:
        [(IOSRoutePlanningOverviewViewController *)self updatedRefinementModel:v14];
        goto LABEL_7;
      }

      v16 = v7;
      if ([v16 isEqualToString:@"TRANSIT_PRIORITIZE_DEFAULT"])
      {
        v17 = 0;
      }

      else if ([v16 isEqualToString:@"TRANSIT_PRIORITIZE_BY_TRAVEL_TIME"])
      {
        v17 = 1;
      }

      else if ([v16 isEqualToString:@"TRANSIT_PRIORITIZE_BY_TRANSFER_COUNT"])
      {
        v17 = 2;
      }

      else if ([v16 isEqualToString:@"TRANSIT_PRIORITIZE_BY_WALKING_DISTANCE"])
      {
        v17 = 3;
      }

      else
      {
        v17 = 0;
      }

      v24 = [v14 preferences];
      [v24 setSortOption:v17];
    }

    goto LABEL_36;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [v7 isEqualToString:@"PreferredNetworks"];
    v19 = +[VGVirtualGarageService sharedService];
    v20 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    v21 = [v20 virtualGarage];
    v22 = [v21 selectedVehicle];
    [v19 virtualGarageSetShouldUsePreferredNetworks:v18 forVehicle:v22];
  }

LABEL_14:
}

- (double)widthForCell:(id)a3
{
  v3 = [(RoutePlanningOverviewViewController *)self collectionView];
  [v3 frame];
  Width = CGRectGetWidth(v6);

  return Width;
}

- (void)didTapAdvisoriesOnCell:(id)a3 atIndex:(int64_t)a4
{
  v6 = a3;
  v7 = sub_100798A3C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v6 route];
    v9 = [v8 uniqueRouteID];
    *buf = 138412802;
    v30 = v6;
    v31 = 2112;
    v32 = v9;
    v33 = 2048;
    v34 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "didTapAdvisoriesOnCell: %@ with route: %@, index: %ld", buf, 0x20u);
  }

  v10 = [v6 route];
  v11 = v10;
  if (a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = sub_100798A3C();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v30 = 0x7FFFFFFFFFFFFFFFLL;
      v31 = 2112;
      v32 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Advisory index not found: %ld for route: %@", buf, 0x16u);
    }
  }

  else
  {
    v12 = [v10 advisoriesForAutoSharingContacts:&__NSArray0__struct scale:0.0];
    if ([v12 count]<= a4)
    {
      [(RoutePlanningOverviewViewController *)self didTapAutomaticSharingButtonForRouteOverviewCell:v6];
    }

    else
    {
      v13 = [v12 objectAtIndexedSubscript:a4];
      v14 = [v13 advisory];

      v15 = [(IOSRoutePlanningOverviewViewController *)self _maps_mapsSceneDelegate];
      v16 = [v15 appCoordinator];
      v17 = [v16 baseActionCoordinator];

      if (sub_100E186CC(v14))
      {
        v18 = [v14 advisoryItems];
        v19 = [v18 firstObject];
        v20 = [v19 cardAction];
        v21 = [v20 location];

        v22 = [GEOMapRegion alloc];
        [v21 lat];
        v24 = v23;
        [v21 lng];
        v26 = [v22 initWithLatitude:v24 longitude:v25];
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_10083B950;
        v27[3] = &unk_10162B940;
        v28 = v17;
        [v28 viewController:0 showOfflineMapRegionSelectorForRegion:v26 name:0 dismissalBlock:v27];
      }

      else
      {
        [v17 setRoutePlanningAdvisory:v14];
        [v17 presentRoutePlanningViewType:5];
      }
    }
  }
}

- (void)didTapPreviewOnCell:(id)a3
{
  v4 = a3;
  v5 = sub_100798A3C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 route];
    v7 = [v6 uniqueRouteID];
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "didTapPreviewOnCell: %@ with route: %@", &v8, 0x16u);
  }

  [(RoutePlanningOverviewViewController *)self didTapDetailsButtonForRouteOverviewCell:v4];
}

- (void)didTapPrimaryActionOnCell:(id)a3
{
  v4 = a3;
  v5 = [v4 route];
  v6 = sub_100798A3C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v5 uniqueRouteID];
    v11 = 138543618;
    v12 = v4;
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "didTapPrimaryActionOnCell: %{public}@ with route: %{public}@", &v11, 0x16u);
  }

  if (sub_10000FA08(self) == 5)
  {
    v8 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    [v8 updateCurrentRoute:v5];

    v9 = [(RoutePlanningOverviewViewController *)self routePlanningDelegate];
    [v9 presentRoutePlanningViewType:2];

    v10 = +[MKMapService sharedService];
    [v10 captureUserAction:3004 onTarget:-[RoutePlanningOverviewViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];
  }

  else
  {
    [(RoutePlanningOverviewViewController *)self didTapGoOnRoute:v5];
  }
}

- (void)didTapOnCell:(id)a3
{
  v4 = a3;
  v5 = sub_100798A3C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 route];
    v7 = [v6 uniqueRouteID];
    v10 = 138412546;
    v11 = v4;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "didTapOnCell: %@ with route: %@", &v10, 0x16u);
  }

  v8 = [(RoutePlanningOverviewViewController *)self rootController];
  v9 = [v4 route];
  [(RoutePlanningOverviewViewController *)self dataSource:v8 didSelectRowForRoute:v9];
}

- (int64_t)transportTypeForFieldsView:(id)a3
{
  v3 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v4 = [v3 transportType];

  return v4;
}

- (id)currentRefinementsForFieldsView:(id)a3
{
  v4 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v5 = [v4 platformController];
  v6 = [v5 currentSession];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [v8 currentTransportType];
    v10 = [v8 navigationType] == 2;
  }

  else
  {
    v11 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    v9 = [v11 transportType];

    v12 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    v13 = [v12 currentRoute];
    v14 = [v13 origin];
    if (v14)
    {
      v15 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
      v16 = [v15 currentRoute];
      v17 = [v16 origin];
      v10 = [v17 isCurrentLocation] ^ 1;
    }

    else
    {
      v10 = 0;
    }
  }

  if (sub_10000FA08(self) == 5 && !v9)
  {
    v18 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    v9 = [v18 desiredTransportType];
  }

  BOOL = GEOConfigGetBOOL();
  v20 = GEOConfigGetBOOL();
  if (v10)
  {
    v21 = v20 | BOOL ^ 1;
  }

  else
  {
    v21 = 1;
  }

  v22 = objc_opt_new();
  v23 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v24 = [v23 timing];
  v25 = [(IOSRoutePlanningOverviewViewController *)self timingRefinement];
  [v25 setValue:v24];

  if (MapsFeature_IsEnabled_Maps357RoutePlanning())
  {
    [NSSet setWithObjects:&off_1016E7298, &off_1016E7268, 0];
  }

  else
  {
    [NSSet setWithObjects:&off_1016E7298, 0, v76];
  }
  v26 = ;
  v27 = [NSNumber numberWithInteger:v9];
  v28 = [v26 containsObject:v27];

  if (v28)
  {
    v29 = [(IOSRoutePlanningOverviewViewController *)self timingRefinement];
    [v22 addObject:v29];
  }

  if (v9 <= 2)
  {
    if (v9)
    {
      if (v9 != 1)
      {
        if (v9 != 2)
        {
          goto LABEL_44;
        }

        v30 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
        v31 = [v30 walkPreferences];
        v32 = [(IOSRoutePlanningOverviewViewController *)self preferenceRefinement];
        [v32 setValue:v31];

        v33 = [(IOSRoutePlanningOverviewViewController *)self preferenceRefinement];
        goto LABEL_42;
      }

      v51 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
      v52 = [v51 drivePreferences];
      v53 = [(IOSRoutePlanningOverviewViewController *)self preferenceRefinement];
      [v53 setValue:v52];

      v54 = [(IOSRoutePlanningOverviewViewController *)self preferenceRefinement];
      [v22 addObject:v54];

      v55 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
      v56 = [v55 virtualGarage];
      v57 = [v56 vehicles];
      v77 = v21;
      v58 = ([v57 count] != 0) & v21;

      if (v58 == 1)
      {
        v59 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
        v60 = [v59 virtualGarage];
        v61 = [(IOSRoutePlanningOverviewViewController *)self vehicleRefinement];
        [v61 setValue:v60];

        v62 = [(IOSRoutePlanningOverviewViewController *)self vehicleRefinement];
        [v22 addObject:v62];
      }

      IsEnabled_EVRoutingEnhancements = MapsFeature_IsEnabled_EVRoutingEnhancements();
      v64 = [(IOSRoutePlanningOverviewViewController *)self vehicleRefinement];
      v65 = [v64 isOverridingToNoSelection];

      v66 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
      v67 = [v66 virtualGarage];
      v68 = [v67 selectedVehicle];
      v69 = [v68 preferredChargingNetworks];
      v70 = [v69 count];

      if (IsEnabled_EVRoutingEnhancements && (v65 & 1) == 0 && v70 && ((v77 ^ 1) & 1) == 0)
      {
        v71 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
        v72 = [v71 virtualGarage];
        v73 = [v72 selectedVehicle];
        v74 = [(IOSRoutePlanningOverviewViewController *)self preferredNetworksRefinement];
        [v74 setValue:v73];

        v33 = [(IOSRoutePlanningOverviewViewController *)self preferredNetworksRefinement];
        goto LABEL_42;
      }

      goto LABEL_44;
    }

LABEL_33:
    v41 = [(IOSRoutePlanningOverviewViewController *)self preferenceRefinement];
    [v41 setValue:0];
LABEL_43:

    goto LABEL_44;
  }

  switch(v9)
  {
    case 3:
      v42 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
      v43 = [v42 transitPreferences];

      v44 = [(IOSRoutePlanningOverviewViewController *)self preferenceRefinement];
      [v44 setValue:v43];

      v45 = [(IOSRoutePlanningOverviewViewController *)self preferenceRefinement];
      [v22 addObject:v45];

      v46 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
      v47 = [v46 displayHints];

      v48 = [RoutePlanningDisplayHintsRefinementModel requirementFieldsForDisplayHints:v47];
      v78[0] = _NSConcreteStackBlock;
      v78[1] = 3221225472;
      v78[2] = sub_10083C488;
      v78[3] = &unk_10162B918;
      v79 = v22;
      v80 = self;
      v81 = v43;
      v82 = v47;
      v49 = v47;
      v50 = v43;
      [v48 enumerateIndexesUsingBlock:v78];

      break;
    case 4:
      goto LABEL_33;
    case 5:
      if (sub_10072B16C())
      {
        v34 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
        v35 = [v34 cyclePreferences];
        v36 = [(IOSRoutePlanningOverviewViewController *)self preferenceRefinement];
        [v36 setValue:v35];

        v37 = [(IOSRoutePlanningOverviewViewController *)self preferenceRefinement];
        [v22 addObject:v37];
      }

      if (sub_10072B0F0())
      {
        v38 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
        v39 = [v38 cyclePreferences];
        v40 = [(IOSRoutePlanningOverviewViewController *)self ebikeRefinement];
        [v40 setValue:v39];

        v33 = [(IOSRoutePlanningOverviewViewController *)self ebikeRefinement];
LABEL_42:
        v41 = v33;
        [v22 addObject:v33];
        goto LABEL_43;
      }

      break;
  }

LABEL_44:

  return v22;
}

- (RoutePlanningEbikeRefinementModel)ebikeRefinement
{
  ebikeRefinement = self->_ebikeRefinement;
  if (!ebikeRefinement)
  {
    v4 = [RoutePlanningEbikeRefinementModel alloc];
    v5 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    v6 = [v5 cyclePreferences];
    v7 = [(RoutePlanningRefinementModel *)v4 initWithDelegate:self value:v6];
    v8 = self->_ebikeRefinement;
    self->_ebikeRefinement = v7;

    ebikeRefinement = self->_ebikeRefinement;
  }

  return ebikeRefinement;
}

- (RoutePlanningPreferredNetworksRefinementModel)preferredNetworksRefinement
{
  preferredNetworksRefinement = self->_preferredNetworksRefinement;
  if (!preferredNetworksRefinement)
  {
    v4 = [RoutePlanningPreferredNetworksRefinementModel alloc];
    v5 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    v6 = [v5 virtualGarage];
    v7 = [v6 selectedVehicle];
    v8 = [(RoutePlanningPreferredNetworksRefinementModel *)v4 initWithDelegate:self value:v7];
    v9 = self->_preferredNetworksRefinement;
    self->_preferredNetworksRefinement = v8;

    preferredNetworksRefinement = self->_preferredNetworksRefinement;
  }

  return preferredNetworksRefinement;
}

- (RoutePlanningVehicleRefinementModel)vehicleRefinement
{
  vehicleRefinement = self->_vehicleRefinement;
  if (!vehicleRefinement)
  {
    v4 = [RoutePlanningVehicleRefinementModel alloc];
    v5 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    v6 = [v5 virtualGarage];
    v7 = [(RoutePlanningVehicleRefinementModel *)v4 initWithDelegate:self value:v6];
    v8 = self->_vehicleRefinement;
    self->_vehicleRefinement = v7;

    vehicleRefinement = self->_vehicleRefinement;
  }

  return vehicleRefinement;
}

- (RoutePlanningTimingRefinementModel)timingRefinement
{
  timingRefinement = self->_timingRefinement;
  if (!timingRefinement)
  {
    v4 = [RoutePlanningTimingRefinementModel alloc];
    v5 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    v6 = [v5 timing];
    v7 = [(RoutePlanningRefinementModel *)v4 initWithDelegate:self value:v6];
    v8 = self->_timingRefinement;
    self->_timingRefinement = v7;

    timingRefinement = self->_timingRefinement;
  }

  return timingRefinement;
}

- (RoutePlanningPreferenceRefinementModel)preferenceRefinement
{
  preferenceRefinement = self->_preferenceRefinement;
  if (!preferenceRefinement)
  {
    v4 = [(RoutePlanningRefinementModel *)[RoutePlanningPreferenceRefinementModel alloc] initWithDelegate:self value:0];
    v5 = self->_preferenceRefinement;
    self->_preferenceRefinement = v4;

    preferenceRefinement = self->_preferenceRefinement;
  }

  return preferenceRefinement;
}

- (id)waypointsForFieldsView:(id)a3
{
  v4 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v5 = [v4 directionItemForCurrentSession];

  if (_UISolariumEnabled() && sub_10000FA08(self) == 5 && ([v5 items], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, !v7))
  {
    v10 = objc_opt_new();
    v12[0] = v10;
    v11 = objc_opt_new();
    v12[1] = v11;
    v8 = [NSArray arrayWithObjects:v12 count:2];
  }

  else
  {
    v8 = [v5 items];
  }

  return v8;
}

- (void)_refreshRouteForWaypoints:(id)a3
{
  v4 = a3;
  v5 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v6 = [v5 desiredTransportType];

  if (!v6)
  {
    v7 = [(ControlContaineeViewController *)self delegate];
    v8 = [v7 currentDirectionItem];
    v9 = [v8 editRequired:0];

    if (v9)
    {
      v10 = [(ControlContaineeViewController *)self delegate];
      v11 = [v10 currentDirectionItem];
      v6 = [v11 transportType];
    }

    else
    {
      v6 = 0;
    }
  }

  v12 = +[MKLocationManager sharedLocationManager];
  v13 = -[DirectionItem initWithItems:ignoreMapType:transportType:]([DirectionItem alloc], "initWithItems:ignoreMapType:transportType:", v4, [v12 isLocationServicesApproved] & objc_msgSend(v12, "isAuthorizedForPreciseLocation"), v6);

  v14 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v15 = [v14 drivePreferences];
  [(DirectionItem *)v13 setDrivePreferences:v15];

  v16 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v17 = [v16 transitPreferences];
  [(DirectionItem *)v13 setTransitPreferences:v17];

  v18 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v19 = [v18 cyclePreferences];
  [(DirectionItem *)v13 setCyclePreferences:v19];

  v20 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v21 = [v20 timing];
  [(DirectionItem *)v13 setTiming:v21];

  v22 = [NSMutableDictionary alloc];
  v31 = @"DirectionsSessionInitiatorKey";
  v32 = &off_1016E7280;
  v23 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  v24 = [v22 initWithDictionary:v23];

  v25 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v26 = [v25 originalHistoryEntryIdentifier];
  [v24 setObject:v26 forKeyedSubscript:@"DirectionsRouteUUIDKey"];

  v27 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v28 = [v27 automaticSharingContacts];
  [v24 setObject:v28 forKeyedSubscript:@"DirectionsPreviousContactsForTripSharing"];

  v29 = [(RoutePlanningOverviewViewController *)self routePlanningDelegate];
  v30 = [v24 copy];
  [v29 refreshRoutePlanningWithDirectionItem:v13 userInfo:v30];
}

- (void)_refreshRouteForChangeInWaypointListView:(id)a3
{
  v4 = a3;
  v5 = +[MKMapService sharedService];
  [v5 captureUserAction:6003 onTarget:-[RoutePlanningOverviewViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];

  v7 = [v4 waypoints];

  v6 = [v7 copy];
  [(IOSRoutePlanningOverviewViewController *)self _refreshRouteForWaypoints:v6];
}

- (void)replaceOriginWithCurrentLocation
{
  v3 = [(ControlContaineeViewController *)self delegate];
  v4 = [v3 currentDirectionItem];
  v5 = [v4 items];
  v6 = [v5 mutableCopy];

  if ([v6 count])
  {
    v7 = +[SearchResult currentLocationSearchResult];
    v8 = [SearchFieldItem searchFieldItemWithObject:v7];
    [v6 replaceObjectAtIndex:0 withObject:v8];

    [(IOSRoutePlanningOverviewViewController *)self _refreshRouteForWaypoints:v6];
  }

  else
  {
    v9 = sub_100798A3C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Couldn't replace currentDirectionItem's origin", v10, 2u);
    }
  }
}

- (void)didTapTimingInFieldsView:(id)a3
{
  [(RoutePlanningOverviewViewController *)self _cancelAutoLaunch];
  v4 = [(RoutePlanningOverviewViewController *)self routePlanningDelegate];
  [v4 presentRoutePlanningViewType:3];

  v5 = [(IOSRoutePlanningOverviewViewController *)self pedestrianARFeatureIntroTeachableMomentTimer];
  [v5 invalidate];
}

- (void)_didSelectWaypoint:(id)a3 atIndex:(unint64_t)a4
{
  [(RoutePlanningOverviewViewController *)self _cancelAutoLaunch];
  v6 = [(RoutePlanningOverviewViewController *)self routePlanningDelegate];
  [v6 presentRoutePlanningViewType:1];

  v7 = [(RoutePlanningOverviewViewController *)self routePlanningDelegate];
  [v7 selectWaypointSearchFieldIndex:a4 exitPlanningIfCancelTapped:0 beginEditing:0];

  v8 = [(IOSRoutePlanningOverviewViewController *)self pedestrianARFeatureIntroTeachableMomentTimer];
  [v8 invalidate];
}

- (void)waypointListView:(id)a3 didDeleteWaypointAtIndex:(unint64_t)a4
{
  v10 = a3;
  v6 = +[MKMapService sharedService];
  v7 = [(RoutePlanningOverviewViewController *)self currentUITargetForAnalytics];
  v8 = [NSNumber numberWithUnsignedInteger:a4];
  v9 = [v8 stringValue];
  [v6 captureUserAction:280 onTarget:v7 eventValue:v9];

  [(IOSRoutePlanningOverviewViewController *)self _refreshRouteForChangeInWaypointListView:v10];
}

- (void)waypointListView:(id)a3 didMoveWaypoint:(id)a4 fromIndex:(unint64_t)a5 toIndex:(unint64_t)a6
{
  v12 = a3;
  v8 = +[MKMapService sharedService];
  v9 = [(RoutePlanningOverviewViewController *)self currentUITargetForAnalytics];
  v10 = [NSNumber numberWithUnsignedInteger:a5];
  v11 = [v10 stringValue];
  [v8 captureUserAction:279 onTarget:v9 eventValue:v11];

  [(IOSRoutePlanningOverviewViewController *)self _refreshRouteForChangeInWaypointListView:v12];
}

- (void)waypointListView:(id)a3 didSelectCollapsedWaypoints:(id)a4
{
  v5 = a4;
  v6 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
  [v6 expandWaypointsIfNeeded];

  v7 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
  v8 = [v7 superview];
  v9 = [(ContaineeViewController *)self contentView];

  if (v8 != v9)
  {
    v10 = [(RoutePlanningOverviewViewController *)self collectionView];
    v11 = [v10 collectionViewLayout];
    [v11 invalidateLayout];
  }

  v12 = [(ContaineeViewController *)self cardPresentationController];
  [v12 wantsLayout:3];

  [(IOSRoutePlanningOverviewViewController *)self _updateFieldsViewSuperviewIfNeeded];
  v17 = +[MKMapService sharedService];
  v13 = [(RoutePlanningOverviewViewController *)self currentUITargetForAnalytics];
  v14 = [v5 count];

  v15 = [NSNumber numberWithUnsignedInteger:v14];
  v16 = [v15 stringValue];
  [v17 captureUserAction:31 onTarget:v13 eventValue:v16];
}

- (void)waypointListViewDidSelectAddStop:(id)a3
{
  [(IOSRoutePlanningOverviewViewController *)self _didSelectWaypoint:0 atIndex:-1];
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:6097 onTarget:-[RoutePlanningOverviewViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];
}

- (void)waypointListView:(id)a3 didSelectWaypoint:(id)a4 atIndex:(unint64_t)a5
{
  [(IOSRoutePlanningOverviewViewController *)self _didSelectWaypoint:a4 atIndex:a5];
  v10 = +[MKMapService sharedService];
  v7 = [(RoutePlanningOverviewViewController *)self currentUITargetForAnalytics];
  v8 = [NSNumber numberWithUnsignedInteger:a5];
  v9 = [v8 stringValue];
  [v10 captureUserAction:277 onTarget:v7 eventValue:v9];
}

- (void)_forceChangeOrigin
{
  v3 = [(RoutePlanningOverviewViewController *)self routePlanningDelegate];
  [v3 presentRoutePlanningViewType:1];

  v4 = [(RoutePlanningOverviewViewController *)self routePlanningDelegate];
  [v4 selectWaypointSearchFieldIndex:0 exitPlanningIfCancelTapped:1 beginEditing:0];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == &unk_10195D9D0)
  {
    objc_initWeak(&location, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10083D488;
    block[3] = &unk_101661B98;
    objc_copyWeak(&v8, &location);
    dispatch_async(&_dispatch_main_q, block);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = IOSRoutePlanningOverviewViewController;
    [(IOSRoutePlanningOverviewViewController *)&v6 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)_didTapHeaderView
{
  v3 = [(RoutePlanningOverviewViewController *)self collectionView];
  [v3 stopScrollingAndZooming];

  v4 = [(ContaineeViewController *)self cardPresentationController];
  v5 = [v4 containeeLayout];

  if (v5 <= 1)
  {
    if (v5)
    {
      if (v5 != 1)
      {
        goto LABEL_11;
      }

LABEL_8:
      v6 = [(ContaineeViewController *)self cardPresentationController];
      v7 = v6;
      v8 = 2;
      goto LABEL_9;
    }

LABEL_12:
    v10 = sub_10006D178();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315650;
      v13 = "[IOSRoutePlanningOverviewViewController _didTapHeaderView]";
      v14 = 2080;
      v15 = "RoutePlanningOverviewViewController.m";
      v16 = 1024;
      v17 = 2614;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v12, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v7 = sub_10006D178();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v11 = +[NSThread callStackSymbols];
        v12 = 138412290;
        v13 = v11;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@", &v12, 0xCu);
      }

      goto LABEL_10;
    }

    goto LABEL_11;
  }

  switch(v5)
  {
    case 5:
      goto LABEL_12;
    case 3:
      goto LABEL_8;
    case 2:
      v6 = [(ContaineeViewController *)self cardPresentationController];
      v7 = v6;
      v8 = 3;
LABEL_9:
      [v6 wantsLayout:v8];
LABEL_10:

      break;
  }

LABEL_11:
  v9 = +[MKMapService sharedService];
  [v9 captureUserAction:3 onTarget:-[RoutePlanningOverviewViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];
}

- (BOOL)shouldIgnoreTapOnView:(id)a3 headerView:(id)a4
{
  v5 = a3;
  v6 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
  v7 = [v6 waypointListView];
  v8 = [v5 isDescendantOfView:v7];

  return v8;
}

- (void)_updateWaypointsAndRoutesListForCurrentContaineeLayout:(unint64_t)a3
{
  if (a3 != 3)
  {
    v5 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
    [v5 collapseWaypointsIfNeeded];

    v6 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
    v7 = [v6 superview];
    v8 = [(ContaineeViewController *)self contentView];

    if (v7 != v8)
    {
      v9 = [(RoutePlanningOverviewViewController *)self collectionView];
      v10 = [v9 collectionViewLayout];
      [v10 invalidateLayout];
    }
  }

  [(IOSRoutePlanningOverviewViewController *)self _updateFieldsViewSuperviewIfNeeded];
  [(IOSRoutePlanningOverviewViewController *)self _updateTransitionScrollPosition];
  if (qword_10195DF00 != -1)
  {
    dispatch_once(&qword_10195DF00, &stru_1016303F0);
  }

  if (byte_10195DF08 == 1)
  {
    v11 = [(RoutePlanningOverviewViewController *)self collectionView];
    [v11 setScrollEnabled:a3 == 3];
  }
}

- (void)didChangeContainerStyle:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = IOSRoutePlanningOverviewViewController;
  [(RoutePlanningOverviewViewController *)&v5 didChangeContainerStyle:a3];
  v4 = [(ContaineeViewController *)self cardPresentationController];
  -[IOSRoutePlanningOverviewViewController _updateWaypointsAndRoutesListForCurrentContaineeLayout:](self, "_updateWaypointsAndRoutesListForCurrentContaineeLayout:", [v4 containeeLayout]);
}

- (void)willChangeContainerStyle:(unint64_t)a3
{
  v9.receiver = self;
  v9.super_class = IOSRoutePlanningOverviewViewController;
  [(RoutePlanningOverviewViewController *)&v9 willChangeContainerStyle:a3];
  v4 = [(RoutePlanningOverviewViewController *)self collectionView];
  [v4 stopScrollingAndZooming];

  v5 = [(ContaineeViewController *)self cardPresentationController];
  [v5 bottomSafeOffset];
  v7 = v6;
  v8 = [(RoutePlanningOverviewViewController *)self rootController];
  [v8 setBottomSafeOffset:v7];
}

- (void)didChangeLayout:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = IOSRoutePlanningOverviewViewController;
  [(ContaineeViewController *)&v5 didChangeLayout:?];
  [(IOSRoutePlanningOverviewViewController *)self _updateWaypointsAndRoutesListForCurrentContaineeLayout:a3];
}

- (void)willChangeLayout:(unint64_t)a3
{
  v10.receiver = self;
  v10.super_class = IOSRoutePlanningOverviewViewController;
  [(RoutePlanningOverviewViewController *)&v10 willChangeLayout:?];
  v5 = [(ContaineeViewController *)self cardPresentationController];
  v6 = [v5 containeeLayout];

  if (v6 && v6 < a3)
  {
    v7 = 1;
LABEL_7:
    v9 = +[MKMapService sharedService];
    [v9 captureUserAction:v7 onTarget:-[RoutePlanningOverviewViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];

    return;
  }

  if (a3 && v6 > a3)
  {
    v8 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
    [v8 collapseWaypointsIfNeeded];

    [(IOSRoutePlanningOverviewViewController *)self _updateFieldsViewSuperviewIfNeeded];
    v7 = 2;
    goto LABEL_7;
  }
}

- (double)heightForLayout:(unint64_t)a3
{
  v4 = -1.0;
  if (a3 > 2)
  {
    if (a3 - 3 >= 2)
    {
      if (a3 == 5)
      {
        v14 = sub_10006D178();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v17 = 136315650;
          v18 = "[IOSRoutePlanningOverviewViewController heightForLayout:]";
          v19 = 2080;
          v20 = "RoutePlanningOverviewViewController.m";
          v21 = 1024;
          v22 = 2517;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v17, 0x1Cu);
        }

        if (sub_100E03634())
        {
          v15 = sub_10006D178();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = +[NSThread callStackSymbols];
            v17 = 138412290;
            v18 = v16;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@", &v17, 0xCu);
          }
        }

        goto LABEL_3;
      }
    }

    else
    {
      v9 = [(ContaineeViewController *)self cardPresentationController];
      [v9 availableHeight];
      v4 = v10;
    }

    return v4;
  }

  if (a3 < 2)
  {
LABEL_3:
    if (sub_10000FA08(self) != 5)
    {
      v5 = [(ContaineeViewController *)self cardPresentationController];
      [v5 bottomSafeOffset];
      v7 = v6;
      [(ContaineeViewController *)self headerHeight];
      v4 = v8 + v7;
    }

    return v4;
  }

  if (a3 != 2)
  {
    return v4;
  }

  v12 = [(IOSRoutePlanningOverviewViewController *)self traitCollection];
  v13 = [v12 verticalSizeClass];

  if (v13 == 1 || sub_10000FA08(self) == 5)
  {
    return v4;
  }

  [(RoutePlanningOverviewViewController *)self _fittingHeightForMediumLayout];
  return result;
}

- (void)_updateTransitionScrollPosition
{
  v3 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
  v4 = [(RoutePlanningOverviewViewController *)self rootController];
  v5 = [v4 headerView];

  if (v3 == v5)
  {
    self->super._previousStyleForTransition = 0;
    self->super._previousLayoutForTransition = 0;
  }

  else
  {
    v6 = [(ContaineeViewController *)self cardPresentationController];
    v82 = [v6 containeeLayout];

    previousLayoutForTransition = self->super._previousLayoutForTransition;
    v8 = [(ContaineeViewController *)self cardPresentationController];
    v81 = [v8 containerStyle];

    previousStyleForTransition = self->super._previousStyleForTransition;
    [(IOSRoutePlanningOverviewViewController *)self _percentCollapsedFullToMedium];
    v11 = v10;
    v12 = [(RoutePlanningOverviewViewController *)self collectionView];
    v13 = [(IOSRoutePlanningOverviewViewController *)self sheetPresentationController];
    v14 = [v13 _isDragging];
    if (v14 != [(IOSRoutePlanningOverviewViewController *)self wasSheetDragging]|| previousLayoutForTransition != v82 || previousStyleForTransition != v81)
    {
      [(IOSRoutePlanningOverviewViewController *)self setWasSheetDragging:v14];
      v15 = previousLayoutForTransition == v82 ? v14 : 1;
      if ((v15 & 1) != 0 || previousStyleForTransition != v81)
      {
        [v12 contentOffset];
        [(IOSRoutePlanningOverviewViewController *)self setContentOffsetWhenDraggingBegan:v16];
        v17 = [v13 selectedDetentIdentifier];
        -[IOSRoutePlanningOverviewViewController setSheetExpandingFromMedium:](self, "setSheetExpandingFromMedium:", [v17 isEqualToString:UISheetPresentationControllerDetentIdentifierLarge] ^ 1);

        v18 = sub_1008319B0();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          [(IOSRoutePlanningOverviewViewController *)self contentOffsetWhenDraggingBegan];
          v20 = v19;
          if ([(IOSRoutePlanningOverviewViewController *)self sheetExpandingFromMedium])
          {
            v21 = @"YES";
          }

          else
          {
            v21 = @"NO";
          }

          *&v76 = COERCE_DOUBLE(v21);
          if (v14)
          {
            v22 = @"YES";
          }

          else
          {
            v22 = @"NO";
          }

          v78 = v13;
          v23 = COERCE_DOUBLE(v22);
          if (previousLayoutForTransition == v82)
          {
            v24 = @"NO";
          }

          else
          {
            v24 = @"YES";
          }

          v25 = v24;
          if (previousStyleForTransition == v81)
          {
            v26 = @"NO";
          }

          else
          {
            v26 = @"YES";
          }

          v27 = v26;
          *buf = 134350338;
          v84 = self;
          v85 = 2048;
          v86 = v20;
          v87 = 2112;
          v88 = *&v76;
          v89 = 2112;
          v90 = v23;
          v91 = 2112;
          v92 = v25;
          v93 = 2112;
          v94 = v27;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "[%{public}p] [Transition] Recording initial offset %#.1lf, expanding: %@ (dragging: %@, layoutChanged: %@, styleChanged: %@)", buf, 0x3Eu);

          v13 = v78;
        }
      }
    }

    if (([v12 isDragging] & 1) == 0)
    {
      [(RoutePlanningOverviewViewController *)self _rectOfRowToKeepVisible];
      MinY = CGRectGetMinY(v97);
      v29 = v11;
      v30 = -(v11 * MinY);
      [v12 contentInset];
      v32 = v31;
      v77 = v34;
      v79 = v33;
      v36 = v35;
      v37 = v12;
      v38 = vabdd_f64(v30, v32);
      v39 = [v37 traitCollection];
      [v39 displayScale];
      v40 = 1.0;
      if (v41 >= 1.0)
      {
        [v37 traitCollection];
        v42 = previousStyleForTransition;
        v44 = v43 = previousLayoutForTransition;
        [v44 displayScale];
        v40 = v45;

        previousLayoutForTransition = v43;
        previousStyleForTransition = v42;
      }

      if (v38 > 1.0 / v40)
      {
        v46 = sub_1008319B0();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349824;
          v84 = self;
          v85 = 2048;
          v86 = v32;
          v87 = 2048;
          v88 = v30;
          v89 = 2048;
          v90 = v29 * 100.0;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEBUG, "[%{public}p] [Transition] Updating contentInset.top: %#.1lf -> %#.1lf (percentCollapsed: %3.1lf)", buf, 0x2Au);
        }

        [v37 setContentInset:{v30, v79, v77, v36}];
      }

      v47 = [v13 _isGeneratingAnimations];
      v48 = v47;
      if (((v14 | v47) & 1) != 0 || previousLayoutForTransition != v82 || previousStyleForTransition != v81)
      {
        v80 = previousLayoutForTransition;
        [v37 adjustedContentInset];
        v50 = v30 - v49;
        v51 = [(IOSRoutePlanningOverviewViewController *)self sheetExpandingFromMedium];
        v52 = v50;
        if ((v51 & 1) == 0)
        {
          [(IOSRoutePlanningOverviewViewController *)self contentOffsetWhenDraggingBegan];
        }

        v53 = v52 + (v50 + MinY - v52) * v29;
        [v37 contentOffset];
        v55 = v54;
        v56 = v37;
        v57 = vabdd_f64(v53, v55);
        v58 = [v56 traitCollection];
        [v58 displayScale];
        v59 = 1.0;
        if (v60 >= 1.0)
        {
          [v56 traitCollection];
          v62 = v61 = previousStyleForTransition;
          [v62 displayScale];
          v59 = v63;

          previousStyleForTransition = v61;
        }

        previousLayoutForTransition = v80;
        if (v57 > 1.0 / v59)
        {
          v64 = sub_1008319B0();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
          {
            [v56 contentOffset];
            v66 = v65;
            if (v14)
            {
              v67 = @"YES";
            }

            else
            {
              v67 = @"NO";
            }

            v68 = COERCE_DOUBLE(v67);
            if (v48)
            {
              v69 = @"YES";
            }

            else
            {
              v69 = @"NO";
            }

            v70 = v69;
            if (v80 == v82)
            {
              v71 = @"NO";
            }

            else
            {
              v71 = @"YES";
            }

            v72 = v71;
            if (previousStyleForTransition == v81)
            {
              v73 = @"NO";
            }

            else
            {
              v73 = @"YES";
            }

            v74 = v73;
            *buf = 134350594;
            v84 = self;
            v85 = 2048;
            v86 = v66;
            v87 = 2048;
            v88 = v53;
            v89 = 2112;
            v90 = v68;
            v91 = 2112;
            v92 = v70;
            v93 = 2112;
            v94 = v72;
            v95 = 2112;
            v96 = v74;
            _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEBUG, "[%{public}p] [Transition] Updating contentOffset.y:  %#.1lf -> %#.1lf (dragging: %@, generatingAnimations: %@, layoutChanged: %@, styleChanged: %@)", buf, 0x48u);
          }

          [v56 setContentOffset:{0.0, v53}];
          previousLayoutForTransition = v80;
        }
      }

      if (previousLayoutForTransition != v82 || previousStyleForTransition != v81)
      {
        v75 = sub_1008319B0();
        if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349056;
          v84 = self;
          _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEBUG, "[%{public}p] [Transition] Storing layout/style for next transition", buf, 0xCu);
        }

        self->super._previousLayoutForTransition = v82;
        self->super._previousStyleForTransition = v81;
      }
    }
  }
}

- (double)_percentCollapsedFullToMedium
{
  v2 = [(IOSRoutePlanningOverviewViewController *)self sheetPresentationController];
  v3 = [v2 _maps_effectiveDetentValues];
  [v2 _currentPresentedViewFrame];
  Height = CGRectGetHeight(v15);
  v5 = [v2 containerView];
  [v5 safeAreaInsets];
  v7 = v6;

  v8 = 0.0;
  if ([v3 count] >= 3)
  {
    v9 = [v3 objectAtIndexedSubscript:2];
    [v9 doubleValue];
    v11 = v10;
    v12 = [v3 objectAtIndexedSubscript:1];
    [v12 doubleValue];
    v8 = fmax(fmin((Height - (v7 + v11)) / (v13 - v11), 1.0), 0.0);
  }

  return v8;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v10.receiver = self;
  v10.super_class = IOSRoutePlanningOverviewViewController;
  v7 = a4;
  [(ContaineeViewController *)&v10 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(IOSRoutePlanningOverviewViewController *)self view];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10083E5C8;
  v9[3] = &unk_101661710;
  v9[4] = self;
  [v7 animateAlongsideTransitionInView:v8 animation:&stru_10162B8F0 completion:v9];
}

- (void)viewWillLayoutSubviews
{
  v9.receiver = self;
  v9.super_class = IOSRoutePlanningOverviewViewController;
  [(IOSRoutePlanningOverviewViewController *)&v9 viewWillLayoutSubviews];
  if (!self->super._previousLayoutForTransition)
  {
    v5 = [(ContaineeViewController *)self cardPresentationController];

    if (v5)
    {
      v6 = [(ContaineeViewController *)self cardPresentationController];
      self->super._previousLayoutForTransition = [v6 containeeLayout];

      if (qword_10195DF00 != -1)
      {
        dispatch_once(&qword_10195DF00, &stru_1016303F0);
      }

      if (byte_10195DF08 == 1)
      {
        v7 = self->super._previousLayoutForTransition == 3;
        v8 = [(RoutePlanningOverviewViewController *)self collectionView];
        [v8 setScrollEnabled:v7];
      }
    }
  }

  if (!self->super._previousStyleForTransition)
  {
    v3 = [(ContaineeViewController *)self cardPresentationController];

    if (v3)
    {
      v4 = [(ContaineeViewController *)self cardPresentationController];
      self->super._previousStyleForTransition = [v4 containerStyle];
    }
  }
}

- (void)viewSafeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = IOSRoutePlanningOverviewViewController;
  [(RoutePlanningOverviewViewController *)&v3 viewSafeAreaInsetsDidChange];
  [(IOSRoutePlanningOverviewViewController *)self _refreshContentInset];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = IOSRoutePlanningOverviewViewController;
  [(RoutePlanningOverviewViewController *)&v4 viewDidDisappear:a3];
  self->super._previousLayoutForTransition = 0;
  self->super._previousStyleForTransition = 0;
  [(RouteOverviewFieldsView *)self->_fieldsView reset];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = IOSRoutePlanningOverviewViewController;
  [(RoutePlanningOverviewViewController *)&v6 viewWillAppear:a3];
  v4 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
  [v4 setNeedsUpdateRefinements];

  v5 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
  [v5 setNeedsUpdateWaypointsList];

  [(IOSRoutePlanningOverviewViewController *)self _updateFieldsViewSuperviewIfNeeded];
  [(IOSRoutePlanningOverviewViewController *)self _refreshContentInset];
}

- (BOOL)accessibilityScroll:(int64_t)a3
{
  v5 = [(RoutePlanningOverviewViewController *)self isDisplayingSingleTrip];
  if (a3 == 4 && (v5 & 1) != 0 || (v6 = [(RoutePlanningOverviewViewController *)self isDisplayingSingleTrip], result = 0, a3 == 3) && (v6 & 1) == 0)
  {
    [(IOSRoutePlanningOverviewViewController *)self _didTapHeaderView];
    return 1;
  }

  return result;
}

- (void)_captureFamiliarRoutesIfAvailable:(id)a3 routeCollection:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 transportType] == 1)
  {
    v7 = [v6 routes];
    v8 = [v7 count];

    if (v8)
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v15 = 0;
      v9 = [v6 routes];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10083E9F8;
      v11[3] = &unk_1016311B8;
      v11[4] = &v12;
      [v9 enumerateObjectsUsingBlock:v11];

      if (*(v13 + 24) == 1)
      {
        v10 = +[MKMapService sharedService];
        [v10 captureUserAction:526 onTarget:301 eventValue:0];
      }

      _Block_object_dispose(&v12, 8);
    }
  }
}

- (CGRect)_loadingAndErrorViewFrame
{
  v3 = [(ContaineeViewController *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = [(ContaineeViewController *)self contentView];
  v11 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
  [v11 frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
  v21 = [v20 superview];
  [v10 convertRect:v21 fromView:{v13, v15, v17, v19}];
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
  [v28 estimatedHeight];
  v30 = v29;

  v43.origin.x = v23;
  v43.origin.y = v25;
  v43.size.width = v27;
  v43.size.height = v30;
  v31 = CGRectGetMaxY(v43) + 8.0;
  v44.origin.x = v5;
  v44.origin.y = v31;
  v44.size.width = v7;
  v44.size.height = v9;
  Height = CGRectGetHeight(v44);
  v45.origin.x = v5;
  v45.origin.y = v31;
  v45.size.width = v7;
  v45.size.height = v9;
  v33 = Height - CGRectGetMinY(v45);
  p_errorModeView = &self->super._errorModeView;
  v35 = [(ErrorModeView *)self->super._errorModeView superview];

  if (v35 || (p_errorModeView = &self->super._loadingModeView, [(LoadingModeView *)self->super._loadingModeView superview], v36 = objc_claimAutoreleasedReturnValue(), v36, v36))
  {
    [*p_errorModeView fittingHeight];
    v38 = v37;
  }

  else
  {
    v38 = 0.0;
  }

  v46.origin.x = v5;
  v46.origin.y = v31;
  v46.size.width = v7;
  v46.size.height = v33;
  if (v38 <= CGRectGetHeight(v46))
  {
    v47.origin.x = v5;
    v47.origin.y = v31;
    v47.size.width = v7;
    v47.size.height = v33;
    v38 = CGRectGetHeight(v47);
  }

  v39 = v5;
  v40 = v31;
  v41 = v7;
  v42 = v38;
  result.size.height = v42;
  result.size.width = v41;
  result.origin.y = v40;
  result.origin.x = v39;
  return result;
}

- (double)_cardHeightMinusTableViewHeight
{
  v9.receiver = self;
  v9.super_class = IOSRoutePlanningOverviewViewController;
  [(RoutePlanningOverviewViewController *)&v9 _cardHeightMinusTableViewHeight];
  v4 = v3;
  v5 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
  [v5 estimatedHeight];
  v7 = v6 + v4;

  return v7;
}

- (void)_createStyleSpecificConstraintsIfNeeded
{
  v3 = [(IOSRoutePlanningOverviewViewController *)self collectionViewTopToFieldsViewConstraint];
  if (!v3 || (v4 = v3, [(IOSRoutePlanningOverviewViewController *)self collectionViewTopToContentViewConstraint], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, !v5))
  {
    v6 = [(RoutePlanningOverviewViewController *)self collectionView];
    v7 = [v6 topAnchor];
    v8 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
    v9 = [v8 bottomAnchor];
    v10 = [v7 constraintEqualToAnchor:v9 constant:16.0];
    [(IOSRoutePlanningOverviewViewController *)self setCollectionViewTopToFieldsViewConstraint:v10];

    v11 = [(RoutePlanningOverviewViewController *)self transportTypePicker];
    v12 = [v11 bottomAnchor];
    v13 = v12;
    if (v12)
    {
      v20 = v12;
    }

    else
    {
      v14 = [(ContaineeViewController *)self contentView];
      v20 = [v14 topAnchor];
    }

    v15 = [(RoutePlanningOverviewViewController *)self transportTypePicker];
    if (v15)
    {
      v16 = 8.0;
    }

    else
    {
      v16 = 0.0;
    }

    v17 = [(RoutePlanningOverviewViewController *)self collectionView];
    v18 = [v17 topAnchor];
    v19 = [v18 constraintEqualToAnchor:v20 constant:v16];
    [(IOSRoutePlanningOverviewViewController *)self setCollectionViewTopToContentViewConstraint:v19];
  }
}

- (void)_updateFieldsViewSuperviewIfNeeded
{
  v3 = [(ContaineeViewController *)self cardPresentationController];
  v4 = [v3 containerStyle];
  if (v4 > 7 || ((1 << v4) & 0xA3) == 0)
  {
    v7 = 1;
  }

  else
  {
    v6 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
    v7 = [v6 hasExpandedWaypoints];
  }

  v8 = [(RoutePlanningOverviewViewController *)self collectionView];
  v9 = [v8 dataSource];

  v10 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
  v11 = v10;
  if (v7)
  {
    v12 = [v9 headerView];

    if (v11 != v12)
    {
      [(IOSRoutePlanningOverviewViewController *)self _createStyleSpecificConstraintsIfNeeded];
      v13 = [(IOSRoutePlanningOverviewViewController *)self collectionViewTopToFieldsViewConstraint];
      [v13 setActive:0];

      v14 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
      [v9 setHeaderView:v14];

      [(RoutePlanningOverviewViewController *)self _setupAdvisoryFooterView];
      v15 = [(IOSRoutePlanningOverviewViewController *)self collectionViewTopToContentViewConstraint];
      [v15 setActive:1];

      v16 = [(RoutePlanningOverviewViewController *)self collectionView];
      [v16 contentInset];
      v18 = v17;
      v20 = v19;
      v22 = v21;

      v23 = [(RoutePlanningOverviewViewController *)self collectionView];
      [v23 setContentInset:{0.0, v18, v20, v22}];

      v24 = [(IOSRoutePlanningOverviewViewController *)self view];
      [v24 setNeedsLayout];
    }
  }

  else
  {
    v25 = [v10 superview];
    v26 = [(ContaineeViewController *)self contentView];

    if (v25 != v26)
    {
      [(IOSRoutePlanningOverviewViewController *)self _createStyleSpecificConstraintsIfNeeded];
      v27 = [(IOSRoutePlanningOverviewViewController *)self collectionViewTopToContentViewConstraint];
      [v27 setActive:0];

      [v9 setHeaderView:0];
      [(RoutePlanningOverviewViewController *)self _setupAdvisoryFooterView];
      v28 = [(ContaineeViewController *)self contentView];
      v29 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
      [v28 addSubview:v29];

      v30 = [(RoutePlanningOverviewViewController *)self transportTypePicker];
      v31 = [v30 bottomAnchor];
      v32 = v31;
      v54 = v9;
      if (v31)
      {
        v33 = v31;
      }

      else
      {
        v34 = [(ContaineeViewController *)self contentView];
        v33 = [v34 topAnchor];
      }

      v50 = v33;

      v35 = [(RoutePlanningOverviewViewController *)self transportTypePicker];
      if (v35)
      {
        v36 = 8.0;
      }

      else
      {
        v36 = 0.0;
      }

      v53 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
      v52 = [v53 topAnchor];
      v51 = [v52 constraintEqualToAnchor:v33 constant:v36];
      v55[0] = v51;
      v49 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
      v48 = [v49 leadingAnchor];
      v37 = [(ContaineeViewController *)self contentView];
      v38 = [v37 leadingAnchor];
      v39 = [v48 constraintEqualToAnchor:v38];
      v55[1] = v39;
      v40 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
      v41 = [v40 trailingAnchor];
      v42 = [(ContaineeViewController *)self contentView];
      v43 = [v42 trailingAnchor];
      v44 = [v41 constraintEqualToAnchor:v43];
      v55[2] = v44;
      v45 = [NSArray arrayWithObjects:v55 count:3];
      [NSLayoutConstraint activateConstraints:v45];

      v46 = [(IOSRoutePlanningOverviewViewController *)self collectionViewTopToFieldsViewConstraint];
      [v46 setActive:1];

      v47 = [(IOSRoutePlanningOverviewViewController *)self view];
      [v47 setNeedsLayout];

      v9 = v54;
    }
  }
}

- (id)_initialConstraints
{
  v46.receiver = self;
  v46.super_class = IOSRoutePlanningOverviewViewController;
  v45 = [(RoutePlanningOverviewViewController *)&v46 _initialConstraints];
  v3 = [(ContaineeViewController *)self contentView];
  v4 = [v3 topAnchor];
  v5 = [(RoutePlanningOverviewViewController *)self containerHeaderView];
  v6 = [v5 bottomAnchor];
  v7 = [v4 constraintGreaterThanOrEqualToAnchor:v6 constant:8.0];
  [v45 addObject:v7];

  v43 = [(RoutePlanningOverviewViewController *)self collectionView];
  v39 = [v43 leadingAnchor];
  v41 = [(ContaineeViewController *)self contentView];
  v8 = [v41 leadingAnchor];
  v9 = [v39 constraintEqualToAnchor:v8];
  v48[0] = v9;
  v10 = [(RoutePlanningOverviewViewController *)self collectionView];
  v11 = [v10 trailingAnchor];
  v12 = [(ContaineeViewController *)self contentView];
  v13 = [v12 trailingAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  v48[1] = v14;
  v15 = [(RoutePlanningOverviewViewController *)self collectionViewToBottomConstraint];
  v48[2] = v15;
  v16 = [NSArray arrayWithObjects:v48 count:3];
  [v45 addObjectsFromArray:v16];

  v17 = [(RoutePlanningOverviewViewController *)self transportTypePicker];

  if (v17)
  {
    [(RoutePlanningOverviewViewController *)self transportTypePickerHeight];
    v19 = v18;
    +[_TtC4Maps23MapsDesignConstantsShim contentHorizontalPadding];
    v21 = v20;
    v44 = [(RoutePlanningOverviewViewController *)self transportTypePicker];
    v42 = [v44 heightAnchor];
    v40 = [v42 constraintEqualToConstant:v19];
    v47[0] = v40;
    v38 = [(RoutePlanningOverviewViewController *)self transportTypePicker];
    v36 = [v38 topAnchor];
    v37 = [(ContaineeViewController *)self contentView];
    v35 = [v37 topAnchor];
    v34 = [v36 constraintEqualToAnchor:v35];
    v47[1] = v34;
    v33 = [(RoutePlanningOverviewViewController *)self transportTypePicker];
    v22 = [v33 leadingAnchor];
    v23 = [(ContaineeViewController *)self contentView];
    v24 = [v23 leadingAnchor];
    v25 = [v22 constraintEqualToAnchor:v24 constant:v21];
    v47[2] = v25;
    v26 = [(ContaineeViewController *)self contentView];
    v27 = [v26 trailingAnchor];
    v28 = [(RoutePlanningOverviewViewController *)self transportTypePicker];
    v29 = [v28 trailingAnchor];
    v30 = [v27 constraintEqualToAnchor:v29 constant:v21];
    v47[3] = v30;
    v31 = [NSArray arrayWithObjects:v47 count:4];
    [v45 addObjectsFromArray:v31];
  }

  return v45;
}

- (void)_setupSubviews
{
  v17.receiver = self;
  v17.super_class = IOSRoutePlanningOverviewViewController;
  [(RoutePlanningOverviewViewController *)&v17 _setupSubviews];
  v3 = [(RoutePlanningOverviewViewController *)self collectionView];
  [v3 setSelectionFollowsFocus:1];

  v4 = [(RoutePlanningOverviewViewController *)self collectionView];
  objc_initWeak(&location, self);
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_10083F940;
  v14 = &unk_101661B98;
  objc_copyWeak(&v15, &location);
  [v4 setLayoutHandler:&v11];
  [(IOSRoutePlanningOverviewViewController *)self _refreshContentInset:v11];
  v5 = [(RoutePlanningOverviewViewController *)self transportTypePicker];

  if (v5)
  {
    v6 = [(ContaineeViewController *)self contentView];
    v7 = [(RoutePlanningOverviewViewController *)self transportTypePicker];
    [v6 addSubview:v7];
  }

  v8 = [[RouteOverviewFieldsView alloc] initWithDelegate:self waypointInfoProvider:self];
  [(IOSRoutePlanningOverviewViewController *)self setFieldsView:v8];

  v9 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v10 = [(RoutePlanningOverviewViewController *)self containerHeaderView];
  [v10 setAccessoryView:0];

  [(IOSRoutePlanningOverviewViewController *)self _updateFieldsViewSuperviewIfNeeded];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)didResignCurrent
{
  v3.receiver = self;
  v3.super_class = IOSRoutePlanningOverviewViewController;
  [(ContaineeViewController *)&v3 didResignCurrent];
  self->super._restoreRoutePlanningAfterRouteCreation = 0;
  [(IOSRoutePlanningOverviewViewController *)self setPedestrianARFeatureIntroTeachableMomentTimer:0];
}

- (int64_t)observedRoutePlanningData
{
  v3.receiver = self;
  v3.super_class = IOSRoutePlanningOverviewViewController;
  return [(RoutePlanningOverviewViewController *)&v3 observedRoutePlanningData]| 0x33180;
}

- (void)dealloc
{
  v3 = +[UIApplication sharedMapsDelegate];
  v4 = NSStringFromSelector("currentInterruptionKind");
  [v3 removeObserver:self forKeyPath:v4 context:&unk_10195D9D0];

  v5.receiver = self;
  v5.super_class = IOSRoutePlanningOverviewViewController;
  [(RoutePlanningOverviewViewController *)&v5 dealloc];
}

- (IOSRoutePlanningOverviewViewController)initWithDataCoordinator:(id)a3
{
  v7.receiver = self;
  v7.super_class = IOSRoutePlanningOverviewViewController;
  v3 = [(RoutePlanningOverviewViewController *)&v7 initWithDataCoordinator:a3];
  if (v3)
  {
    v4 = +[UIApplication sharedMapsDelegate];
    v5 = NSStringFromSelector("currentInterruptionKind");
    [v4 addObserver:v3 forKeyPath:v5 options:1 context:&unk_10195D9D0];
  }

  return v3;
}

@end