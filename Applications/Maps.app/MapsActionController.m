@interface MapsActionController
- (ActionCoordination)coordinator;
- (AppCoordinator)appCoordinator;
- (AppStateManager)appStateManager;
- (BOOL)isNavigationTurnByTurnOrStepping;
- (IOSChromeViewController)chrome;
- (MapsActionController)init;
- (NavActionCoordination)navActionCoordinator;
- (void)_applyActivity:(id)a3 assumedSourceFidelity:(unint64_t)a4 source:(int64_t)a5;
- (void)applyRichMapsActivity:(id)a3;
- (void)applyRichMapsActivityOrWaitForLocation:(id)a3;
- (void)entryPointsCoordinator:(id)a3 didMergedRichMapsActivity:(id)a4;
- (void)entryPointsCoordinator:(id)a3 performErrorAction:(id)a4;
- (void)getUserLocationIfneededFor:(id)a3;
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
  v3 = [WeakRetained isNavigationTurnByTurnOrStepping];

  return v3;
}

- (AppCoordinator)appCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_appCoordinator);

  return WeakRetained;
}

- (void)_applyActivity:(id)a3 assumedSourceFidelity:(unint64_t)a4 source:(int64_t)a5
{
  v8 = a3;
  v9 = [(MapsActionController *)self appStateManager];
  [v9 setMapsActivity:v8 assumedSourceFidelity:a4 source:a5];
}

- (void)applyRichMapsActivity:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = sub_100005610();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [v4 shortDescription];
      *buf = 138412290;
      v38 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "MapsActionController : applyRichMapsActivity %@", buf, 0xCu);
    }

    if ([v4 isTestingAction])
    {
      v7 = sub_100005610();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "MapsActionController : applyRichMapsActivity Resetting UI for Testing Action", buf, 2u);
      }

      v8 = [(MapsActionController *)self chrome];
      [v8 resetForTestingAction];

      v9 = sub_100005610();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "MapsActionController : applyRichMapsActivity Reset for Testing Complete", buf, 2u);
      }
    }

    if ([v4 needsUIReset])
    {
      v10 = sub_100005610();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "MapsActionController : applyRichMapsActivity resetting UI", buf, 2u);
      }

      v11 = [(MapsActionController *)self chrome];
      [v11 resetForLaunchURLWithOptions:0];
    }

    v12 = [v4 action];
    v13 = [v4 mapsActivity];
    if (v13)
    {
      v14 = +[NSUUID UUID];
      v15 = [v14 UUIDString];

      v16 = sub_100005610();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v38 = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "MapsActionController: apply (tag %@)", buf, 0xCu);
      }

      v17 = dispatch_get_global_queue(-2, 0);
      v31 = _NSConcreteStackBlock;
      v32 = 3221225472;
      v33 = sub_100D1ABB0;
      v34 = &unk_101661A90;
      v18 = v15;
      v35 = v18;
      v19 = v13;
      v36 = v19;
      dispatch_async(v17, &v31);

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = v12;
        -[MapsActionController _applyActivity:assumedSourceFidelity:source:](self, "_applyActivity:assumedSourceFidelity:source:", v19, [v20 fidelity], objc_msgSend(v20, "source"));
        v21 = +[GEOPlatform sharedPlatform];
        v22 = [v21 isInternalInstall];

        if (v22)
        {
          v23 = objc_autoreleasePoolPush();
          v24 = [v19 description];
          v25 = [v24 dataUsingEncoding:4];
          v26 = [v25 bzip2CompressedData];

          objc_autoreleasePoolPop(v23);
          v27 = +[NSUserDefaults standardUserDefaults];
          v28 = +[NSDate date];
          v29 = [v28 description];
          [v27 setObject:v29 forKey:@"dateLastUserActivity"];

          v30 = +[NSUserDefaults standardUserDefaults];
          [v30 setObject:v26 forKey:@"lastUserActivityData"];
        }
      }

      else
      {
        [(MapsActionController *)self _applyActivity:v19 assumedSourceFidelity:268435407 source:2, v31, v32, v33, v34, v35];
      }
    }

    [(MapsActionController *)self _performAction:v12];
    self->_isRestoringState = 0;
  }
}

- (void)getUserLocationIfneededFor:(id)a3
{
  v4 = a3;
  v5 = sub_100005610();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 shortDescription];
    *buf = 138412290;
    v26 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "MapsActionController : Wait Location for %@ ", buf, 0xCu);
  }

  GEOConfigGetDouble();
  v8 = v7;
  GEOConfigGetDouble();
  v10 = v9;
  v11 = +[MKLocationManager sharedLocationManager];
  v12 = [v4 action];
  [v12 userLocationDesiredAccuracy];
  v14 = v13;
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_100D1AE20;
  v20 = &unk_101651708;
  v23 = v8;
  v24 = v10;
  v21 = v4;
  v22 = self;
  v15 = v4;
  v16 = [v11 singleLocationUpdateWithDesiredAccuracy:&v17 handler:v14 timeout:v8 maxLocationAge:v10];
  [v16 start];
}

- (void)applyRichMapsActivityOrWaitForLocation:(id)a3
{
  v4 = a3;
  v5 = sub_100005610();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 shortDescription];
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "MapsActionController : applyRichMapsActivityOrWaitForLocation for %@ ", &v11, 0xCu);
  }

  v7 = +[MKLocationManager sharedLocationManager];
  v8 = [v7 isAuthorizedForPreciseLocation];

  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = [v4 action];
  if (![v9 needsUserLocation])
  {
    BOOL = GEOConfigGetBOOL();

    if (BOOL)
    {
      goto LABEL_7;
    }

LABEL_8:
    [(MapsActionController *)self applyRichMapsActivity:v4];
    goto LABEL_9;
  }

LABEL_7:
  [(MapsActionController *)self getUserLocationIfneededFor:v4];
LABEL_9:
}

- (void)navigationEnded
{
  if (self->_pendingActivityToApplyAfterNavEnd)
  {
    v3 = sub_100005610();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [(RichMapsActivity *)self->_pendingActivityToApplyAfterNavEnd shortDescription];
      *buf = 138412290;
      v8 = v4;
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

- (void)entryPointsCoordinator:(id)a3 didMergedRichMapsActivity:(id)a4
{
  v6 = a4;
  if (v6)
  {
    self->_isRestoringState = 1;
    v7 = +[UIApplication sharedMapsDelegate];
    [v7 dismissCurrentInterruption];

    v8 = [v6 action];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [(MapsActionController *)self isNavigationTurnByTurnOrStepping]&& ([v8 isCompatibleWithNavigation]& 1) == 0)
    {
      v9 = +[MNNavigationService sharedService];
      v10 = [v9 route];
      v11 = [v10 destination];

      v12 = [v6 mapsActivity];
      v13 = [v12 directionsPlan];
      v14 = [v13 planningWaypoints];
      v15 = [v14 lastObject];
      v16 = [v15 waypoint];

      if (v11)
      {
        if (v16)
        {
          v17 = [v11 mapItemStorage];
          v18 = [v16 mapItemStorage];
          IsEqualToMapItemForPurpose = GEOMapItemIsEqualToMapItemForPurpose();

          if (IsEqualToMapItemForPurpose)
          {
            v20 = sub_100005610();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              v21 = [v11 shortDescription];
              v22 = [v16 shortDescription];
              *buf = 138412546;
              v35 = v21;
              v36 = 2112;
              v37 = v22;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "MapsActionController: Skipping application of route restoration, currentDestination: %@, restorationDestination: %@", buf, 0x16u);
            }

            goto LABEL_19;
          }
        }
      }
    }

    if ([(MapsActionController *)self isNavigationTurnByTurnOrStepping]&& ([v8 isCompatibleWithNavigation]& 1) == 0)
    {
      objc_storeStrong(&self->_pendingActivityToApplyAfterNavEnd, a4);
      v24 = sub_100005610();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = [(RichMapsActivity *)self->_pendingActivityToApplyAfterNavEnd shortDescription];
        *buf = 138412290;
        v35 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "MapsActionController: NavigatingOrStepping is running for pending %@ ", buf, 0xCu);
      }

      v26 = [v8 forceEndNavigation];
      v27 = sub_100005610();
      v28 = os_log_type_enabled(v27, OS_LOG_TYPE_INFO);
      if (v26)
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
        v32 = v6;
        v33 = self;
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

      [(MapsActionController *)self applyRichMapsActivityOrWaitForLocation:v6];
    }
  }

  else
  {
    v8 = sub_100005610();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v35 = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "MapsActionController:  %@ didMergedRichMapsActivity richMapsActivity is nil", buf, 0xCu);
    }
  }

LABEL_19:
}

- (void)entryPointsCoordinator:(id)a3 performErrorAction:(id)a4
{
  v5 = a4;
  v6 = sub_100005610();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "MapsActionController: performErrorAction %@", &v7, 0xCu);
  }

  [(MapsActionController *)self _performAction:v5];
}

- (AppStateManager)appStateManager
{
  WeakRetained = objc_loadWeakRetained(&self->_appCoordinator);
  v3 = [WeakRetained appStateManager];

  return v3;
}

- (NavActionCoordination)navActionCoordinator
{
  v2 = [(MapsActionController *)self chrome];
  v3 = [v2 topContext];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 actionCoordinator];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (ActionCoordination)coordinator
{
  v2 = [(MapsActionController *)self chrome];
  v3 = [v2 topContext];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 actionCoordinator];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (IOSChromeViewController)chrome
{
  WeakRetained = objc_loadWeakRetained(&self->_appCoordinator);
  v3 = [WeakRetained chromeViewController];

  return v3;
}

@end