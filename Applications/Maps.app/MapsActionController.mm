@interface MapsActionController
- (ActionCoordination)coordinator;
- (AppCoordinator)appCoordinator;
- (AppStateManager)appStateManager;
- (BOOL)isNavigationTurnByTurnOrStepping;
- (IOSChromeViewController)chrome;
- (MapsActionController)init;
- (NavActionCoordination)navActionCoordinator;
- (void)_applyActivity:(id)activity assumedSourceFidelity:(unint64_t)fidelity source:(int64_t)source;
- (void)applyRichMapsActivity:(id)activity;
- (void)applyRichMapsActivityOrWaitForLocation:(id)location;
- (void)entryPointsCoordinator:(id)coordinator didMergedRichMapsActivity:(id)activity;
- (void)entryPointsCoordinator:(id)coordinator performErrorAction:(id)action;
- (void)getUserLocationIfneededFor:(id)for;
- (void)navigationEnded;
@end

@implementation MapsActionController

- (MapsActionController)init
{
  v3.receiver = self;
  v3.super_class = MapsActionController;
  return [(MapsActionController *)&v3 init];
}

- (BOOL)isNavigationTurnByTurnOrStepping
{
  WeakRetained = objc_loadWeakRetained(&self->_appCoordinator);
  isNavigationTurnByTurnOrStepping = [WeakRetained isNavigationTurnByTurnOrStepping];

  return isNavigationTurnByTurnOrStepping;
}

- (AppCoordinator)appCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_appCoordinator);

  return WeakRetained;
}

- (void)_applyActivity:(id)activity assumedSourceFidelity:(unint64_t)fidelity source:(int64_t)source
{
  activityCopy = activity;
  appStateManager = [(MapsActionController *)self appStateManager];
  [appStateManager setMapsActivity:activityCopy assumedSourceFidelity:fidelity source:source];
}

- (void)applyRichMapsActivity:(id)activity
{
  activityCopy = activity;
  if (activityCopy)
  {
    v5 = sub_100005610();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      shortDescription = [activityCopy shortDescription];
      *buf = 138412290;
      v38 = shortDescription;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "MapsActionController : applyRichMapsActivity %@", buf, 0xCu);
    }

    if ([activityCopy isTestingAction])
    {
      v7 = sub_100005610();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "MapsActionController : applyRichMapsActivity Resetting UI for Testing Action", buf, 2u);
      }

      chrome = [(MapsActionController *)self chrome];
      [chrome resetForTestingAction];

      v9 = sub_100005610();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "MapsActionController : applyRichMapsActivity Reset for Testing Complete", buf, 2u);
      }
    }

    if ([activityCopy needsUIReset])
    {
      v10 = sub_100005610();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "MapsActionController : applyRichMapsActivity resetting UI", buf, 2u);
      }

      chrome2 = [(MapsActionController *)self chrome];
      [chrome2 resetForLaunchURLWithOptions:0];
    }

    action = [activityCopy action];
    mapsActivity = [activityCopy mapsActivity];
    if (mapsActivity)
    {
      v14 = +[NSUUID UUID];
      uUIDString = [v14 UUIDString];

      v16 = sub_100005610();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v38 = uUIDString;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "MapsActionController: apply (tag %@)", buf, 0xCu);
      }

      v17 = dispatch_get_global_queue(-2, 0);
      v31 = _NSConcreteStackBlock;
      v32 = 3221225472;
      v33 = sub_100D1ABB0;
      v34 = &unk_101661A90;
      v18 = uUIDString;
      v35 = v18;
      v19 = mapsActivity;
      v36 = v19;
      dispatch_async(v17, &v31);

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = action;
        -[MapsActionController _applyActivity:assumedSourceFidelity:source:](self, "_applyActivity:assumedSourceFidelity:source:", v19, [v20 fidelity], objc_msgSend(v20, "source"));
        v21 = +[GEOPlatform sharedPlatform];
        isInternalInstall = [v21 isInternalInstall];

        if (isInternalInstall)
        {
          v23 = objc_autoreleasePoolPush();
          v24 = [v19 description];
          v25 = [v24 dataUsingEncoding:4];
          bzip2CompressedData = [v25 bzip2CompressedData];

          objc_autoreleasePoolPop(v23);
          v27 = +[NSUserDefaults standardUserDefaults];
          v28 = +[NSDate date];
          v29 = [v28 description];
          [v27 setObject:v29 forKey:@"dateLastUserActivity"];

          v30 = +[NSUserDefaults standardUserDefaults];
          [v30 setObject:bzip2CompressedData forKey:@"lastUserActivityData"];
        }
      }

      else
      {
        [(MapsActionController *)self _applyActivity:v19 assumedSourceFidelity:268435407 source:2, v31, v32, v33, v34, v35];
      }
    }

    [(MapsActionController *)self _performAction:action];
    self->_isRestoringState = 0;
  }
}

- (void)getUserLocationIfneededFor:(id)for
{
  forCopy = for;
  v5 = sub_100005610();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    shortDescription = [forCopy shortDescription];
    *buf = 138412290;
    v26 = shortDescription;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "MapsActionController : Wait Location for %@ ", buf, 0xCu);
  }

  GEOConfigGetDouble();
  v8 = v7;
  GEOConfigGetDouble();
  v10 = v9;
  v11 = +[MKLocationManager sharedLocationManager];
  action = [forCopy action];
  [action userLocationDesiredAccuracy];
  v14 = v13;
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_100D1AE20;
  v20 = &unk_101651708;
  v23 = v8;
  v24 = v10;
  v21 = forCopy;
  selfCopy = self;
  v15 = forCopy;
  v16 = [v11 singleLocationUpdateWithDesiredAccuracy:&v17 handler:v14 timeout:v8 maxLocationAge:v10];
  [v16 start];
}

- (void)applyRichMapsActivityOrWaitForLocation:(id)location
{
  locationCopy = location;
  v5 = sub_100005610();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    shortDescription = [locationCopy shortDescription];
    v11 = 138412290;
    v12 = shortDescription;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "MapsActionController : applyRichMapsActivityOrWaitForLocation for %@ ", &v11, 0xCu);
  }

  v7 = +[MKLocationManager sharedLocationManager];
  isAuthorizedForPreciseLocation = [v7 isAuthorizedForPreciseLocation];

  if (!isAuthorizedForPreciseLocation)
  {
    goto LABEL_8;
  }

  action = [locationCopy action];
  if (![action needsUserLocation])
  {
    BOOL = GEOConfigGetBOOL();

    if (BOOL)
    {
      goto LABEL_7;
    }

LABEL_8:
    [(MapsActionController *)self applyRichMapsActivity:locationCopy];
    goto LABEL_9;
  }

LABEL_7:
  [(MapsActionController *)self getUserLocationIfneededFor:locationCopy];
LABEL_9:
}

- (void)navigationEnded
{
  if (self->_pendingActivityToApplyAfterNavEnd)
  {
    v3 = sub_100005610();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      shortDescription = [(RichMapsActivity *)self->_pendingActivityToApplyAfterNavEnd shortDescription];
      *buf = 138412290;
      v8 = shortDescription;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "MapsActionController : navigationEnded for pending %@ ", buf, 0xCu);
    }

    v5 = dispatch_time(0, 1000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100D1B204;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_after(v5, &_dispatch_main_q, block);
  }
}

- (void)entryPointsCoordinator:(id)coordinator didMergedRichMapsActivity:(id)activity
{
  activityCopy = activity;
  if (activityCopy)
  {
    self->_isRestoringState = 1;
    v7 = +[UIApplication sharedMapsDelegate];
    [v7 dismissCurrentInterruption];

    action = [activityCopy action];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [(MapsActionController *)self isNavigationTurnByTurnOrStepping]&& ([action isCompatibleWithNavigation]& 1) == 0)
    {
      v9 = +[MNNavigationService sharedService];
      route = [v9 route];
      destination = [route destination];

      mapsActivity = [activityCopy mapsActivity];
      directionsPlan = [mapsActivity directionsPlan];
      planningWaypoints = [directionsPlan planningWaypoints];
      lastObject = [planningWaypoints lastObject];
      waypoint = [lastObject waypoint];

      if (destination)
      {
        if (waypoint)
        {
          mapItemStorage = [destination mapItemStorage];
          mapItemStorage2 = [waypoint mapItemStorage];
          IsEqualToMapItemForPurpose = GEOMapItemIsEqualToMapItemForPurpose();

          if (IsEqualToMapItemForPurpose)
          {
            v20 = sub_100005610();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              shortDescription = [destination shortDescription];
              shortDescription2 = [waypoint shortDescription];
              *buf = 138412546;
              selfCopy2 = shortDescription;
              v36 = 2112;
              v37 = shortDescription2;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "MapsActionController: Skipping application of route restoration, currentDestination: %@, restorationDestination: %@", buf, 0x16u);
            }

            goto LABEL_19;
          }
        }
      }
    }

    if ([(MapsActionController *)self isNavigationTurnByTurnOrStepping]&& ([action isCompatibleWithNavigation]& 1) == 0)
    {
      objc_storeStrong(&self->_pendingActivityToApplyAfterNavEnd, activity);
      v24 = sub_100005610();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        shortDescription3 = [(RichMapsActivity *)self->_pendingActivityToApplyAfterNavEnd shortDescription];
        *buf = 138412290;
        selfCopy2 = shortDescription3;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "MapsActionController: NavigatingOrStepping is running for pending %@ ", buf, 0xCu);
      }

      forceEndNavigation = [action forceEndNavigation];
      v27 = sub_100005610();
      v28 = os_log_type_enabled(v27, OS_LOG_TYPE_INFO);
      if (forceEndNavigation)
      {
        if (v28)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "MapsActionController: forceEndNavigation", buf, 2u);
        }

        WeakRetained = objc_loadWeakRetained(&self->_appCoordinator);
        [WeakRetained endNavigationAndReturnToRoutePlanning:0];
      }

      else
      {
        if (v28)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "MapsActionController: ask for kMapsInterruptionMaybeEndNavigation", buf, 2u);
        }

        v30 = +[UIApplication sharedMapsDelegate];
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_100D1B700;
        v31[3] = &unk_1016516E0;
        v32 = activityCopy;
        selfCopy = self;
        [v30 interruptApplicationWithKind:7 userInfo:0 completionHandler:v31];
      }
    }

    else
    {
      v23 = sub_100005610();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "MapsActionController: call applyRichMapsActivityOrWaitForLocation", buf, 2u);
      }

      [(MapsActionController *)self applyRichMapsActivityOrWaitForLocation:activityCopy];
    }
  }

  else
  {
    action = sub_100005610();
    if (os_log_type_enabled(action, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, action, OS_LOG_TYPE_ERROR, "MapsActionController:  %@ didMergedRichMapsActivity richMapsActivity is nil", buf, 0xCu);
    }
  }

LABEL_19:
}

- (void)entryPointsCoordinator:(id)coordinator performErrorAction:(id)action
{
  actionCopy = action;
  v6 = sub_100005610();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = actionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "MapsActionController: performErrorAction %@", &v7, 0xCu);
  }

  [(MapsActionController *)self _performAction:actionCopy];
}

- (AppStateManager)appStateManager
{
  WeakRetained = objc_loadWeakRetained(&self->_appCoordinator);
  appStateManager = [WeakRetained appStateManager];

  return appStateManager;
}

- (NavActionCoordination)navActionCoordinator
{
  chrome = [(MapsActionController *)self chrome];
  topContext = [chrome topContext];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    actionCoordinator = [topContext actionCoordinator];
  }

  else
  {
    actionCoordinator = 0;
  }

  return actionCoordinator;
}

- (ActionCoordination)coordinator
{
  chrome = [(MapsActionController *)self chrome];
  topContext = [chrome topContext];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    actionCoordinator = [topContext actionCoordinator];
  }

  else
  {
    actionCoordinator = 0;
  }

  return actionCoordinator;
}

- (IOSChromeViewController)chrome
{
  WeakRetained = objc_loadWeakRetained(&self->_appCoordinator);
  chromeViewController = [WeakRetained chromeViewController];

  return chromeViewController;
}

@end