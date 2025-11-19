@interface CarChromeModeCoordinator
+ (id)createHomeContext;
+ (id)sharedInstance;
- (CarChromeModeCoordinator)init;
- (SiriDirectActionSource)siriActionSource;
- (id)_appendOrReplaceRoutePlanningContextForSession:(id)a3 currentContexts:(id)a4;
- (id)_replaceTopmostSearchResultContexts:(id)a3 withContext:(id)a4;
- (void)_displayIncidentReportingFromMapControl:(BOOL)a3;
- (void)_displayKeyboardSearchWithInteractionModel:(unint64_t)a3 resultsProvider:(id)a4 animated:(BOOL)a5;
- (void)_displayMapRegion:(id *)a3 animated:(BOOL)a4;
- (void)_displayNavigationAnimated:(BOOL)a3;
- (void)_displaySearchAlongTheRouteForMapItems:(id)a3 selectedItemIndex:(unint64_t)a4;
- (void)_displaySearchAlongTheRouteForSearchSession:(id)a3;
- (void)_displaySiriSearch;
- (void)_handleClientResolvedResultForSearchSession:(id)a3;
- (void)_performActionForCarBlock:(id)a3 dashboardMapBlock:(id)a4 smallWidgetsBlock:(id)a5;
- (void)_resolveSearchFieldItemWithSearchInfo:(id)a3 withCompletion:(id)a4;
- (void)_scheduleCoordinatedContextChangeForViewController:(id)a3 carBlock:(id)a4 dashboardMapBlock:(id)a5 smallWidgetsBlock:(id)a6;
- (void)_scheduleCoordinatedContextChangeWithCarBlock:(id)a3 dashboardMapBlock:(id)a4 smallWidgetsBlock:(id)a5;
- (void)_sendSearchCancelFeedback;
- (void)cleanupForDisconnect;
- (void)dealloc;
- (void)displayAllSharedTrips;
- (void)displayAudioControlView;
- (void)displayIncidentReportSubmissionWithItem:(id)a3 report:(id)a4;
- (void)displayKeyboardSearchWithInteractionModel:(unint64_t)a3;
- (void)displayNavigationForRouteCollection:(id)a3 options:(NavigationDetailsOptions *)a4;
- (void)displayPlaceCardWithPlaceCardItem:(id)a3 shouldNotify:(BOOL)a4;
- (void)displayPlaceCardWithSearchResult:(id)a3;
- (void)displayRouteGenius;
- (void)displayRoutePlanningForDestination:(id)a3 userInfo:(id)a4;
- (void)displayRoutePlanningForExistingRoute;
- (void)displayRoutePlanningForSession:(id)a3 userInfo:(id)a4;
- (void)displaySearchAlongTheRouteForCategory:(id)a3;
- (void)displaySearchResultsWithCategory:(id)a3;
- (void)displaySearchResultsWithCollection:(id)a3;
- (void)displaySearchSession:(id)a3;
- (void)displaySearchWithInteractionModel:(unint64_t)a3;
- (void)displaySharedTrip:(id)a3;
- (void)displaySiriTripSharing;
- (void)displayTripSharing;
- (void)displayTripSharingContactKeyboardSearchWithInteractionModel:(unint64_t)a3 dataSource:(id)a4 searchHandler:(id)a5;
- (void)endPlaceCardWithItem:(id)a3;
- (void)endSearchSession:(id)a3;
- (void)goToDetail;
- (void)goToOverview;
- (void)launchIntoKeyboardSearchWithRequestedInteractionModel:(unint64_t)a3;
- (void)popFromContext:(id)a3;
- (void)refreshSessionWithEVResults:(id)a3 contexts:(id)a4;
@end

@implementation CarChromeModeCoordinator

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10096A908;
  block[3] = &unk_1016611D0;
  block[4] = a1;
  if (qword_10195DE58 != -1)
  {
    dispatch_once(&qword_10195DE58, block);
  }

  v2 = qword_10195DE50;

  return v2;
}

- (void)displayTripSharing
{
  if (MSPSharedTripSharingAvailable())
  {
    v3 = sub_100006E1C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Will push share trip mode controller", &v8, 2u);
    }

    [(CarChromeModeCoordinator *)self _scheduleCoordinatedContextChangeWithCarBlock:&stru_10162FEE0 dashboardMapBlock:0 smallWidgetsBlock:0];
  }

  else
  {
    v4 = sub_10006D178();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [NSString stringWithFormat:@"We cannot Share ETA, not enabled"];
      v8 = 136316162;
      v9 = "[CarChromeModeCoordinator displayTripSharing]";
      v10 = 2080;
      v11 = "CarChromeModeCoordinator.m";
      v12 = 1024;
      v13 = 1541;
      v14 = 2080;
      v15 = "NO";
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", &v8, 0x30u);
    }

    if (sub_100E03634())
    {
      v6 = sub_10006D178();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = +[NSThread callStackSymbols];
        v8 = 138412290;
        v9 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%@", &v8, 0xCu);
      }
    }
  }
}

- (void)cleanupForDisconnect
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(NSHashTable *)self->_chromeViewControllers allObjects];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) scheduleCoordinatedContextChange:&stru_10162FF00 completionHandler:0];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)displaySiriTripSharing
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 bundleIdentifier];
  v6 = [SiriDirectActionContext mapShareEtaDirectActionWithAppBundleId:v4];

  v5 = [(CarChromeModeCoordinator *)self siriActionSource];
  [v5 activateWithContext:v6];
}

- (void)displayTripSharingContactKeyboardSearchWithInteractionModel:(unint64_t)a3 dataSource:(id)a4 searchHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [[CarShareTripKeyboardSearchController alloc] initWithContactSearchResults:0 dataSource:v8 searchHandler:v9];
  objc_initWeak(&location, v10);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10096129C;
  v11[3] = &unk_101661340;
  v11[4] = self;
  objc_copyWeak(&v12, &location);
  [(CarShareTripKeyboardSearchController *)v10 setDismissHandler:v11];
  [(CarChromeModeCoordinator *)self _displayKeyboardSearchWithInteractionModel:a3 resultsProvider:v10 animated:1];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)displaySharedTrip:(id)a3
{
  v4 = a3;
  if (MSPSharedTripReceivingAvailable())
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100961514;
    v10[3] = &unk_10165FB98;
    v11 = v4;
    v5 = objc_retainBlock(v10);
    [(CarChromeModeCoordinator *)self _scheduleCoordinatedContextChangeWithCarBlock:v5 dashboardMapBlock:0 smallWidgetsBlock:0];

    v6 = v11;
LABEL_3:

    goto LABEL_9;
  }

  v7 = sub_10006D178();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = [NSString stringWithFormat:@"We cannot show shared trip, feature not enabled"];
    *buf = 136316162;
    v13 = "[CarChromeModeCoordinator displaySharedTrip:]";
    v14 = 2080;
    v15 = "CarChromeModeCoordinator.m";
    v16 = 1024;
    v17 = 1527;
    v18 = 2080;
    v19 = "NO";
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", buf, 0x30u);
  }

  if (sub_100E03634())
  {
    v6 = sub_10006D178();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = +[NSThread callStackSymbols];
      *buf = 138412290;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    goto LABEL_3;
  }

LABEL_9:
}

- (void)displayAllSharedTrips
{
  if (MSPSharedTripReceivingAvailable())
  {

    [(CarChromeModeCoordinator *)self _scheduleCoordinatedContextChangeWithCarBlock:&stru_10162FEC0 dashboardMapBlock:0 smallWidgetsBlock:0];
  }

  else
  {
    v3 = sub_10006D178();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [NSString stringWithFormat:@"We cannot show shared trips, not enabled"];
      v7 = 136316162;
      v8 = "[CarChromeModeCoordinator displayAllSharedTrips]";
      v9 = 2080;
      v10 = "CarChromeModeCoordinator.m";
      v11 = 1024;
      v12 = 1513;
      v13 = 2080;
      v14 = "NO";
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", &v7, 0x30u);
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
  }
}

- (void)goToOverview
{
  v3 = +[CarDisplayController sharedInstance];
  v4 = [v3 isAnyCarSceneHostingNavigation];

  if (v4)
  {

    [(CarChromeModeCoordinator *)self _performActionForCarBlock:&stru_10162FE80 dashboardMapBlock:&stru_10162FEA0 smallWidgetsBlock:0];
  }

  else
  {
    v5 = sub_100006E1C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Will not show Overview, no active nav running", v6, 2u);
    }
  }
}

- (void)goToDetail
{
  v3 = +[CarDisplayController sharedInstance];
  v4 = [v3 isAnyCarSceneHostingNavigation];

  if (v4)
  {

    [(CarChromeModeCoordinator *)self _performActionForCarBlock:&stru_10162FE40 dashboardMapBlock:&stru_10162FE60 smallWidgetsBlock:0];
  }

  else
  {
    v5 = sub_100006E1C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Will not show Overview, no active nav running", v6, 2u);
    }
  }
}

- (void)_displayNavigationAnimated:(BOOL)a3
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1009622F8;
  v12[3] = &unk_10162FD60;
  v13 = a3;
  v5 = objc_retainBlock(v12);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100962A1C;
  v10[3] = &unk_10162FC70;
  v10[4] = self;
  v11 = a3;
  v6 = objc_retainBlock(v10);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1009633E8;
  v8[3] = &unk_10162FD60;
  v9 = a3;
  v7 = objc_retainBlock(v8);
  [(CarChromeModeCoordinator *)self _scheduleCoordinatedContextChangeWithCarBlock:v5 dashboardMapBlock:v6 smallWidgetsBlock:v7];
}

- (void)displayNavigationForRouteCollection:(id)a3 options:(NavigationDetailsOptions *)a4
{
  v5 = a3;
  v6 = [v5 currentRoute];
  v7 = [v6 carplayDestinationHandoffRequired];

  if (v7)
  {
    v8 = sub_100006E1C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "[CarChromeModeCoordinator displayNavigationForRouteCollection:options:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s was called while requiring NAD handoff. This is not supported.", buf, 0xCu);
    }
  }

  v9 = +[CarDisplayController sharedInstance];
  v10 = [v9 platformController];

  v11 = [v10 currentSession];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v15 = [v10 currentSession];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v13 = v16;

    v17 = [v10 currentSession];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;

    v38 = v19;
    if (v19)
    {
      v20 = [v19 configuration];
      v21 = [v20 isResumingMultipointRoute];
      v22 = 0;
    }

    else
    {
      if (!v13)
      {
        v22 = 0;
        v21 = 0;
LABEL_23:
        v25 = [NavigationSessionBuilder alloc];
        v26 = +[CarDisplayController sharedInstance];
        v27 = [v26 chromeViewController];
        v28 = [v27 currentTraits];
        v29 = *&a4->guidanceType;
        *buf = *&a4->shouldSimulateLocations;
        v40 = v29;
        v41 = *&a4->isReconnecting;
        navigationModeContext = a4->navigationModeContext;
        v30 = [(NavigationSessionBuilder *)v25 initWithRouteCollection:v5 navigationDetailsOptions:buf mapServiceTraits:v28 sessionInitiator:2 isResumingMultipointRoute:v21 tracePlaybackPath:0];
        v31 = [(NavigationSessionBuilder *)v30 build];

        if ([v22 count])
        {
          v32 = [v31 configuration];
          v33 = [v32 sharedTripPrefetchContext];

          [v33 setAutomaticSharingContacts:v22];
          v34 = sub_100006E1C();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v35 = [v22 count];
            *buf = 134217984;
            *&buf[4] = v35;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Populated %lu Share ETA contacts from RG entry", buf, 0xCu);
          }
        }

        v36 = [v10 currentSession];
        objc_opt_class();
        v37 = objc_opt_isKindOfClass();

        if (v37)
        {
          [v10 replaceCurrentSessionWithSession:v31];
        }

        else
        {
          [v10 pushSession:v31];
        }

        v14 = v38;

        goto LABEL_31;
      }

      v23 = [v13 routeGeniusEntry];
      v20 = [v23 entry];

      if ([v20 type] == 11)
      {
        v24 = [v20 waypoints];
        v21 = [v24 count] > 2;
      }

      else
      {
        v21 = 0;
      }

      v22 = [v20 sharingContacts];
    }

    goto LABEL_23;
  }

  v13 = sub_100006E1C();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = [v10 currentSession];
    *buf = 138412290;
    *&buf[4] = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Attempted to begin navigation, but there is already a NavigationSession on the sessionStack: %@", buf, 0xCu);
LABEL_31:
  }
}

- (void)displayRoutePlanningForExistingRoute
{
  v3 = +[CarDisplayController sharedInstance];
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

  v8 = sub_100006E1C();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Found RoutePlanningSession, will display route planning context for it", buf, 2u);
    }

    [(CarChromeModeCoordinator *)self displayRoutePlanningForSession:v7 userInfo:0];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Did not find existing RoutePlanningSession, doing nothing", v10, 2u);
    }
  }
}

- (void)displayRoutePlanningForDestination:(id)a3 userInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10000B11C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v22 = "[CarChromeModeCoordinator displayRoutePlanningForDestination:userInfo:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  if (v6)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100964404;
    v17[3] = &unk_10162FBB0;
    v18 = v6;
    v9 = v7;
    v19 = v9;
    v20 = self;
    v10 = objc_retainBlock(v17);
    v11 = [v9 objectForKeyedSubscript:@"skipEndNavigationPrompt"];
    v12 = [v11 BOOLValue];

    v13 = +[CarSessionController sharedInstance];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100964EC4;
    v15[3] = &unk_101655D58;
    v15[4] = self;
    v16 = v10;
    v14 = v10;
    [v13 endNavigationIfNeededWithPrompt:v12 ^ 1 andPerformBlock:v15];
  }
}

- (id)_appendOrReplaceRoutePlanningContextForSession:(id)a3 currentContexts:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 _maps_firstContextOfClass:objc_opt_class()];
  v8 = v7;
  if (v7)
  {
    [v7 setRoutePlanningSession:v5];
    v9 = [v6 _maps_subarrayToIndex:{objc_msgSend(v6, "indexOfObject:", v8)}];
  }

  else
  {
    v10 = [[_TtC4Maps23CarRoutePlanningContext alloc] initWithRoutePlanningSession:v5];
    v9 = [v6 arrayByAddingObject:v10];
  }

  return v9;
}

- (void)displayRoutePlanningForSession:(id)a3 userInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10000B11C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v16 = "[CarChromeModeCoordinator displayRoutePlanningForSession:userInfo:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  v9 = [v7 objectForKeyedSubscript:@"skipEndNavigationPrompt"];

  v10 = [v9 BOOLValue];
  v11 = +[CarSessionController sharedInstance];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100965140;
  v13[3] = &unk_101661570;
  v13[4] = self;
  v14 = v6;
  v12 = v6;
  [v11 endNavigationIfNeededWithPrompt:v10 ^ 1 andPerformBlock:v13];
}

- (void)displaySearchResultsWithCollection:(id)a3
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1009652A4;
  v6[3] = &unk_10165FB98;
  v7 = a3;
  v4 = v7;
  v5 = objc_retainBlock(v6);
  [(CarChromeModeCoordinator *)self _scheduleCoordinatedContextChangeWithCarBlock:v5 dashboardMapBlock:0 smallWidgetsBlock:0];
}

- (void)endPlaceCardWithItem:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1009654D0;
  v5[3] = &unk_10165FB98;
  v6 = a3;
  v4 = v6;
  [(CarChromeModeCoordinator *)self _scheduleCoordinatedContextChangeWithCarBlock:v5 dashboardMapBlock:0 smallWidgetsBlock:0];
}

- (void)displayPlaceCardWithSearchResult:(id)a3
{
  v4 = a3;
  v5 = [[PlaceCardItem alloc] initWithSearchResult:v4];

  [(CarChromeModeCoordinator *)self displayPlaceCardWithPlaceCardItem:v5];
}

- (void)displayPlaceCardWithPlaceCardItem:(id)a3 shouldNotify:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100965740;
    v15[3] = &unk_10165FB98;
    v8 = v6;
    v16 = v8;
    v9 = objc_retainBlock(v15);
    [(CarChromeModeCoordinator *)self _scheduleCoordinatedContextChangeWithCarBlock:v9 dashboardMapBlock:0 smallWidgetsBlock:0];
    if (v4)
    {
      v10 = [PlaceCardSynchronizationNotificationInfo alloc];
      v11 = +[CarDisplayController sharedInstance];
      v12 = [v11 platformController];
      v13 = [(PlaceCardSynchronizationNotificationInfo *)v10 initWithPlaceCardItem:v8 platformController:v12];

      v14 = +[NSNotificationCenter defaultCenter];
      [v14 postNotificationName:@"CarPlaceCardDidPresent" object:v13];
    }
  }
}

- (id)_replaceTopmostSearchResultContexts:(id)a3 withContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    objc_opt_class();
    v7 = objc_opt_isKindOfClass() & 1;
    *buf = 0;
    v15 = buf;
    v16 = 0x2020000000;
    v17 = [v5 count] - 1;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100965A28;
    v12[3] = &unk_10162FD00;
    v13 = v7;
    v12[4] = buf;
    [v5 enumerateObjectsWithOptions:2 usingBlock:v12];
    v8 = [v5 _maps_subarrayToIndex:*(v15 + 3)];

    v9 = [v8 arrayByAddingObject:v6];
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = sub_100006E1C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Tried to replace top-most non-search mode with a nil. -> Ignoring the call.", buf, 2u);
    }

    v8 = v5;
    v9 = v8;
  }

  return v9;
}

- (void)displaySearchResultsWithCategory:(id)a3
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100965CF0;
  v6[3] = &unk_10165FB98;
  v7 = a3;
  v4 = v7;
  v5 = objc_retainBlock(v6);
  [(CarChromeModeCoordinator *)self _scheduleCoordinatedContextChangeWithCarBlock:v5 dashboardMapBlock:0 smallWidgetsBlock:0];
}

- (void)_displayKeyboardSearchWithInteractionModel:(unint64_t)a3 resultsProvider:(id)a4 animated:(BOOL)a5
{
  v8 = a4;
  v9 = +[MapsExternalDevice sharedInstance];
  v10 = [v9 disableSoftwareKeyboard];

  if (v10)
  {
    v11 = sub_100006E1C();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Will not show keyboard, car does not permit it", buf, 2u);
    }
  }

  else
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100966018;
    v13[3] = &unk_10162FCB8;
    v16 = a5;
    v15 = a3;
    v14 = v8;
    v12 = objc_retainBlock(v13);
    [(CarChromeModeCoordinator *)self _scheduleCoordinatedContextChangeWithCarBlock:v12 dashboardMapBlock:0 smallWidgetsBlock:0];

    v11 = v14;
  }
}

- (void)displayKeyboardSearchWithInteractionModel:(unint64_t)a3
{
  v5 = objc_alloc_init(CarKeyboardSearchResultsViewController);
  [(CarChromeModeCoordinator *)self _displayKeyboardSearchWithInteractionModel:a3 resultsProvider:v5 animated:1];
}

- (void)launchIntoKeyboardSearchWithRequestedInteractionModel:(unint64_t)a3
{
  v5 = objc_alloc_init(CarKeyboardSearchResultsViewController);
  [(CarChromeModeCoordinator *)self _displayKeyboardSearchWithInteractionModel:a3 resultsProvider:v5 animated:0];
}

- (void)_sendSearchCancelFeedback
{
  v2 = sub_100006E1C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Notified search was canceled", v5, 2u);
  }

  v3 = +[CarDisplayController sharedInstance];
  v4 = [v3 chromeViewController];
  [v4 captureUserAction:18];
}

- (void)_displaySiriSearch
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 bundleIdentifier];
  v8 = [SiriDirectActionContext mapSearchDirectActionWithAppBundleId:v4];

  v5 = [(CarChromeModeCoordinator *)self siriActionSource];
  [v5 activateWithContext:v8];

  v6 = +[CarDisplayController sharedInstance];
  v7 = [v6 chromeViewController];
  [v7 captureUserAction:8009 onTarget:1010];
}

- (void)displaySearchWithInteractionModel:(unint64_t)a3
{
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 BOOLForKey:@"StarkSearchEnableKeyboard"];

  v7 = sub_100006E1C();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Will show CarKeyboardModeController because it is set in user defaults", buf, 2u);
    }

    [(CarChromeModeCoordinator *)self displayKeyboardSearchWithInteractionModel:a3];
  }

  else
  {
    if (v8)
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Will show Siri search", v9, 2u);
    }

    [(CarChromeModeCoordinator *)self _displaySiriSearch];
  }
}

- (void)displayIncidentReportSubmissionWithItem:(id)a3 report:(id)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10096666C;
  v9[3] = &unk_10162FBB0;
  v10 = a3;
  v11 = a4;
  v12 = self;
  v6 = v11;
  v7 = v10;
  v8 = objc_retainBlock(v9);
  [(CarChromeModeCoordinator *)self _scheduleCoordinatedContextChangeWithCarBlock:v8 dashboardMapBlock:0 smallWidgetsBlock:0];
}

- (void)_displayIncidentReportingFromMapControl:(BOOL)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100966864;
  v5[3] = &unk_10162FC70;
  v6 = a3;
  v5[4] = self;
  v4 = objc_retainBlock(v5);
  [(CarChromeModeCoordinator *)self _scheduleCoordinatedContextChangeWithCarBlock:v4 dashboardMapBlock:0 smallWidgetsBlock:0];
}

- (void)displayAudioControlView
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100966A5C;
  v4[3] = &unk_10165FB98;
  v4[4] = self;
  v3 = objc_retainBlock(v4);
  [(CarChromeModeCoordinator *)self _scheduleCoordinatedContextChangeWithCarBlock:v3 dashboardMapBlock:0 smallWidgetsBlock:0];
}

- (void)endSearchSession:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100966D60;
    v8[3] = &unk_10165FB98;
    v9 = v4;
    v6 = objc_retainBlock(v8);
    [(CarChromeModeCoordinator *)self _scheduleCoordinatedContextChangeWithCarBlock:v6 dashboardMapBlock:0 smallWidgetsBlock:0];

    v7 = v9;
  }

  else
  {
    v7 = sub_100006E1C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Will not end search session, nil session provided.", buf, 2u);
    }
  }
}

- (void)_displaySearchAlongTheRouteForMapItems:(id)a3 selectedItemIndex:(unint64_t)a4
{
  v6 = a3;
  if ([v6 count])
  {
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_100967274;
    v12 = &unk_10162FC28;
    v13 = v6;
    v14 = a4;
    v7 = objc_retainBlock(&v9);
    [(CarChromeModeCoordinator *)self _scheduleCoordinatedContextChangeWithCarBlock:v7 dashboardMapBlock:0 smallWidgetsBlock:0, v9, v10, v11, v12];

    v8 = v13;
  }

  else
  {
    v8 = sub_100006E1C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Will not show or update SAR mode, zero map items received", buf, 2u);
    }
  }
}

- (void)_displaySearchAlongTheRouteForSearchSession:(id)a3
{
  v4 = a3;
  v5 = [v4 currentResults];
  if ([v5 count])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100967580;
    v8[3] = &unk_10162FBB0;
    v9 = v5;
    v10 = v4;
    v11 = self;
    v6 = objc_retainBlock(v8);
    [(CarChromeModeCoordinator *)self _scheduleCoordinatedContextChangeWithCarBlock:v6 dashboardMapBlock:0 smallWidgetsBlock:0];

    v7 = v9;
  }

  else
  {
    v7 = sub_100006E1C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Will not show or update SAR mode, zero map items received", buf, 2u);
    }
  }
}

- (void)_handleClientResolvedResultForSearchSession:(id)a3
{
  v4 = a3;
  v5 = [v4 currentResultsSearchInfo];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100967828;
  v7[3] = &unk_10162FC00;
  v8 = v4;
  v6 = v4;
  [(CarChromeModeCoordinator *)self _resolveSearchFieldItemWithSearchInfo:v5 withCompletion:v7];
}

- (void)_resolveSearchFieldItemWithSearchInfo:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = objc_alloc_init(ClientTypeResolver);
    v8 = [v5 clientResolvedResult];
    v9 = [v8 itemType];
    if (v9 > 6)
    {
LABEL_12:

      goto LABEL_13;
    }

    if (((1 << v9) & 0x19) != 0)
    {
      v12 = sub_100006E1C();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v25 = [v8 itemType];
        v13 = "Unsupported clientResolved type: %ld";
        v14 = v12;
        v15 = 12;
LABEL_10:
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
      }
    }

    else
    {
      if (((1 << v9) & 0x46) != 0)
      {
        v10 = [(ClientTypeResolver *)v7 personalizedItemSource];
        v11 = [v8 itemType];
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_100967B10;
        v22[3] = &unk_10164C6E8;
        v23 = v6;
        [v10 addressOrLOIWithType:v11 completion:v22];

        goto LABEL_12;
      }

      v16 = [v8 resultIndex];
      v17 = [v5 results];
      v18 = [v17 count];

      if (v16 < v18)
      {
        v19 = [v5 results];
        v20 = [v19 objectAtIndexedSubscript:{objc_msgSend(v8, "resultIndex")}];

        v21 = [SearchFieldItem searchFieldItemWithObject:v20];
        (*(v6 + 2))(v6, v21);

        goto LABEL_12;
      }

      v12 = sub_100006E1C();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v13 = "ResultIndex of clientResolved item with type .Server was not found in the searchInfo.results";
        v14 = v12;
        v15 = 2;
        goto LABEL_10;
      }
    }

    goto LABEL_12;
  }

  v7 = sub_100006E1C();
  if (os_log_type_enabled(&v7->super, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &v7->super, OS_LOG_TYPE_ERROR, "resolveSearchFieldItemWithSearchInfo:withCompletion requires a completion handler", buf, 2u);
  }

LABEL_13:
}

- (void)refreshSessionWithEVResults:(id)a3 contexts:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (![v6 count])
  {
    v9 = sub_100006E1C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "There are no contexts available. Ignoring the call to refresh the ev chargers.", v10, 2u);
    }

    goto LABEL_6;
  }

  v7 = [v6 lastObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [v6 lastObject];
    [v9 updateChargerAvailabilityWithResults:v5];
LABEL_6:
  }
}

- (void)displaySearchAlongTheRouteForCategory:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_100967DEC;
    v11 = &unk_10162FBD8;
    v12 = v4;
    v13 = self;
    v6 = objc_retainBlock(&v8);
    [(CarChromeModeCoordinator *)self _scheduleCoordinatedContextChangeWithCarBlock:v6 dashboardMapBlock:0 smallWidgetsBlock:0, v8, v9, v10, v11];

    v7 = v12;
  }

  else
  {
    v7 = sub_100006E1C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Will not display SAR, category is nil.", buf, 2u);
    }
  }
}

- (void)displaySearchSession:(id)a3
{
  v4 = a3;
  v5 = [v4 currentResultsSearchInfo];
  v6 = [v5 placeCollections];
  if ([v6 count])
  {
    v7 = 1;
  }

  else
  {
    v8 = [v5 publisher];
    v7 = v8 != 0;
  }

  v9 = [v5 results];
  v10 = [v9 count];

  if (v10 || !v7)
  {
    v11 = [v5 clientResolvedResult];

    if (v11)
    {
      [(CarChromeModeCoordinator *)self _handleClientResolvedResultForSearchSession:v4];
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      obj = [(NSHashTable *)self->_chromeViewControllers allObjects];
      v12 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v24;
        do
        {
          v15 = 0;
          do
          {
            if (*v24 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v23 + 1) + 8 * v15);
            v19[0] = _NSConcreteStackBlock;
            v19[1] = 3221225472;
            v19[2] = sub_1009681D4;
            v19[3] = &unk_10162FBB0;
            v20 = v4;
            v21 = v5;
            v22 = self;
            v17 = objc_retainBlock(v19);
            [(CarChromeModeCoordinator *)self _scheduleCoordinatedContextChangeForViewController:v16 carBlock:v17 dashboardMapBlock:0 smallWidgetsBlock:0];

            v15 = v15 + 1;
          }

          while (v13 != v15);
          v13 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v13);
      }
    }
  }
}

- (void)_displayMapRegion:(id *)a3 animated:(BOOL)a4
{
  v8 = v5;
  v9 = v4;
  if (fabs(v5) > 180.0 || v4 < -90.0 || v4 > 90.0 || (v10 = v6, v6 < 0.0) || v6 > 180.0 || (v11 = v7, v7 < 0.0) || v7 > 360.0)
  {
    v14 = sub_100006E1C();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Will not display map region, invalid", buf, 2u);
    }
  }

  else
  {
    v12 = a3;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100968C70;
    v18[3] = &unk_10162FB68;
    *&v18[4] = v4;
    *&v18[5] = v5;
    *&v18[6] = v6;
    *&v18[7] = v7;
    v19 = a3;
    v14 = objc_retainBlock(v18);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100968D70;
    v16[3] = &unk_10162FB68;
    *&v16[4] = v9;
    *&v16[5] = v8;
    *&v16[6] = v10;
    *&v16[7] = v11;
    v17 = v12;
    v15 = objc_retainBlock(v16);
    [(CarChromeModeCoordinator *)self _scheduleCoordinatedContextChangeWithCarBlock:v14 dashboardMapBlock:v15 smallWidgetsBlock:0];
  }
}

- (void)displayRouteGenius
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(NSHashTable *)self->_chromeViewControllers allObjects];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        v9 = +[CarDisplayController sharedInstance];
        v10 = [v9 routeGeniusManager];
        v11 = [v10 isActive];

        if (v11)
        {
          [(CarChromeModeCoordinator *)self _scheduleCoordinatedContextChangeForViewController:v8 carBlock:&stru_10162FA48 dashboardMapBlock:&stru_10162FA68 smallWidgetsBlock:&stru_10162FA88];
        }

        else
        {
          v12 = sub_100006E1C();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            *v13 = 0;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "routeGenius is not active", v13, 2u);
          }
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }
}

- (void)_scheduleCoordinatedContextChangeWithCarBlock:(id)a3 dashboardMapBlock:(id)a4 smallWidgetsBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [(NSHashTable *)self->_chromeViewControllers allObjects];
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(CarChromeModeCoordinator *)self _scheduleCoordinatedContextChangeForViewController:*(*(&v16 + 1) + 8 * v15) carBlock:v8 dashboardMapBlock:v9 smallWidgetsBlock:v10];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (void)_scheduleCoordinatedContextChangeForViewController:(id)a3 carBlock:(id)a4 dashboardMapBlock:(id)a5 smallWidgetsBlock:(id)a6
{
  v16 = a3;
  v9 = a5;
  v10 = a6;
  v11 = objc_retainBlock(a4);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v13 = v9;
  if (isKindOfClass & 1) != 0 || (objc_opt_class(), v14 = objc_opt_isKindOfClass(), v13 = v10, (v14))
  {
    v15 = objc_retainBlock(v13);

    v11 = v15;
  }

  [v16 scheduleCoordinatedContextChange:v11 completionHandler:0];
}

- (void)_performActionForCarBlock:(id)a3 dashboardMapBlock:(id)a4 smallWidgetsBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v21 = a5;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = [(NSHashTable *)self->_chromeViewControllers allObjects];
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      v14 = 0;
      do
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v22 + 1) + 8 * v14);
        v16 = objc_retainBlock(v8);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v18 = v9;
        if (isKindOfClass & 1) != 0 || (objc_opt_class(), v19 = objc_opt_isKindOfClass(), v18 = v21, (v19))
        {
          v20 = objc_retainBlock(v18);

          v16 = v20;
        }

        if (v16)
        {
          (*(v16 + 2))(v16, v15);
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }
}

- (void)popFromContext:(id)a3
{
  v4 = a3;
  v5 = sub_100006E1C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(NSHashTable *)self->_chromeViewControllers allObjects];
    *buf = 138412290;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "The top context will be popped. All chrome controllers : %@", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(NSHashTable *)self->_chromeViewControllers allObjects];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_10096A530;
        v13[3] = &unk_10165FB98;
        v14 = v4;
        [v12 scheduleCoordinatedContextChange:v13 completionHandler:0];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (SiriDirectActionSource)siriActionSource
{
  siriActionSource = self->_siriActionSource;
  if (!siriActionSource)
  {
    v4 = objc_alloc_init(SiriDirectActionSource);
    v5 = self->_siriActionSource;
    self->_siriActionSource = v4;

    siriActionSource = self->_siriActionSource;
  }

  return siriActionSource;
}

- (void)dealloc
{
  v3 = [(CarChromeModeCoordinator *)self siriActionSource];
  [v3 invalidate];

  v4 = +[NSDistributedNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = CarChromeModeCoordinator;
  [(CarChromeModeCoordinator *)&v5 dealloc];
}

- (CarChromeModeCoordinator)init
{
  v8.receiver = self;
  v8.super_class = CarChromeModeCoordinator;
  v2 = [(CarChromeModeCoordinator *)&v8 init];
  if (v2)
  {
    v3 = +[NSDistributedNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"_sendSearchCancelFeedback" name:@"SiriCanceledMapsSearch" object:@"com.apple.siri.CarDisplay"];

    v4 = [[NSHashTable alloc] initWithOptions:517 capacity:0];
    chromeViewControllers = v2->_chromeViewControllers;
    v2->_chromeViewControllers = v4;

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v2 selector:"_resetForTestingAction" name:@"ResetForTestingActionNotification" object:0];
  }

  return v2;
}

+ (id)createHomeContext
{
  [a1 getHomeContextClass];
  v2 = objc_opt_new();

  return v2;
}

@end