@interface RAPNavigationTracker
- (BOOL)canPresentRapFeedbackView;
- (RAPNavigationTracker)initWithPlatformController:(id)a3;
- (void)_createRapAppStateWithCompletion:(id)a3;
- (void)_reset;
- (void)_updateWithRunningNavigation:(BOOL)a3;
- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5;
@end

@implementation RAPNavigationTracker

- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  v6 = sub_100798874();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = MNNavigationServiceStateAsString();
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Tracker: navigationService is now in state: %@", &v8, 0xCu);
  }

  [(RAPNavigationTracker *)self _updateWithRunningNavigation:MNNavigationServiceStateChangedToNavigating()];
}

- (BOOL)canPresentRapFeedbackView
{
  v3 = +[MapsOfflineUIHelper sharedHelper];
  v4 = [v3 isUsingOfflineMaps];

  if ((v4 & 1) == 0)
  {
    if (!_MKRAPIsAvailable() || sub_1007413D0())
    {
      v6 = sub_100798874();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = @"NO";
        v7 = "shouldDisplayAfterNavigationFeedbackFlow returned NO -> isRAPAvailable: %@";
LABEL_7:
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, v7, buf, 0xCu);
        goto LABEL_23;
      }

      goto LABEL_23;
    }

    if (_GEOConfigHasValue())
    {
      if (GEOConfigGetBOOL())
      {
        goto LABEL_10;
      }

LABEL_16:
      v8 = @"NO";
      goto LABEL_17;
    }

    v40 = [NSNumber numberWithUnsignedInt:118];
    v41[0] = v40;
    *buf = &off_1016EE2B8;
    v39 = [NSNumber numberWithUnsignedInt:119];
    v41[1] = v39;
    *&buf[8] = &off_1016EE2E0;
    v38 = [NSNumber numberWithUnsignedInt:120];
    v41[2] = v38;
    *&buf[16] = &off_1016EE308;
    v12 = [NSNumber numberWithUnsignedInt:121];
    v41[3] = v12;
    v43 = &off_1016EE330;
    v13 = [NSNumber numberWithUnsignedInt:122];
    v41[4] = v13;
    *&v44 = &off_1016EE358;
    v14 = [NSNumber numberWithUnsignedInt:123];
    v41[5] = v14;
    *(&v44 + 1) = &off_1016EE380;
    v15 = [NSNumber numberWithUnsignedInt:124];
    v41[6] = v15;
    v45 = &off_1016EE3A8;
    v16 = [NSNumber numberWithUnsignedInt:125];
    v41[7] = v16;
    v46 = &off_1016EE3D0;
    v17 = [NSNumber numberWithUnsignedInt:126];
    v41[8] = v17;
    v47 = &off_1016EE3F8;
    v18 = [NSNumber numberWithUnsignedInt:398];
    v41[9] = v18;
    v48 = &off_1016EE420;
    v19 = [NSDictionary dictionaryWithObjects:buf forKeys:v41 count:10];

    v20 = [NSNumber numberWithUnsignedInt:409];
    v21 = [v19 objectForKeyedSubscript:v20];

    v22 = +[GEOCountryConfiguration sharedConfiguration];
    v23 = [v22 countryCode];
    v24 = [v21 objectForKey:v23];

    if (v24)
    {
      v25 = [v24 BOOLValue];

      if ((v25 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      BOOL = GEOConfigGetBOOL();

      if (!BOOL)
      {
        goto LABEL_16;
      }
    }

LABEL_10:
    v8 = @"YES";
    if (!self->_latestNavigationIsDetour)
    {
      Current = CFAbsoluteTimeGetCurrent();
      GEOConfigGetDouble();
      v11 = v10;
      if (Current < self->_latestNavigationStartedDate + v10)
      {
        v6 = sub_100798874();
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          goto LABEL_23;
        }

        *buf = 134217984;
        *&buf[4] = v11;
        v7 = "shouldDisplayAfterNavigationFeedbackFlow returned NO -> required delay of: %ld hasn't passed since nav started";
        goto LABEL_7;
      }

      if (self->_displayedDirectionsPlan && self->_activeComposedRoute && self->_currentDirections && self->_appState)
      {
        v6 = sub_100798874();
        v5 = 1;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "shouldDisplayAfterNavigationFeedbackFlow returned YES -> All requirements met", buf, 2u);
        }

        goto LABEL_24;
      }

      v6 = sub_100798874();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
LABEL_23:
        v5 = 0;
LABEL_24:

        return v5;
      }

      if (self->_displayedDirectionsPlan)
      {
        v31 = @"NO";
      }

      else
      {
        v31 = @"YES";
      }

      v26 = v31;
      if (self->_activeComposedRoute)
      {
        v32 = @"NO";
      }

      else
      {
        v32 = @"YES";
      }

      v33 = v32;
      if (self->_currentDirections)
      {
        v34 = @"NO";
      }

      else
      {
        v34 = @"YES";
      }

      v35 = v34;
      if (self->_appState)
      {
        v36 = @"NO";
      }

      else
      {
        v36 = @"YES";
      }

      v37 = v36;
      *buf = 138413058;
      *&buf[4] = v26;
      *&buf[12] = 2112;
      *&buf[14] = v33;
      *&buf[22] = 2112;
      v43 = v35;
      LOWORD(v44) = 2112;
      *(&v44 + 2) = v37;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "shouldDisplayAfterNavigationFeedbackFlow returned NO -> a required property was nil. _displayedDirectionsPlan: %@, _activeComposedRoute: %@, _currentDirections: %@, _appState: %@", buf, 0x2Au);

LABEL_22:
      goto LABEL_23;
    }

LABEL_17:
    v6 = sub_100798874();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      goto LABEL_23;
    }

    v26 = v8;
    if (self->_latestNavigationIsDetour)
    {
      v27 = @"YES";
    }

    else
    {
      v27 = @"NO";
    }

    v28 = v27;
    *buf = 138412546;
    *&buf[4] = v26;
    *&buf[12] = 2112;
    *&buf[14] = v28;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "shouldDisplayAfterNavigationFeedbackFlow returned NO -> isAfterNavigationFlowAvailable: %@, _latestNavigationIsDetour: %@", buf, 0x16u);

    goto LABEL_22;
  }

  return 0;
}

- (void)_reset
{
  self->_latestNavigationStartedDate = 0.0;
  self->_latestNavigationIsDetour = 0;
  activeComposedRoute = self->_activeComposedRoute;
  self->_activeComposedRoute = 0;

  currentDirections = self->_currentDirections;
  self->_currentDirections = 0;

  displayedDirectionsPlan = self->_displayedDirectionsPlan;
  self->_displayedDirectionsPlan = 0;

  self->_isShowingDirections = 0;
  appState = self->_appState;
  self->_appState = 0;
}

- (void)_createRapAppStateWithCompletion:(id)a3
{
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_100661074;
  v52[3] = &unk_101624E78;
  v28 = a3;
  v53 = v28;
  v31 = objc_retainBlock(v52);
  WeakRetained = objc_loadWeakRetained(&self->_platformController);
  v30 = [WeakRetained chromeViewController];
  if (!WeakRetained || !v30)
  {
    v14 = sub_100798874();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Tracker won't create RAP state because either platformController or chrome is missing.", buf, 2u);
    }

    (v31[2])(v31, @"Tracker was in invalid configuration and couldn't create app state.");
    goto LABEL_29;
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v3 = [WeakRetained sessionStack];
  v4 = [v3 countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (!v4)
  {

    v5 = 0;
    v33 = 0;
    goto LABEL_25;
  }

  v33 = 0;
  v5 = 0;
  v6 = *v49;
  do
  {
    for (i = 0; i != v4; i = i + 1)
    {
      if (*v49 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v48 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v33;
        v33 = v8;
        v10 = v5;
      }

      else
      {
        objc_opt_class();
        v9 = v5;
        v10 = v8;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          continue;
        }
      }

      v11 = v8;

      v5 = v10;
    }

    v4 = [v3 countByEnumeratingWithState:&v48 objects:v54 count:16];
  }

  while (v4);

  if (!v5 || !v33)
  {
LABEL_25:
    v15 = sub_100798874();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Tracker won't create RAP state because we are not currently navigating", buf, 2u);
    }

    goto LABEL_27;
  }

  v12 = [v5 currentTransportType];
  if (v12 <= 4 && ((1 << v12) & 0x19) != 0)
  {
    v13 = sub_100798874();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Tracker won't create RAP state because this is not a supported transport type", buf, 2u);
    }

    (v31[2])(v31, @"Can't create directions RAP for transit.");
    goto LABEL_28;
  }

  v16 = [v5 currentRouteCollection];
  if (!v16)
  {
    v16 = [v33 currentRouteCollection];
    if (!v16)
    {
      v15 = sub_100798874();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Tracker can't create RAP state because we don't have a valid route collection", buf, 2u);
      }

LABEL_27:

      (v31[2])(v31, @"Tracker was in invalid configuration and couldn't create app state.");
      goto LABEL_28;
    }
  }

  v17 = [v33 reportAProblemRecorder];
  v18 = v17 == 0;

  if (v18)
  {
    v27 = sub_100798874();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_FAULT, "Tracker can't create RAP because the RP session doesn't have a recorder", buf, 2u);
    }

    (v31[2])(v31, @"Tracker was in invalid configuration and couldn't create app state.");
  }

  else
  {
    *buf = 0;
    v47 = 0;
    v19 = +[GEOUserSession sharedInstance];
    v44 = [v19 navSessionID];
    v45 = v20;

    if ((GEOSessionIDEquals() & 1) == 0)
    {
      v21 = [v33 reportAProblemRecorder];
      [v21 recordNewSessionID:{v44, v45}];
    }

    v22 = [v16 currentRoute];
    v23 = [v22 geoWaypointRoute];
    v24 = [v23 identifier];

    objc_initWeak(&location, self);
    v25 = [v33 reportAProblemRecorder];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100661180;
    v34[3] = &unk_101624EC8;
    objc_copyWeak(&v41, &location);
    v39 = v28;
    v42 = v24;
    v40 = v31;
    v26 = v16;
    v35 = v26;
    v5 = v5;
    v36 = v5;
    v33 = v33;
    v37 = v33;
    v38 = v30;
    [v25 savePartialRecordingWithCompletion:v34];

    objc_destroyWeak(&v41);
    objc_destroyWeak(&location);
  }

LABEL_28:

LABEL_29:
}

- (void)_updateWithRunningNavigation:(BOOL)a3
{
  if (self->_isShowingDirections != a3)
  {
    v3 = a3;
    v5 = sub_100798874();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      if (v3)
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      v7 = v6;
      if (self->_isShowingDirections)
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      v9 = v8;
      v12 = 138412546;
      v13 = v7;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Tracker _updateWithRunningNavigation: %@, currently running navigation: %@", &v12, 0x16u);
    }

    [(RAPNavigationTracker *)self _reset];
    self->_isShowingDirections = v3;
    if (v3)
    {
      v10 = sub_100798874();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Tracker _updateWithRunningNavigation: will try to capture recording", &v12, 2u);
      }

      self->_latestNavigationStartedDate = CFAbsoluteTimeGetCurrent();
      v11 = +[MNNavigationService sharedService];
      self->_latestNavigationIsDetour = [v11 isDetour];

      [(RAPNavigationTracker *)self _createRapAppStateWithCompletion:0];
    }
  }
}

- (RAPNavigationTracker)initWithPlatformController:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = RAPNavigationTracker;
  v5 = [(RAPNavigationTracker *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_platformController, v4);
    v7 = +[MNNavigationService sharedService];
    [v7 registerObserver:v6];

    v8 = sub_100798874();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Creating new RAPNavigationTracker.", v11, 2u);
    }

    v9 = +[MNNavigationService sharedService];
    -[RAPNavigationTracker _updateWithRunningNavigation:](v6, "_updateWithRunningNavigation:", [v9 isInNavigatingState]);
  }

  return v6;
}

@end