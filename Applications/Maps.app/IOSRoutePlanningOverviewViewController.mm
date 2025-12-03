@interface IOSRoutePlanningOverviewViewController
- (BOOL)_shouldShowPedestrianARTeachableMomentCard;
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (BOOL)shouldIgnoreTapOnView:(id)view headerView:(id)headerView;
- (CGRect)_loadingAndErrorViewFrame;
- (IOSRoutePlanningOverviewViewController)initWithDataCoordinator:(id)coordinator;
- (PedestrianARSessionStateManager)pedestrianARSessionStateManager;
- (RoutePlanningEbikeRefinementModel)ebikeRefinement;
- (RoutePlanningPreferenceRefinementModel)preferenceRefinement;
- (RoutePlanningPreferredNetworksRefinementModel)preferredNetworksRefinement;
- (RoutePlanningTimingRefinementModel)timingRefinement;
- (RoutePlanningVehicleRefinementModel)vehicleRefinement;
- (double)_cardHeightMinusTableViewHeight;
- (double)_extraBottomPadding;
- (double)_percentCollapsedFullToMedium;
- (double)heightForLayout:(unint64_t)layout;
- (double)widthForCell:(id)cell;
- (id)_initialConstraints;
- (id)currentRefinementsForFieldsView:(id)view;
- (id)waypointsForFieldsView:(id)view;
- (int64_t)observedRoutePlanningData;
- (int64_t)transportTypeForFieldsView:(id)view;
- (void)_captureFamiliarRoutesIfAvailable:(id)available routeCollection:(id)collection;
- (void)_createStyleSpecificConstraintsIfNeeded;
- (void)_didSelectWaypoint:(id)waypoint atIndex:(unint64_t)index;
- (void)_didTapHeaderView;
- (void)_forceChangeOrigin;
- (void)_refreshContentInset;
- (void)_refreshRouteForChangeInWaypointListView:(id)view;
- (void)_refreshRouteForWaypoints:(id)waypoints;
- (void)_refreshSelectedVehicleDisplay;
- (void)_refreshTimingDisplay;
- (void)_setupSubviews;
- (void)_showPedestrianARFeatureIntroTeachableMomentCardIfNecessary;
- (void)_showPedestrianARRaiseToEnterTeachableMomentCardIfNecessary;
- (void)_updateFieldsViewSuperviewIfNeeded;
- (void)_updateTransitionScrollPosition;
- (void)_updateWaypointsAndRoutesListForCurrentContaineeLayout:(unint64_t)layout;
- (void)dealloc;
- (void)didChangeContainerStyle:(unint64_t)style;
- (void)didChangeLayout:(unint64_t)layout;
- (void)didResignCurrent;
- (void)didTapAdvisoriesOnCell:(id)cell atIndex:(int64_t)index;
- (void)didTapOnCell:(id)cell;
- (void)didTapPreviewOnCell:(id)cell;
- (void)didTapPrimaryActionOnCell:(id)cell;
- (void)didTapTimingInFieldsView:(id)view;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)replaceOriginWithCurrentLocation;
- (void)routePlanningDataCoordinator:(id)coordinator didUpdateCyclePreferences:(id)preferences;
- (void)routePlanningDataCoordinator:(id)coordinator didUpdateDrivePreferences:(id)preferences;
- (void)routePlanningDataCoordinator:(id)coordinator didUpdateOriginName:(id)name destinationName:(id)destinationName;
- (void)routePlanningDataCoordinator:(id)coordinator didUpdateRequestState:(int64_t)state;
- (void)routePlanningDataCoordinator:(id)coordinator didUpdateResolvedWaypointSet:(id)set;
- (void)routePlanningDataCoordinator:(id)coordinator didUpdateRouteCollection:(id)collection;
- (void)routePlanningDataCoordinator:(id)coordinator didUpdateTransitPreferences:(id)preferences;
- (void)routePlanningDataCoordinator:(id)coordinator didUpdateTransportType:(int64_t)type;
- (void)routePlanningDataCoordinator:(id)coordinator didUpdateVirtualGarage:(id)garage;
- (void)routePlanningDataCoordinator:(id)coordinator didUpdateWalkPreferences:(id)preferences;
- (void)selectedRefinementModel:(id)model identifier:(id)identifier subIdentifier:(id)subIdentifier;
- (void)updatedRefinementModel:(id)model;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)waypointListView:(id)view didDeleteWaypointAtIndex:(unint64_t)index;
- (void)waypointListView:(id)view didMoveWaypoint:(id)waypoint fromIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
- (void)waypointListView:(id)view didSelectCollapsedWaypoints:(id)waypoints;
- (void)waypointListView:(id)view didSelectWaypoint:(id)waypoint atIndex:(unint64_t)index;
- (void)waypointListViewDidSelectAddStop:(id)stop;
- (void)willChangeContainerStyle:(unint64_t)style;
- (void)willChangeLayout:(unint64_t)layout;
@end

@implementation IOSRoutePlanningOverviewViewController

- (void)_showPedestrianARRaiseToEnterTeachableMomentCardIfNecessary
{
  if ([(IOSRoutePlanningOverviewViewController *)self _shouldShowPedestrianARTeachableMomentCard])
  {
    if (+[PedestrianARRaiseToEnterTeachableMomentContaineeViewController hasShownTeachableMoment])
    {
      delegate = sub_100798A3C();
      if (os_log_type_enabled(delegate, OS_LOG_TYPE_INFO))
      {
        v19 = 0;
        v4 = "Not showing Pedestrian AR raise to enter teachable moment card because it has already been shown before";
        v5 = &v19;
LABEL_7:
        _os_log_impl(&_mh_execute_header, delegate, OS_LOG_TYPE_INFO, v4, v5, 2u);
      }
    }

    else
    {
      v6 = +[PedestrianARSessionUsageTracker sharedInstance];
      dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
      routeCollection = [dataCoordinator routeCollection];
      currentRoute = [routeCollection currentRoute];
      uniqueRouteID = [currentRoute uniqueRouteID];
      uUIDString = [uniqueRouteID UUIDString];
      v12 = [v6 hasAREverLocalizedForRoute:uUIDString];

      if ((v12 & 1) == 0)
      {
        delegate = sub_100798A3C();
        if (!os_log_type_enabled(delegate, OS_LOG_TYPE_INFO))
        {
          goto LABEL_8;
        }

        v18 = 0;
        v4 = "Not showing Pedestrian AR raise to enter teachable moment card because the user hasn't localized on the current route yet";
        v5 = &v18;
        goto LABEL_7;
      }

      v13 = +[PedestrianARSessionUsageTracker sharedInstance];
      hasARElementRendered = [v13 hasARElementRendered];

      delegate = sub_100798A3C();
      v15 = os_log_type_enabled(delegate, OS_LOG_TYPE_INFO);
      if ((hasARElementRendered & 1) == 0)
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
        _os_log_impl(&_mh_execute_header, delegate, OS_LOG_TYPE_INFO, "Showing the Pedestrian AR raise to enter teachable moment card", v16, 2u);
      }

      delegate = [(ControlContaineeViewController *)self delegate];
      [delegate showPedestrianARRaiseToEnterTeachableMomentCard];
    }
  }

  else
  {
    delegate = sub_100798A3C();
    if (os_log_type_enabled(delegate, OS_LOG_TYPE_INFO))
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

  pedestrianARFeatureIntroTeachableMomentTimer = [(IOSRoutePlanningOverviewViewController *)self pedestrianARFeatureIntroTeachableMomentTimer];

  if (pedestrianARFeatureIntroTeachableMomentTimer)
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
  pedestrianARSessionStateManager = [(IOSRoutePlanningOverviewViewController *)self pedestrianARSessionStateManager];

  if (pedestrianARSessionStateManager)
  {
    v4 = +[UIApplication sharedMapsDelegate];
    currentInterruptionKind = [v4 currentInterruptionKind];

    if (currentInterruptionKind)
    {
      v6 = sub_100798A3C();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        if ((currentInterruptionKind - 2) > 0x15)
        {
          v7 = @"kMapsInterruptionDirectionsSafetyWarning";
        }

        else
        {
          v7 = *(&off_10162B9F0 + (currentInterruptionKind - 2));
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

    dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    platformController = [dataCoordinator platformController];
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

    v6 = v14;

    if (v6)
    {
      configuration = [v6 configuration];
      shouldAutoLaunchNavigation = [configuration shouldAutoLaunchNavigation];

      if (shouldAutoLaunchNavigation)
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
        cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
        containerStyle = [cardPresentationController containerStyle];

        if ((containerStyle & 0xFFFFFFFFFFFFFFFDLL) == 4)
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
          pedestrianARSessionStateManager2 = [(IOSRoutePlanningOverviewViewController *)self pedestrianARSessionStateManager];
          shouldShowPedestrianAR = [pedestrianARSessionStateManager2 shouldShowPedestrianAR];

          v17 = sub_100798A3C();
          v24 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
          if (shouldShowPedestrianAR)
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
  dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  platformController = [dataCoordinator platformController];
  pedestrianARSessionStateManager = [platformController pedestrianARSessionStateManager];

  return pedestrianARSessionStateManager;
}

- (void)_refreshSelectedVehicleDisplay
{
  fieldsView = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
  refinementBarView = [fieldsView refinementBarView];
  [refinementBarView reloadRefinementBar];
}

- (double)_extraBottomPadding
{
  view = [(IOSRoutePlanningOverviewViewController *)self view];
  [view safeAreaInsets];
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
  collectionView = [(RoutePlanningOverviewViewController *)self collectionView];
  [collectionView contentInset];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  [(IOSRoutePlanningOverviewViewController *)self _extraBottomPadding];
  v11 = v10;
  dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  if ([dataCoordinator transportType] == 4)
  {
    v11 = 0.0;
  }

  collectionView2 = [(RoutePlanningOverviewViewController *)self collectionView];
  [collectionView2 setContentInset:{v5, v7, v11, v9}];
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
  dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [dataCoordinator transportType]);
  if ([v3 containsObject:v5])
  {

LABEL_10:
    dataCoordinator2 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    timing = [dataCoordinator2 timing];

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
  dataCoordinator3 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [dataCoordinator3 desiredTransportType]);
  v9 = [v6 containsObject:v8];

  if (v9)
  {
    goto LABEL_10;
  }

  timing = 0;
LABEL_12:
  fieldsView = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
  [fieldsView setNeedsUpdateRefinements];

  v13 = sub_100798A3C();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v17 = timing;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Updating timing to: %@", buf, 0xCu);
  }
}

- (void)routePlanningDataCoordinator:(id)coordinator didUpdateCyclePreferences:(id)preferences
{
  preferencesCopy = preferences;
  preferenceRefinement = [(IOSRoutePlanningOverviewViewController *)self preferenceRefinement];
  value = [preferenceRefinement value];
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
      v16 = preferencesCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Redrawing refinements for updated %@: %@", &v13, 0x16u);
    }

    fieldsView = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
    [fieldsView setNeedsUpdateRefinements];
  }
}

- (void)routePlanningDataCoordinator:(id)coordinator didUpdateTransitPreferences:(id)preferences
{
  preferencesCopy = preferences;
  preferenceRefinement = [(IOSRoutePlanningOverviewViewController *)self preferenceRefinement];
  value = [preferenceRefinement value];
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
      v16 = preferencesCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Redrawing refinements for updated %@: %@", &v13, 0x16u);
    }

    fieldsView = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
    [fieldsView setNeedsUpdateRefinements];
  }
}

- (void)routePlanningDataCoordinator:(id)coordinator didUpdateWalkPreferences:(id)preferences
{
  preferencesCopy = preferences;
  preferenceRefinement = [(IOSRoutePlanningOverviewViewController *)self preferenceRefinement];
  value = [preferenceRefinement value];
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
      v16 = preferencesCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Redrawing refinements for updated %@: %@", &v13, 0x16u);
    }

    fieldsView = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
    [fieldsView setNeedsUpdateRefinements];
  }
}

- (void)routePlanningDataCoordinator:(id)coordinator didUpdateDrivePreferences:(id)preferences
{
  preferencesCopy = preferences;
  preferenceRefinement = [(IOSRoutePlanningOverviewViewController *)self preferenceRefinement];
  value = [preferenceRefinement value];
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
      v16 = preferencesCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Redrawing refinements for updated %@: %@", &v13, 0x16u);
    }

    fieldsView = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
    [fieldsView setNeedsUpdateRefinements];
  }
}

- (void)routePlanningDataCoordinator:(id)coordinator didUpdateVirtualGarage:(id)garage
{
  if ([(RoutePlanningOverviewViewController *)self shouldRefreshRoutePlanningWithCurrentGarage:garage previousGarage:self->super._virtualGarageAtLastRouteRequest])
  {
    v5 = sub_100798A3C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Redrawing refinements for updated virtual garage", v8, 2u);
    }

    fieldsView = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
    [fieldsView setNeedsUpdateRefinements];

    fieldsView2 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
    [fieldsView2 setNeedsUpdateWaypointsList];
  }
}

- (void)routePlanningDataCoordinator:(id)coordinator didUpdateRouteCollection:(id)collection
{
  collectionCopy = collection;
  coordinatorCopy = coordinator;
  [(IOSRoutePlanningOverviewViewController *)self _captureFamiliarRoutesIfAvailable:coordinatorCopy routeCollection:collectionCopy];
  v13.receiver = self;
  v13.super_class = IOSRoutePlanningOverviewViewController;
  [(RoutePlanningOverviewViewController *)&v13 routePlanningDataCoordinator:coordinatorCopy didUpdateRouteCollection:collectionCopy];

  fieldsView = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
  [fieldsView setNeedsUpdateWaypointsList];

  fieldsView2 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
  [fieldsView2 setNeedsUpdateRefinements];

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

- (void)routePlanningDataCoordinator:(id)coordinator didUpdateTransportType:(int64_t)type
{
  v10.receiver = self;
  v10.super_class = IOSRoutePlanningOverviewViewController;
  [(RoutePlanningOverviewViewController *)&v10 routePlanningDataCoordinator:coordinator didUpdateTransportType:type];
  fieldsView = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
  [fieldsView updateRefinements];

  fieldsView2 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
  [fieldsView2 updateWaypointsList];

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

- (void)routePlanningDataCoordinator:(id)coordinator didUpdateOriginName:(id)name destinationName:(id)destinationName
{
  v7.receiver = self;
  v7.super_class = IOSRoutePlanningOverviewViewController;
  [(RoutePlanningOverviewViewController *)&v7 routePlanningDataCoordinator:coordinator didUpdateOriginName:name destinationName:destinationName];
  fieldsView = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
  [fieldsView setNeedsUpdateWaypointsList];
}

- (void)routePlanningDataCoordinator:(id)coordinator didUpdateResolvedWaypointSet:(id)set
{
  v9.receiver = self;
  v9.super_class = IOSRoutePlanningOverviewViewController;
  setCopy = set;
  [(RoutePlanningOverviewViewController *)&v9 routePlanningDataCoordinator:coordinator didUpdateResolvedWaypointSet:setCopy];
  v7 = [(RoutePlanningOverviewViewController *)self routePlanningDelegate:v9.receiver];
  [v7 routePlanningUpdatedWaypoints:setCopy];

  fieldsView = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
  [fieldsView setNeedsUpdateRefinements];
}

- (void)routePlanningDataCoordinator:(id)coordinator didUpdateRequestState:(int64_t)state
{
  v6.receiver = self;
  v6.super_class = IOSRoutePlanningOverviewViewController;
  [(RoutePlanningOverviewViewController *)&v6 routePlanningDataCoordinator:coordinator didUpdateRequestState:state];
  fieldsView = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
  [fieldsView setNeedsUpdateRefinements];
}

- (void)updatedRefinementModel:(id)model
{
  modelCopy = model;
  lastUpdateUsageAction = [modelCopy lastUpdateUsageAction];
  if (lastUpdateUsageAction)
  {
    v5 = lastUpdateUsageAction;
    v6 = +[MKMapService sharedService];
    [v6 captureUserAction:v5 onTarget:-[RoutePlanningOverviewViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];
  }

  [(RoutePlanningOverviewViewController *)self _cancelAutoLaunch];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selectedVehicle = [modelCopy selectedVehicle];
    v8 = +[VGVirtualGarageService sharedService];
    [v8 virtualGarageSelectVehicle:selectedVehicle];

    fieldsView = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
    [fieldsView setNeedsUpdateRefinements];
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v11 = modelCopy;
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_8;
    }

    selectedVehicle = [modelCopy value];
    fieldsView = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    [fieldsView updateTransitPreferences:selectedVehicle];
  }

  v11 = modelCopy;
LABEL_8:
}

- (void)selectedRefinementModel:(id)model identifier:(id)identifier subIdentifier:(id)subIdentifier
{
  modelCopy = model;
  subIdentifierCopy = subIdentifier;
  menuPressUsageAction = [modelCopy menuPressUsageAction];
  if (menuPressUsageAction)
  {
    v9 = menuPressUsageAction;
    v10 = +[MKMapService sharedService];
    [v10 captureUserAction:v9 onTarget:-[RoutePlanningOverviewViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];
  }

  buttonPressUsageAction = [modelCopy buttonPressUsageAction];
  if (buttonPressUsageAction)
  {
    v12 = buttonPressUsageAction;
    v13 = +[MKMapService sharedService];
    [v13 captureUserAction:v12 onTarget:-[RoutePlanningOverviewViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];
  }

  [(RoutePlanningOverviewViewController *)self _cancelAutoLaunch];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    fieldsView = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
    [(IOSRoutePlanningOverviewViewController *)self didTapTimingInFieldsView:fieldsView];
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
    [modelCopy selectVehicleWithIdentifier:subIdentifierCopy];
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    fieldsView = modelCopy;
    refinementField = [fieldsView refinementField];
    if (refinementField == 2)
    {
      preferences2 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [subIdentifierCopy intValue]);
      preferences = [fieldsView preferences];
      [preferences setSurchargeOption:preferences2];
    }

    else if (refinementField == 1)
    {
      v23 = [subIdentifierCopy isEqual:@"EnableIC"];
      preferences2 = [fieldsView preferences];
      [preferences2 setShowICFares:v23];
    }

    else
    {
      if (refinementField)
      {
LABEL_36:
        [(IOSRoutePlanningOverviewViewController *)self updatedRefinementModel:fieldsView];
        goto LABEL_7;
      }

      v16 = subIdentifierCopy;
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

      preferences2 = [fieldsView preferences];
      [preferences2 setSortOption:v17];
    }

    goto LABEL_36;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [subIdentifierCopy isEqualToString:@"PreferredNetworks"];
    v19 = +[VGVirtualGarageService sharedService];
    dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    virtualGarage = [dataCoordinator virtualGarage];
    selectedVehicle = [virtualGarage selectedVehicle];
    [v19 virtualGarageSetShouldUsePreferredNetworks:v18 forVehicle:selectedVehicle];
  }

LABEL_14:
}

- (double)widthForCell:(id)cell
{
  collectionView = [(RoutePlanningOverviewViewController *)self collectionView];
  [collectionView frame];
  Width = CGRectGetWidth(v6);

  return Width;
}

- (void)didTapAdvisoriesOnCell:(id)cell atIndex:(int64_t)index
{
  cellCopy = cell;
  v7 = sub_100798A3C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    route = [cellCopy route];
    uniqueRouteID = [route uniqueRouteID];
    *buf = 138412802;
    v30 = cellCopy;
    v31 = 2112;
    v32 = uniqueRouteID;
    v33 = 2048;
    indexCopy = index;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "didTapAdvisoriesOnCell: %@ with route: %@, index: %ld", buf, 0x20u);
  }

  route2 = [cellCopy route];
  v11 = route2;
  if (index == 0x7FFFFFFFFFFFFFFFLL)
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
    v12 = [route2 advisoriesForAutoSharingContacts:&__NSArray0__struct scale:0.0];
    if ([v12 count]<= index)
    {
      [(RoutePlanningOverviewViewController *)self didTapAutomaticSharingButtonForRouteOverviewCell:cellCopy];
    }

    else
    {
      v13 = [v12 objectAtIndexedSubscript:index];
      advisory = [v13 advisory];

      _maps_mapsSceneDelegate = [(IOSRoutePlanningOverviewViewController *)self _maps_mapsSceneDelegate];
      appCoordinator = [_maps_mapsSceneDelegate appCoordinator];
      baseActionCoordinator = [appCoordinator baseActionCoordinator];

      if (sub_100E186CC(advisory))
      {
        advisoryItems = [advisory advisoryItems];
        firstObject = [advisoryItems firstObject];
        cardAction = [firstObject cardAction];
        location = [cardAction location];

        v22 = [GEOMapRegion alloc];
        [location lat];
        v24 = v23;
        [location lng];
        v26 = [v22 initWithLatitude:v24 longitude:v25];
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_10083B950;
        v27[3] = &unk_10162B940;
        v28 = baseActionCoordinator;
        [v28 viewController:0 showOfflineMapRegionSelectorForRegion:v26 name:0 dismissalBlock:v27];
      }

      else
      {
        [baseActionCoordinator setRoutePlanningAdvisory:advisory];
        [baseActionCoordinator presentRoutePlanningViewType:5];
      }
    }
  }
}

- (void)didTapPreviewOnCell:(id)cell
{
  cellCopy = cell;
  v5 = sub_100798A3C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    route = [cellCopy route];
    uniqueRouteID = [route uniqueRouteID];
    v8 = 138412546;
    v9 = cellCopy;
    v10 = 2112;
    v11 = uniqueRouteID;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "didTapPreviewOnCell: %@ with route: %@", &v8, 0x16u);
  }

  [(RoutePlanningOverviewViewController *)self didTapDetailsButtonForRouteOverviewCell:cellCopy];
}

- (void)didTapPrimaryActionOnCell:(id)cell
{
  cellCopy = cell;
  route = [cellCopy route];
  v6 = sub_100798A3C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    uniqueRouteID = [route uniqueRouteID];
    v11 = 138543618;
    v12 = cellCopy;
    v13 = 2114;
    v14 = uniqueRouteID;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "didTapPrimaryActionOnCell: %{public}@ with route: %{public}@", &v11, 0x16u);
  }

  if (sub_10000FA08(self) == 5)
  {
    dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    [dataCoordinator updateCurrentRoute:route];

    routePlanningDelegate = [(RoutePlanningOverviewViewController *)self routePlanningDelegate];
    [routePlanningDelegate presentRoutePlanningViewType:2];

    v10 = +[MKMapService sharedService];
    [v10 captureUserAction:3004 onTarget:-[RoutePlanningOverviewViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];
  }

  else
  {
    [(RoutePlanningOverviewViewController *)self didTapGoOnRoute:route];
  }
}

- (void)didTapOnCell:(id)cell
{
  cellCopy = cell;
  v5 = sub_100798A3C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    route = [cellCopy route];
    uniqueRouteID = [route uniqueRouteID];
    v10 = 138412546;
    v11 = cellCopy;
    v12 = 2112;
    v13 = uniqueRouteID;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "didTapOnCell: %@ with route: %@", &v10, 0x16u);
  }

  rootController = [(RoutePlanningOverviewViewController *)self rootController];
  route2 = [cellCopy route];
  [(RoutePlanningOverviewViewController *)self dataSource:rootController didSelectRowForRoute:route2];
}

- (int64_t)transportTypeForFieldsView:(id)view
{
  dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  transportType = [dataCoordinator transportType];

  return transportType;
}

- (id)currentRefinementsForFieldsView:(id)view
{
  dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  platformController = [dataCoordinator platformController];
  currentSession = [platformController currentSession];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = currentSession;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    currentTransportType = [v8 currentTransportType];
    v10 = [v8 navigationType] == 2;
  }

  else
  {
    dataCoordinator2 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    currentTransportType = [dataCoordinator2 transportType];

    dataCoordinator3 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    currentRoute = [dataCoordinator3 currentRoute];
    origin = [currentRoute origin];
    if (origin)
    {
      dataCoordinator4 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
      currentRoute2 = [dataCoordinator4 currentRoute];
      origin2 = [currentRoute2 origin];
      v10 = [origin2 isCurrentLocation] ^ 1;
    }

    else
    {
      v10 = 0;
    }
  }

  if (sub_10000FA08(self) == 5 && !currentTransportType)
  {
    dataCoordinator5 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    currentTransportType = [dataCoordinator5 desiredTransportType];
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
  dataCoordinator6 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  timing = [dataCoordinator6 timing];
  timingRefinement = [(IOSRoutePlanningOverviewViewController *)self timingRefinement];
  [timingRefinement setValue:timing];

  if (MapsFeature_IsEnabled_Maps357RoutePlanning())
  {
    [NSSet setWithObjects:&off_1016E7298, &off_1016E7268, 0];
  }

  else
  {
    [NSSet setWithObjects:&off_1016E7298, 0, v76];
  }
  v26 = ;
  v27 = [NSNumber numberWithInteger:currentTransportType];
  v28 = [v26 containsObject:v27];

  if (v28)
  {
    timingRefinement2 = [(IOSRoutePlanningOverviewViewController *)self timingRefinement];
    [v22 addObject:timingRefinement2];
  }

  if (currentTransportType <= 2)
  {
    if (currentTransportType)
    {
      if (currentTransportType != 1)
      {
        if (currentTransportType != 2)
        {
          goto LABEL_44;
        }

        dataCoordinator7 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
        walkPreferences = [dataCoordinator7 walkPreferences];
        preferenceRefinement = [(IOSRoutePlanningOverviewViewController *)self preferenceRefinement];
        [preferenceRefinement setValue:walkPreferences];

        preferenceRefinement2 = [(IOSRoutePlanningOverviewViewController *)self preferenceRefinement];
        goto LABEL_42;
      }

      dataCoordinator8 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
      drivePreferences = [dataCoordinator8 drivePreferences];
      preferenceRefinement3 = [(IOSRoutePlanningOverviewViewController *)self preferenceRefinement];
      [preferenceRefinement3 setValue:drivePreferences];

      preferenceRefinement4 = [(IOSRoutePlanningOverviewViewController *)self preferenceRefinement];
      [v22 addObject:preferenceRefinement4];

      dataCoordinator9 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
      virtualGarage = [dataCoordinator9 virtualGarage];
      vehicles = [virtualGarage vehicles];
      v77 = v21;
      v58 = ([vehicles count] != 0) & v21;

      if (v58 == 1)
      {
        dataCoordinator10 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
        virtualGarage2 = [dataCoordinator10 virtualGarage];
        vehicleRefinement = [(IOSRoutePlanningOverviewViewController *)self vehicleRefinement];
        [vehicleRefinement setValue:virtualGarage2];

        vehicleRefinement2 = [(IOSRoutePlanningOverviewViewController *)self vehicleRefinement];
        [v22 addObject:vehicleRefinement2];
      }

      IsEnabled_EVRoutingEnhancements = MapsFeature_IsEnabled_EVRoutingEnhancements();
      vehicleRefinement3 = [(IOSRoutePlanningOverviewViewController *)self vehicleRefinement];
      isOverridingToNoSelection = [vehicleRefinement3 isOverridingToNoSelection];

      dataCoordinator11 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
      virtualGarage3 = [dataCoordinator11 virtualGarage];
      selectedVehicle = [virtualGarage3 selectedVehicle];
      preferredChargingNetworks = [selectedVehicle preferredChargingNetworks];
      v70 = [preferredChargingNetworks count];

      if (IsEnabled_EVRoutingEnhancements && (isOverridingToNoSelection & 1) == 0 && v70 && ((v77 ^ 1) & 1) == 0)
      {
        dataCoordinator12 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
        virtualGarage4 = [dataCoordinator12 virtualGarage];
        selectedVehicle2 = [virtualGarage4 selectedVehicle];
        preferredNetworksRefinement = [(IOSRoutePlanningOverviewViewController *)self preferredNetworksRefinement];
        [preferredNetworksRefinement setValue:selectedVehicle2];

        preferenceRefinement2 = [(IOSRoutePlanningOverviewViewController *)self preferredNetworksRefinement];
        goto LABEL_42;
      }

      goto LABEL_44;
    }

LABEL_33:
    preferenceRefinement5 = [(IOSRoutePlanningOverviewViewController *)self preferenceRefinement];
    [preferenceRefinement5 setValue:0];
LABEL_43:

    goto LABEL_44;
  }

  switch(currentTransportType)
  {
    case 3:
      dataCoordinator13 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
      transitPreferences = [dataCoordinator13 transitPreferences];

      preferenceRefinement6 = [(IOSRoutePlanningOverviewViewController *)self preferenceRefinement];
      [preferenceRefinement6 setValue:transitPreferences];

      preferenceRefinement7 = [(IOSRoutePlanningOverviewViewController *)self preferenceRefinement];
      [v22 addObject:preferenceRefinement7];

      dataCoordinator14 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
      displayHints = [dataCoordinator14 displayHints];

      v48 = [RoutePlanningDisplayHintsRefinementModel requirementFieldsForDisplayHints:displayHints];
      v78[0] = _NSConcreteStackBlock;
      v78[1] = 3221225472;
      v78[2] = sub_10083C488;
      v78[3] = &unk_10162B918;
      v79 = v22;
      selfCopy = self;
      v81 = transitPreferences;
      v82 = displayHints;
      v49 = displayHints;
      v50 = transitPreferences;
      [v48 enumerateIndexesUsingBlock:v78];

      break;
    case 4:
      goto LABEL_33;
    case 5:
      if (sub_10072B16C())
      {
        dataCoordinator15 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
        cyclePreferences = [dataCoordinator15 cyclePreferences];
        preferenceRefinement8 = [(IOSRoutePlanningOverviewViewController *)self preferenceRefinement];
        [preferenceRefinement8 setValue:cyclePreferences];

        preferenceRefinement9 = [(IOSRoutePlanningOverviewViewController *)self preferenceRefinement];
        [v22 addObject:preferenceRefinement9];
      }

      if (sub_10072B0F0())
      {
        dataCoordinator16 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
        cyclePreferences2 = [dataCoordinator16 cyclePreferences];
        ebikeRefinement = [(IOSRoutePlanningOverviewViewController *)self ebikeRefinement];
        [ebikeRefinement setValue:cyclePreferences2];

        preferenceRefinement2 = [(IOSRoutePlanningOverviewViewController *)self ebikeRefinement];
LABEL_42:
        preferenceRefinement5 = preferenceRefinement2;
        [v22 addObject:preferenceRefinement2];
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
    dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    cyclePreferences = [dataCoordinator cyclePreferences];
    v7 = [(RoutePlanningRefinementModel *)v4 initWithDelegate:self value:cyclePreferences];
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
    dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    virtualGarage = [dataCoordinator virtualGarage];
    selectedVehicle = [virtualGarage selectedVehicle];
    v8 = [(RoutePlanningPreferredNetworksRefinementModel *)v4 initWithDelegate:self value:selectedVehicle];
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
    dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    virtualGarage = [dataCoordinator virtualGarage];
    v7 = [(RoutePlanningVehicleRefinementModel *)v4 initWithDelegate:self value:virtualGarage];
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
    dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
    timing = [dataCoordinator timing];
    v7 = [(RoutePlanningRefinementModel *)v4 initWithDelegate:self value:timing];
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

- (id)waypointsForFieldsView:(id)view
{
  dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  directionItemForCurrentSession = [dataCoordinator directionItemForCurrentSession];

  if (_UISolariumEnabled() && sub_10000FA08(self) == 5 && ([directionItemForCurrentSession items], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, !v7))
  {
    v10 = objc_opt_new();
    v12[0] = v10;
    v11 = objc_opt_new();
    v12[1] = v11;
    items = [NSArray arrayWithObjects:v12 count:2];
  }

  else
  {
    items = [directionItemForCurrentSession items];
  }

  return items;
}

- (void)_refreshRouteForWaypoints:(id)waypoints
{
  waypointsCopy = waypoints;
  dataCoordinator = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  desiredTransportType = [dataCoordinator desiredTransportType];

  if (!desiredTransportType)
  {
    delegate = [(ControlContaineeViewController *)self delegate];
    currentDirectionItem = [delegate currentDirectionItem];
    v9 = [currentDirectionItem editRequired:0];

    if (v9)
    {
      delegate2 = [(ControlContaineeViewController *)self delegate];
      currentDirectionItem2 = [delegate2 currentDirectionItem];
      desiredTransportType = [currentDirectionItem2 transportType];
    }

    else
    {
      desiredTransportType = 0;
    }
  }

  v12 = +[MKLocationManager sharedLocationManager];
  v13 = -[DirectionItem initWithItems:ignoreMapType:transportType:]([DirectionItem alloc], "initWithItems:ignoreMapType:transportType:", waypointsCopy, [v12 isLocationServicesApproved] & objc_msgSend(v12, "isAuthorizedForPreciseLocation"), desiredTransportType);

  dataCoordinator2 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  drivePreferences = [dataCoordinator2 drivePreferences];
  [(DirectionItem *)v13 setDrivePreferences:drivePreferences];

  dataCoordinator3 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  transitPreferences = [dataCoordinator3 transitPreferences];
  [(DirectionItem *)v13 setTransitPreferences:transitPreferences];

  dataCoordinator4 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  cyclePreferences = [dataCoordinator4 cyclePreferences];
  [(DirectionItem *)v13 setCyclePreferences:cyclePreferences];

  dataCoordinator5 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  timing = [dataCoordinator5 timing];
  [(DirectionItem *)v13 setTiming:timing];

  v22 = [NSMutableDictionary alloc];
  v31 = @"DirectionsSessionInitiatorKey";
  v32 = &off_1016E7280;
  v23 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  v24 = [v22 initWithDictionary:v23];

  dataCoordinator6 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  originalHistoryEntryIdentifier = [dataCoordinator6 originalHistoryEntryIdentifier];
  [v24 setObject:originalHistoryEntryIdentifier forKeyedSubscript:@"DirectionsRouteUUIDKey"];

  dataCoordinator7 = [(RoutePlanningOverviewViewController *)self dataCoordinator];
  automaticSharingContacts = [dataCoordinator7 automaticSharingContacts];
  [v24 setObject:automaticSharingContacts forKeyedSubscript:@"DirectionsPreviousContactsForTripSharing"];

  routePlanningDelegate = [(RoutePlanningOverviewViewController *)self routePlanningDelegate];
  v30 = [v24 copy];
  [routePlanningDelegate refreshRoutePlanningWithDirectionItem:v13 userInfo:v30];
}

- (void)_refreshRouteForChangeInWaypointListView:(id)view
{
  viewCopy = view;
  v5 = +[MKMapService sharedService];
  [v5 captureUserAction:6003 onTarget:-[RoutePlanningOverviewViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];

  waypoints = [viewCopy waypoints];

  v6 = [waypoints copy];
  [(IOSRoutePlanningOverviewViewController *)self _refreshRouteForWaypoints:v6];
}

- (void)replaceOriginWithCurrentLocation
{
  delegate = [(ControlContaineeViewController *)self delegate];
  currentDirectionItem = [delegate currentDirectionItem];
  items = [currentDirectionItem items];
  v6 = [items mutableCopy];

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

- (void)didTapTimingInFieldsView:(id)view
{
  [(RoutePlanningOverviewViewController *)self _cancelAutoLaunch];
  routePlanningDelegate = [(RoutePlanningOverviewViewController *)self routePlanningDelegate];
  [routePlanningDelegate presentRoutePlanningViewType:3];

  pedestrianARFeatureIntroTeachableMomentTimer = [(IOSRoutePlanningOverviewViewController *)self pedestrianARFeatureIntroTeachableMomentTimer];
  [pedestrianARFeatureIntroTeachableMomentTimer invalidate];
}

- (void)_didSelectWaypoint:(id)waypoint atIndex:(unint64_t)index
{
  [(RoutePlanningOverviewViewController *)self _cancelAutoLaunch];
  routePlanningDelegate = [(RoutePlanningOverviewViewController *)self routePlanningDelegate];
  [routePlanningDelegate presentRoutePlanningViewType:1];

  routePlanningDelegate2 = [(RoutePlanningOverviewViewController *)self routePlanningDelegate];
  [routePlanningDelegate2 selectWaypointSearchFieldIndex:index exitPlanningIfCancelTapped:0 beginEditing:0];

  pedestrianARFeatureIntroTeachableMomentTimer = [(IOSRoutePlanningOverviewViewController *)self pedestrianARFeatureIntroTeachableMomentTimer];
  [pedestrianARFeatureIntroTeachableMomentTimer invalidate];
}

- (void)waypointListView:(id)view didDeleteWaypointAtIndex:(unint64_t)index
{
  viewCopy = view;
  v6 = +[MKMapService sharedService];
  currentUITargetForAnalytics = [(RoutePlanningOverviewViewController *)self currentUITargetForAnalytics];
  v8 = [NSNumber numberWithUnsignedInteger:index];
  stringValue = [v8 stringValue];
  [v6 captureUserAction:280 onTarget:currentUITargetForAnalytics eventValue:stringValue];

  [(IOSRoutePlanningOverviewViewController *)self _refreshRouteForChangeInWaypointListView:viewCopy];
}

- (void)waypointListView:(id)view didMoveWaypoint:(id)waypoint fromIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  viewCopy = view;
  v8 = +[MKMapService sharedService];
  currentUITargetForAnalytics = [(RoutePlanningOverviewViewController *)self currentUITargetForAnalytics];
  v10 = [NSNumber numberWithUnsignedInteger:index];
  stringValue = [v10 stringValue];
  [v8 captureUserAction:279 onTarget:currentUITargetForAnalytics eventValue:stringValue];

  [(IOSRoutePlanningOverviewViewController *)self _refreshRouteForChangeInWaypointListView:viewCopy];
}

- (void)waypointListView:(id)view didSelectCollapsedWaypoints:(id)waypoints
{
  waypointsCopy = waypoints;
  fieldsView = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
  [fieldsView expandWaypointsIfNeeded];

  fieldsView2 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
  superview = [fieldsView2 superview];
  contentView = [(ContaineeViewController *)self contentView];

  if (superview != contentView)
  {
    collectionView = [(RoutePlanningOverviewViewController *)self collectionView];
    collectionViewLayout = [collectionView collectionViewLayout];
    [collectionViewLayout invalidateLayout];
  }

  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController wantsLayout:3];

  [(IOSRoutePlanningOverviewViewController *)self _updateFieldsViewSuperviewIfNeeded];
  v17 = +[MKMapService sharedService];
  currentUITargetForAnalytics = [(RoutePlanningOverviewViewController *)self currentUITargetForAnalytics];
  v14 = [waypointsCopy count];

  v15 = [NSNumber numberWithUnsignedInteger:v14];
  stringValue = [v15 stringValue];
  [v17 captureUserAction:31 onTarget:currentUITargetForAnalytics eventValue:stringValue];
}

- (void)waypointListViewDidSelectAddStop:(id)stop
{
  [(IOSRoutePlanningOverviewViewController *)self _didSelectWaypoint:0 atIndex:-1];
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:6097 onTarget:-[RoutePlanningOverviewViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];
}

- (void)waypointListView:(id)view didSelectWaypoint:(id)waypoint atIndex:(unint64_t)index
{
  [(IOSRoutePlanningOverviewViewController *)self _didSelectWaypoint:waypoint atIndex:index];
  v10 = +[MKMapService sharedService];
  currentUITargetForAnalytics = [(RoutePlanningOverviewViewController *)self currentUITargetForAnalytics];
  v8 = [NSNumber numberWithUnsignedInteger:index];
  stringValue = [v8 stringValue];
  [v10 captureUserAction:277 onTarget:currentUITargetForAnalytics eventValue:stringValue];
}

- (void)_forceChangeOrigin
{
  routePlanningDelegate = [(RoutePlanningOverviewViewController *)self routePlanningDelegate];
  [routePlanningDelegate presentRoutePlanningViewType:1];

  routePlanningDelegate2 = [(RoutePlanningOverviewViewController *)self routePlanningDelegate];
  [routePlanningDelegate2 selectWaypointSearchFieldIndex:0 exitPlanningIfCancelTapped:1 beginEditing:0];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == &unk_10195D9D0)
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
    [(IOSRoutePlanningOverviewViewController *)&v6 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)_didTapHeaderView
{
  collectionView = [(RoutePlanningOverviewViewController *)self collectionView];
  [collectionView stopScrollingAndZooming];

  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  containeeLayout = [cardPresentationController containeeLayout];

  if (containeeLayout <= 1)
  {
    if (containeeLayout)
    {
      if (containeeLayout != 1)
      {
        goto LABEL_11;
      }

LABEL_8:
      cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
      v7 = cardPresentationController2;
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

  switch(containeeLayout)
  {
    case 5:
      goto LABEL_12;
    case 3:
      goto LABEL_8;
    case 2:
      cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
      v7 = cardPresentationController2;
      v8 = 3;
LABEL_9:
      [cardPresentationController2 wantsLayout:v8];
LABEL_10:

      break;
  }

LABEL_11:
  v9 = +[MKMapService sharedService];
  [v9 captureUserAction:3 onTarget:-[RoutePlanningOverviewViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];
}

- (BOOL)shouldIgnoreTapOnView:(id)view headerView:(id)headerView
{
  viewCopy = view;
  fieldsView = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
  waypointListView = [fieldsView waypointListView];
  v8 = [viewCopy isDescendantOfView:waypointListView];

  return v8;
}

- (void)_updateWaypointsAndRoutesListForCurrentContaineeLayout:(unint64_t)layout
{
  if (layout != 3)
  {
    fieldsView = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
    [fieldsView collapseWaypointsIfNeeded];

    fieldsView2 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
    superview = [fieldsView2 superview];
    contentView = [(ContaineeViewController *)self contentView];

    if (superview != contentView)
    {
      collectionView = [(RoutePlanningOverviewViewController *)self collectionView];
      collectionViewLayout = [collectionView collectionViewLayout];
      [collectionViewLayout invalidateLayout];
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
    collectionView2 = [(RoutePlanningOverviewViewController *)self collectionView];
    [collectionView2 setScrollEnabled:layout == 3];
  }
}

- (void)didChangeContainerStyle:(unint64_t)style
{
  v5.receiver = self;
  v5.super_class = IOSRoutePlanningOverviewViewController;
  [(RoutePlanningOverviewViewController *)&v5 didChangeContainerStyle:style];
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  -[IOSRoutePlanningOverviewViewController _updateWaypointsAndRoutesListForCurrentContaineeLayout:](self, "_updateWaypointsAndRoutesListForCurrentContaineeLayout:", [cardPresentationController containeeLayout]);
}

- (void)willChangeContainerStyle:(unint64_t)style
{
  v9.receiver = self;
  v9.super_class = IOSRoutePlanningOverviewViewController;
  [(RoutePlanningOverviewViewController *)&v9 willChangeContainerStyle:style];
  collectionView = [(RoutePlanningOverviewViewController *)self collectionView];
  [collectionView stopScrollingAndZooming];

  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController bottomSafeOffset];
  v7 = v6;
  rootController = [(RoutePlanningOverviewViewController *)self rootController];
  [rootController setBottomSafeOffset:v7];
}

- (void)didChangeLayout:(unint64_t)layout
{
  v5.receiver = self;
  v5.super_class = IOSRoutePlanningOverviewViewController;
  [(ContaineeViewController *)&v5 didChangeLayout:?];
  [(IOSRoutePlanningOverviewViewController *)self _updateWaypointsAndRoutesListForCurrentContaineeLayout:layout];
}

- (void)willChangeLayout:(unint64_t)layout
{
  v10.receiver = self;
  v10.super_class = IOSRoutePlanningOverviewViewController;
  [(RoutePlanningOverviewViewController *)&v10 willChangeLayout:?];
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  containeeLayout = [cardPresentationController containeeLayout];

  if (containeeLayout && containeeLayout < layout)
  {
    v7 = 1;
LABEL_7:
    v9 = +[MKMapService sharedService];
    [v9 captureUserAction:v7 onTarget:-[RoutePlanningOverviewViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];

    return;
  }

  if (layout && containeeLayout > layout)
  {
    fieldsView = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
    [fieldsView collapseWaypointsIfNeeded];

    [(IOSRoutePlanningOverviewViewController *)self _updateFieldsViewSuperviewIfNeeded];
    v7 = 2;
    goto LABEL_7;
  }
}

- (double)heightForLayout:(unint64_t)layout
{
  v4 = -1.0;
  if (layout > 2)
  {
    if (layout - 3 >= 2)
    {
      if (layout == 5)
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
      cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
      [cardPresentationController availableHeight];
      v4 = v10;
    }

    return v4;
  }

  if (layout < 2)
  {
LABEL_3:
    if (sub_10000FA08(self) != 5)
    {
      cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
      [cardPresentationController2 bottomSafeOffset];
      v7 = v6;
      [(ContaineeViewController *)self headerHeight];
      v4 = v8 + v7;
    }

    return v4;
  }

  if (layout != 2)
  {
    return v4;
  }

  traitCollection = [(IOSRoutePlanningOverviewViewController *)self traitCollection];
  verticalSizeClass = [traitCollection verticalSizeClass];

  if (verticalSizeClass == 1 || sub_10000FA08(self) == 5)
  {
    return v4;
  }

  [(RoutePlanningOverviewViewController *)self _fittingHeightForMediumLayout];
  return result;
}

- (void)_updateTransitionScrollPosition
{
  fieldsView = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
  rootController = [(RoutePlanningOverviewViewController *)self rootController];
  headerView = [rootController headerView];

  if (fieldsView == headerView)
  {
    self->super._previousStyleForTransition = 0;
    self->super._previousLayoutForTransition = 0;
  }

  else
  {
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    containeeLayout = [cardPresentationController containeeLayout];

    previousLayoutForTransition = self->super._previousLayoutForTransition;
    cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
    containerStyle = [cardPresentationController2 containerStyle];

    previousStyleForTransition = self->super._previousStyleForTransition;
    [(IOSRoutePlanningOverviewViewController *)self _percentCollapsedFullToMedium];
    v11 = v10;
    collectionView = [(RoutePlanningOverviewViewController *)self collectionView];
    sheetPresentationController = [(IOSRoutePlanningOverviewViewController *)self sheetPresentationController];
    _isDragging = [sheetPresentationController _isDragging];
    if (_isDragging != [(IOSRoutePlanningOverviewViewController *)self wasSheetDragging]|| previousLayoutForTransition != containeeLayout || previousStyleForTransition != containerStyle)
    {
      [(IOSRoutePlanningOverviewViewController *)self setWasSheetDragging:_isDragging];
      v15 = previousLayoutForTransition == containeeLayout ? _isDragging : 1;
      if ((v15 & 1) != 0 || previousStyleForTransition != containerStyle)
      {
        [collectionView contentOffset];
        [(IOSRoutePlanningOverviewViewController *)self setContentOffsetWhenDraggingBegan:v16];
        selectedDetentIdentifier = [sheetPresentationController selectedDetentIdentifier];
        -[IOSRoutePlanningOverviewViewController setSheetExpandingFromMedium:](self, "setSheetExpandingFromMedium:", [selectedDetentIdentifier isEqualToString:UISheetPresentationControllerDetentIdentifierLarge] ^ 1);

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
          if (_isDragging)
          {
            v22 = @"YES";
          }

          else
          {
            v22 = @"NO";
          }

          v78 = sheetPresentationController;
          v23 = COERCE_DOUBLE(v22);
          if (previousLayoutForTransition == containeeLayout)
          {
            v24 = @"NO";
          }

          else
          {
            v24 = @"YES";
          }

          v25 = v24;
          if (previousStyleForTransition == containerStyle)
          {
            v26 = @"NO";
          }

          else
          {
            v26 = @"YES";
          }

          v27 = v26;
          *buf = 134350338;
          selfCopy4 = self;
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

          sheetPresentationController = v78;
        }
      }
    }

    if (([collectionView isDragging] & 1) == 0)
    {
      [(RoutePlanningOverviewViewController *)self _rectOfRowToKeepVisible];
      MinY = CGRectGetMinY(v97);
      v29 = v11;
      v30 = -(v11 * MinY);
      [collectionView contentInset];
      v32 = v31;
      v77 = v34;
      v79 = v33;
      v36 = v35;
      v37 = collectionView;
      v38 = vabdd_f64(v30, v32);
      traitCollection = [v37 traitCollection];
      [traitCollection displayScale];
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
          selfCopy4 = self;
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

      _isGeneratingAnimations = [sheetPresentationController _isGeneratingAnimations];
      v48 = _isGeneratingAnimations;
      if (((_isDragging | _isGeneratingAnimations) & 1) != 0 || previousLayoutForTransition != containeeLayout || previousStyleForTransition != containerStyle)
      {
        v80 = previousLayoutForTransition;
        [v37 adjustedContentInset];
        v50 = v30 - v49;
        sheetExpandingFromMedium = [(IOSRoutePlanningOverviewViewController *)self sheetExpandingFromMedium];
        v52 = v50;
        if ((sheetExpandingFromMedium & 1) == 0)
        {
          [(IOSRoutePlanningOverviewViewController *)self contentOffsetWhenDraggingBegan];
        }

        v53 = v52 + (v50 + MinY - v52) * v29;
        [v37 contentOffset];
        v55 = v54;
        v56 = v37;
        v57 = vabdd_f64(v53, v55);
        traitCollection2 = [v56 traitCollection];
        [traitCollection2 displayScale];
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
            if (_isDragging)
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
            if (v80 == containeeLayout)
            {
              v71 = @"NO";
            }

            else
            {
              v71 = @"YES";
            }

            v72 = v71;
            if (previousStyleForTransition == containerStyle)
            {
              v73 = @"NO";
            }

            else
            {
              v73 = @"YES";
            }

            v74 = v73;
            *buf = 134350594;
            selfCopy4 = self;
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

      if (previousLayoutForTransition != containeeLayout || previousStyleForTransition != containerStyle)
      {
        v75 = sub_1008319B0();
        if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349056;
          selfCopy4 = self;
          _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEBUG, "[%{public}p] [Transition] Storing layout/style for next transition", buf, 0xCu);
        }

        self->super._previousLayoutForTransition = containeeLayout;
        self->super._previousStyleForTransition = containerStyle;
      }
    }
  }
}

- (double)_percentCollapsedFullToMedium
{
  sheetPresentationController = [(IOSRoutePlanningOverviewViewController *)self sheetPresentationController];
  _maps_effectiveDetentValues = [sheetPresentationController _maps_effectiveDetentValues];
  [sheetPresentationController _currentPresentedViewFrame];
  Height = CGRectGetHeight(v15);
  containerView = [sheetPresentationController containerView];
  [containerView safeAreaInsets];
  v7 = v6;

  v8 = 0.0;
  if ([_maps_effectiveDetentValues count] >= 3)
  {
    v9 = [_maps_effectiveDetentValues objectAtIndexedSubscript:2];
    [v9 doubleValue];
    v11 = v10;
    v12 = [_maps_effectiveDetentValues objectAtIndexedSubscript:1];
    [v12 doubleValue];
    v8 = fmax(fmin((Height - (v7 + v11)) / (v13 - v11), 1.0), 0.0);
  }

  return v8;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v10.receiver = self;
  v10.super_class = IOSRoutePlanningOverviewViewController;
  coordinatorCopy = coordinator;
  [(ContaineeViewController *)&v10 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  view = [(IOSRoutePlanningOverviewViewController *)self view];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10083E5C8;
  v9[3] = &unk_101661710;
  v9[4] = self;
  [coordinatorCopy animateAlongsideTransitionInView:view animation:&stru_10162B8F0 completion:v9];
}

- (void)viewWillLayoutSubviews
{
  v9.receiver = self;
  v9.super_class = IOSRoutePlanningOverviewViewController;
  [(IOSRoutePlanningOverviewViewController *)&v9 viewWillLayoutSubviews];
  if (!self->super._previousLayoutForTransition)
  {
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];

    if (cardPresentationController)
    {
      cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
      self->super._previousLayoutForTransition = [cardPresentationController2 containeeLayout];

      if (qword_10195DF00 != -1)
      {
        dispatch_once(&qword_10195DF00, &stru_1016303F0);
      }

      if (byte_10195DF08 == 1)
      {
        v7 = self->super._previousLayoutForTransition == 3;
        collectionView = [(RoutePlanningOverviewViewController *)self collectionView];
        [collectionView setScrollEnabled:v7];
      }
    }
  }

  if (!self->super._previousStyleForTransition)
  {
    cardPresentationController3 = [(ContaineeViewController *)self cardPresentationController];

    if (cardPresentationController3)
    {
      cardPresentationController4 = [(ContaineeViewController *)self cardPresentationController];
      self->super._previousStyleForTransition = [cardPresentationController4 containerStyle];
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

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = IOSRoutePlanningOverviewViewController;
  [(RoutePlanningOverviewViewController *)&v4 viewDidDisappear:disappear];
  self->super._previousLayoutForTransition = 0;
  self->super._previousStyleForTransition = 0;
  [(RouteOverviewFieldsView *)self->_fieldsView reset];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = IOSRoutePlanningOverviewViewController;
  [(RoutePlanningOverviewViewController *)&v6 viewWillAppear:appear];
  fieldsView = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
  [fieldsView setNeedsUpdateRefinements];

  fieldsView2 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
  [fieldsView2 setNeedsUpdateWaypointsList];

  [(IOSRoutePlanningOverviewViewController *)self _updateFieldsViewSuperviewIfNeeded];
  [(IOSRoutePlanningOverviewViewController *)self _refreshContentInset];
}

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  isDisplayingSingleTrip = [(RoutePlanningOverviewViewController *)self isDisplayingSingleTrip];
  if (scroll == 4 && (isDisplayingSingleTrip & 1) != 0 || (v6 = [(RoutePlanningOverviewViewController *)self isDisplayingSingleTrip], result = 0, scroll == 3) && (v6 & 1) == 0)
  {
    [(IOSRoutePlanningOverviewViewController *)self _didTapHeaderView];
    return 1;
  }

  return result;
}

- (void)_captureFamiliarRoutesIfAvailable:(id)available routeCollection:(id)collection
{
  availableCopy = available;
  collectionCopy = collection;
  if ([availableCopy transportType] == 1)
  {
    routes = [collectionCopy routes];
    v8 = [routes count];

    if (v8)
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v15 = 0;
      routes2 = [collectionCopy routes];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10083E9F8;
      v11[3] = &unk_1016311B8;
      v11[4] = &v12;
      [routes2 enumerateObjectsUsingBlock:v11];

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
  contentView = [(ContaineeViewController *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  contentView2 = [(ContaineeViewController *)self contentView];
  fieldsView = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
  [fieldsView frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  fieldsView2 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
  superview = [fieldsView2 superview];
  [contentView2 convertRect:superview fromView:{v13, v15, v17, v19}];
  v23 = v22;
  v25 = v24;
  v27 = v26;

  fieldsView3 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
  [fieldsView3 estimatedHeight];
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
  superview2 = [(ErrorModeView *)self->super._errorModeView superview];

  if (superview2 || (p_errorModeView = &self->super._loadingModeView, [(LoadingModeView *)self->super._loadingModeView superview], v36 = objc_claimAutoreleasedReturnValue(), v36, v36))
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
  fieldsView = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
  [fieldsView estimatedHeight];
  v7 = v6 + v4;

  return v7;
}

- (void)_createStyleSpecificConstraintsIfNeeded
{
  collectionViewTopToFieldsViewConstraint = [(IOSRoutePlanningOverviewViewController *)self collectionViewTopToFieldsViewConstraint];
  if (!collectionViewTopToFieldsViewConstraint || (v4 = collectionViewTopToFieldsViewConstraint, [(IOSRoutePlanningOverviewViewController *)self collectionViewTopToContentViewConstraint], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, !v5))
  {
    collectionView = [(RoutePlanningOverviewViewController *)self collectionView];
    topAnchor = [collectionView topAnchor];
    fieldsView = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
    bottomAnchor = [fieldsView bottomAnchor];
    v10 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:16.0];
    [(IOSRoutePlanningOverviewViewController *)self setCollectionViewTopToFieldsViewConstraint:v10];

    transportTypePicker = [(RoutePlanningOverviewViewController *)self transportTypePicker];
    bottomAnchor2 = [transportTypePicker bottomAnchor];
    v13 = bottomAnchor2;
    if (bottomAnchor2)
    {
      topAnchor2 = bottomAnchor2;
    }

    else
    {
      contentView = [(ContaineeViewController *)self contentView];
      topAnchor2 = [contentView topAnchor];
    }

    transportTypePicker2 = [(RoutePlanningOverviewViewController *)self transportTypePicker];
    if (transportTypePicker2)
    {
      v16 = 8.0;
    }

    else
    {
      v16 = 0.0;
    }

    collectionView2 = [(RoutePlanningOverviewViewController *)self collectionView];
    topAnchor3 = [collectionView2 topAnchor];
    v19 = [topAnchor3 constraintEqualToAnchor:topAnchor2 constant:v16];
    [(IOSRoutePlanningOverviewViewController *)self setCollectionViewTopToContentViewConstraint:v19];
  }
}

- (void)_updateFieldsViewSuperviewIfNeeded
{
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  containerStyle = [cardPresentationController containerStyle];
  if (containerStyle > 7 || ((1 << containerStyle) & 0xA3) == 0)
  {
    hasExpandedWaypoints = 1;
  }

  else
  {
    fieldsView = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
    hasExpandedWaypoints = [fieldsView hasExpandedWaypoints];
  }

  collectionView = [(RoutePlanningOverviewViewController *)self collectionView];
  dataSource = [collectionView dataSource];

  fieldsView2 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
  v11 = fieldsView2;
  if (hasExpandedWaypoints)
  {
    headerView = [dataSource headerView];

    if (v11 != headerView)
    {
      [(IOSRoutePlanningOverviewViewController *)self _createStyleSpecificConstraintsIfNeeded];
      collectionViewTopToFieldsViewConstraint = [(IOSRoutePlanningOverviewViewController *)self collectionViewTopToFieldsViewConstraint];
      [collectionViewTopToFieldsViewConstraint setActive:0];

      fieldsView3 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
      [dataSource setHeaderView:fieldsView3];

      [(RoutePlanningOverviewViewController *)self _setupAdvisoryFooterView];
      collectionViewTopToContentViewConstraint = [(IOSRoutePlanningOverviewViewController *)self collectionViewTopToContentViewConstraint];
      [collectionViewTopToContentViewConstraint setActive:1];

      collectionView2 = [(RoutePlanningOverviewViewController *)self collectionView];
      [collectionView2 contentInset];
      v18 = v17;
      v20 = v19;
      v22 = v21;

      collectionView3 = [(RoutePlanningOverviewViewController *)self collectionView];
      [collectionView3 setContentInset:{0.0, v18, v20, v22}];

      view = [(IOSRoutePlanningOverviewViewController *)self view];
      [view setNeedsLayout];
    }
  }

  else
  {
    superview = [fieldsView2 superview];
    contentView = [(ContaineeViewController *)self contentView];

    if (superview != contentView)
    {
      [(IOSRoutePlanningOverviewViewController *)self _createStyleSpecificConstraintsIfNeeded];
      collectionViewTopToContentViewConstraint2 = [(IOSRoutePlanningOverviewViewController *)self collectionViewTopToContentViewConstraint];
      [collectionViewTopToContentViewConstraint2 setActive:0];

      [dataSource setHeaderView:0];
      [(RoutePlanningOverviewViewController *)self _setupAdvisoryFooterView];
      contentView2 = [(ContaineeViewController *)self contentView];
      fieldsView4 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
      [contentView2 addSubview:fieldsView4];

      transportTypePicker = [(RoutePlanningOverviewViewController *)self transportTypePicker];
      bottomAnchor = [transportTypePicker bottomAnchor];
      v32 = bottomAnchor;
      v54 = dataSource;
      if (bottomAnchor)
      {
        topAnchor = bottomAnchor;
      }

      else
      {
        contentView3 = [(ContaineeViewController *)self contentView];
        topAnchor = [contentView3 topAnchor];
      }

      v50 = topAnchor;

      transportTypePicker2 = [(RoutePlanningOverviewViewController *)self transportTypePicker];
      if (transportTypePicker2)
      {
        v36 = 8.0;
      }

      else
      {
        v36 = 0.0;
      }

      fieldsView5 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
      topAnchor2 = [fieldsView5 topAnchor];
      v51 = [topAnchor2 constraintEqualToAnchor:topAnchor constant:v36];
      v55[0] = v51;
      fieldsView6 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
      leadingAnchor = [fieldsView6 leadingAnchor];
      contentView4 = [(ContaineeViewController *)self contentView];
      leadingAnchor2 = [contentView4 leadingAnchor];
      v39 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v55[1] = v39;
      fieldsView7 = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
      trailingAnchor = [fieldsView7 trailingAnchor];
      contentView5 = [(ContaineeViewController *)self contentView];
      trailingAnchor2 = [contentView5 trailingAnchor];
      v44 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v55[2] = v44;
      v45 = [NSArray arrayWithObjects:v55 count:3];
      [NSLayoutConstraint activateConstraints:v45];

      collectionViewTopToFieldsViewConstraint2 = [(IOSRoutePlanningOverviewViewController *)self collectionViewTopToFieldsViewConstraint];
      [collectionViewTopToFieldsViewConstraint2 setActive:1];

      view2 = [(IOSRoutePlanningOverviewViewController *)self view];
      [view2 setNeedsLayout];

      dataSource = v54;
    }
  }
}

- (id)_initialConstraints
{
  v46.receiver = self;
  v46.super_class = IOSRoutePlanningOverviewViewController;
  _initialConstraints = [(RoutePlanningOverviewViewController *)&v46 _initialConstraints];
  contentView = [(ContaineeViewController *)self contentView];
  topAnchor = [contentView topAnchor];
  containerHeaderView = [(RoutePlanningOverviewViewController *)self containerHeaderView];
  bottomAnchor = [containerHeaderView bottomAnchor];
  v7 = [topAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor constant:8.0];
  [_initialConstraints addObject:v7];

  collectionView = [(RoutePlanningOverviewViewController *)self collectionView];
  leadingAnchor = [collectionView leadingAnchor];
  contentView2 = [(ContaineeViewController *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v48[0] = v9;
  collectionView2 = [(RoutePlanningOverviewViewController *)self collectionView];
  trailingAnchor = [collectionView2 trailingAnchor];
  contentView3 = [(ContaineeViewController *)self contentView];
  trailingAnchor2 = [contentView3 trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v48[1] = v14;
  collectionViewToBottomConstraint = [(RoutePlanningOverviewViewController *)self collectionViewToBottomConstraint];
  v48[2] = collectionViewToBottomConstraint;
  v16 = [NSArray arrayWithObjects:v48 count:3];
  [_initialConstraints addObjectsFromArray:v16];

  transportTypePicker = [(RoutePlanningOverviewViewController *)self transportTypePicker];

  if (transportTypePicker)
  {
    [(RoutePlanningOverviewViewController *)self transportTypePickerHeight];
    v19 = v18;
    +[_TtC4Maps23MapsDesignConstantsShim contentHorizontalPadding];
    v21 = v20;
    transportTypePicker2 = [(RoutePlanningOverviewViewController *)self transportTypePicker];
    heightAnchor = [transportTypePicker2 heightAnchor];
    v40 = [heightAnchor constraintEqualToConstant:v19];
    v47[0] = v40;
    transportTypePicker3 = [(RoutePlanningOverviewViewController *)self transportTypePicker];
    topAnchor2 = [transportTypePicker3 topAnchor];
    contentView4 = [(ContaineeViewController *)self contentView];
    topAnchor3 = [contentView4 topAnchor];
    v34 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
    v47[1] = v34;
    transportTypePicker4 = [(RoutePlanningOverviewViewController *)self transportTypePicker];
    leadingAnchor3 = [transportTypePicker4 leadingAnchor];
    contentView5 = [(ContaineeViewController *)self contentView];
    leadingAnchor4 = [contentView5 leadingAnchor];
    v25 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:v21];
    v47[2] = v25;
    contentView6 = [(ContaineeViewController *)self contentView];
    trailingAnchor3 = [contentView6 trailingAnchor];
    transportTypePicker5 = [(RoutePlanningOverviewViewController *)self transportTypePicker];
    trailingAnchor4 = [transportTypePicker5 trailingAnchor];
    v30 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:v21];
    v47[3] = v30;
    v31 = [NSArray arrayWithObjects:v47 count:4];
    [_initialConstraints addObjectsFromArray:v31];
  }

  return _initialConstraints;
}

- (void)_setupSubviews
{
  v17.receiver = self;
  v17.super_class = IOSRoutePlanningOverviewViewController;
  [(RoutePlanningOverviewViewController *)&v17 _setupSubviews];
  collectionView = [(RoutePlanningOverviewViewController *)self collectionView];
  [collectionView setSelectionFollowsFocus:1];

  collectionView2 = [(RoutePlanningOverviewViewController *)self collectionView];
  objc_initWeak(&location, self);
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_10083F940;
  v14 = &unk_101661B98;
  objc_copyWeak(&v15, &location);
  [collectionView2 setLayoutHandler:&v11];
  [(IOSRoutePlanningOverviewViewController *)self _refreshContentInset:v11];
  transportTypePicker = [(RoutePlanningOverviewViewController *)self transportTypePicker];

  if (transportTypePicker)
  {
    contentView = [(ContaineeViewController *)self contentView];
    transportTypePicker2 = [(RoutePlanningOverviewViewController *)self transportTypePicker];
    [contentView addSubview:transportTypePicker2];
  }

  v8 = [[RouteOverviewFieldsView alloc] initWithDelegate:self waypointInfoProvider:self];
  [(IOSRoutePlanningOverviewViewController *)self setFieldsView:v8];

  fieldsView = [(IOSRoutePlanningOverviewViewController *)self fieldsView];
  [fieldsView setTranslatesAutoresizingMaskIntoConstraints:0];

  containerHeaderView = [(RoutePlanningOverviewViewController *)self containerHeaderView];
  [containerHeaderView setAccessoryView:0];

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

- (IOSRoutePlanningOverviewViewController)initWithDataCoordinator:(id)coordinator
{
  v7.receiver = self;
  v7.super_class = IOSRoutePlanningOverviewViewController;
  v3 = [(RoutePlanningOverviewViewController *)&v7 initWithDataCoordinator:coordinator];
  if (v3)
  {
    v4 = +[UIApplication sharedMapsDelegate];
    v5 = NSStringFromSelector("currentInterruptionKind");
    [v4 addObserver:v3 forKeyPath:v5 options:1 context:&unk_10195D9D0];
  }

  return v3;
}

@end