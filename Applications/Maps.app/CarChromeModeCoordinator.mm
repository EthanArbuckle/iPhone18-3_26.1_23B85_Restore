@interface CarChromeModeCoordinator
+ (id)createHomeContext;
+ (id)sharedInstance;
- (CarChromeModeCoordinator)init;
- (SiriDirectActionSource)siriActionSource;
- (id)_appendOrReplaceRoutePlanningContextForSession:(id)session currentContexts:(id)contexts;
- (id)_replaceTopmostSearchResultContexts:(id)contexts withContext:(id)context;
- (void)_displayIncidentReportingFromMapControl:(BOOL)control;
- (void)_displayKeyboardSearchWithInteractionModel:(unint64_t)model resultsProvider:(id)provider animated:(BOOL)animated;
- (void)_displayMapRegion:(id *)region animated:(BOOL)animated;
- (void)_displayNavigationAnimated:(BOOL)animated;
- (void)_displaySearchAlongTheRouteForMapItems:(id)items selectedItemIndex:(unint64_t)index;
- (void)_displaySearchAlongTheRouteForSearchSession:(id)session;
- (void)_displaySiriSearch;
- (void)_handleClientResolvedResultForSearchSession:(id)session;
- (void)_performActionForCarBlock:(id)block dashboardMapBlock:(id)mapBlock smallWidgetsBlock:(id)widgetsBlock;
- (void)_resolveSearchFieldItemWithSearchInfo:(id)info withCompletion:(id)completion;
- (void)_scheduleCoordinatedContextChangeForViewController:(id)controller carBlock:(id)block dashboardMapBlock:(id)mapBlock smallWidgetsBlock:(id)widgetsBlock;
- (void)_scheduleCoordinatedContextChangeWithCarBlock:(id)block dashboardMapBlock:(id)mapBlock smallWidgetsBlock:(id)widgetsBlock;
- (void)_sendSearchCancelFeedback;
- (void)cleanupForDisconnect;
- (void)dealloc;
- (void)displayAllSharedTrips;
- (void)displayAudioControlView;
- (void)displayIncidentReportSubmissionWithItem:(id)item report:(id)report;
- (void)displayKeyboardSearchWithInteractionModel:(unint64_t)model;
- (void)displayNavigationForRouteCollection:(id)collection options:(NavigationDetailsOptions *)options;
- (void)displayPlaceCardWithPlaceCardItem:(id)item shouldNotify:(BOOL)notify;
- (void)displayPlaceCardWithSearchResult:(id)result;
- (void)displayRouteGenius;
- (void)displayRoutePlanningForDestination:(id)destination userInfo:(id)info;
- (void)displayRoutePlanningForExistingRoute;
- (void)displayRoutePlanningForSession:(id)session userInfo:(id)info;
- (void)displaySearchAlongTheRouteForCategory:(id)category;
- (void)displaySearchResultsWithCategory:(id)category;
- (void)displaySearchResultsWithCollection:(id)collection;
- (void)displaySearchSession:(id)session;
- (void)displaySearchWithInteractionModel:(unint64_t)model;
- (void)displaySharedTrip:(id)trip;
- (void)displaySiriTripSharing;
- (void)displayTripSharing;
- (void)displayTripSharingContactKeyboardSearchWithInteractionModel:(unint64_t)model dataSource:(id)source searchHandler:(id)handler;
- (void)endPlaceCardWithItem:(id)item;
- (void)endSearchSession:(id)session;
- (void)goToDetail;
- (void)goToOverview;
- (void)launchIntoKeyboardSearchWithRequestedInteractionModel:(unint64_t)model;
- (void)popFromContext:(id)context;
- (void)refreshSessionWithEVResults:(id)results contexts:(id)contexts;
@end

@implementation CarChromeModeCoordinator

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10096A908;
  block[3] = &unk_1016611D0;
  block[4] = self;
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
  allObjects = [(NSHashTable *)self->_chromeViewControllers allObjects];
  v3 = [allObjects countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        [*(*(&v7 + 1) + 8 * v6) scheduleCoordinatedContextChange:&stru_10162FF00 completionHandler:0];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [allObjects countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)displaySiriTripSharing
{
  v3 = +[NSBundle mainBundle];
  bundleIdentifier = [v3 bundleIdentifier];
  v6 = [SiriDirectActionContext mapShareEtaDirectActionWithAppBundleId:bundleIdentifier];

  siriActionSource = [(CarChromeModeCoordinator *)self siriActionSource];
  [siriActionSource activateWithContext:v6];
}

- (void)displayTripSharingContactKeyboardSearchWithInteractionModel:(unint64_t)model dataSource:(id)source searchHandler:(id)handler
{
  sourceCopy = source;
  handlerCopy = handler;
  v10 = [[CarShareTripKeyboardSearchController alloc] initWithContactSearchResults:0 dataSource:sourceCopy searchHandler:handlerCopy];
  objc_initWeak(&location, v10);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10096129C;
  v11[3] = &unk_101661340;
  v11[4] = self;
  objc_copyWeak(&v12, &location);
  [(CarShareTripKeyboardSearchController *)v10 setDismissHandler:v11];
  [(CarChromeModeCoordinator *)self _displayKeyboardSearchWithInteractionModel:model resultsProvider:v10 animated:1];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)displaySharedTrip:(id)trip
{
  tripCopy = trip;
  if (MSPSharedTripReceivingAvailable())
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100961514;
    v10[3] = &unk_10165FB98;
    v11 = tripCopy;
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
  isAnyCarSceneHostingNavigation = [v3 isAnyCarSceneHostingNavigation];

  if (isAnyCarSceneHostingNavigation)
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
  isAnyCarSceneHostingNavigation = [v3 isAnyCarSceneHostingNavigation];

  if (isAnyCarSceneHostingNavigation)
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

- (void)_displayNavigationAnimated:(BOOL)animated
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1009622F8;
  v12[3] = &unk_10162FD60;
  animatedCopy = animated;
  v5 = objc_retainBlock(v12);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100962A1C;
  v10[3] = &unk_10162FC70;
  v10[4] = self;
  animatedCopy2 = animated;
  v6 = objc_retainBlock(v10);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1009633E8;
  v8[3] = &unk_10162FD60;
  animatedCopy3 = animated;
  v7 = objc_retainBlock(v8);
  [(CarChromeModeCoordinator *)self _scheduleCoordinatedContextChangeWithCarBlock:v5 dashboardMapBlock:v6 smallWidgetsBlock:v7];
}

- (void)displayNavigationForRouteCollection:(id)collection options:(NavigationDetailsOptions *)options
{
  collectionCopy = collection;
  currentRoute = [collectionCopy currentRoute];
  carplayDestinationHandoffRequired = [currentRoute carplayDestinationHandoffRequired];

  if (carplayDestinationHandoffRequired)
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
  platformController = [v9 platformController];

  currentSession = [platformController currentSession];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    currentSession2 = [platformController currentSession];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = currentSession2;
    }

    else
    {
      v16 = 0;
    }

    v13 = v16;

    currentSession3 = [platformController currentSession];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = currentSession3;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;

    v38 = v19;
    if (v19)
    {
      configuration = [v19 configuration];
      isResumingMultipointRoute = [configuration isResumingMultipointRoute];
      sharingContacts = 0;
    }

    else
    {
      if (!v13)
      {
        sharingContacts = 0;
        isResumingMultipointRoute = 0;
LABEL_23:
        v25 = [NavigationSessionBuilder alloc];
        v26 = +[CarDisplayController sharedInstance];
        chromeViewController = [v26 chromeViewController];
        currentTraits = [chromeViewController currentTraits];
        v29 = *&options->guidanceType;
        *buf = *&options->shouldSimulateLocations;
        v40 = v29;
        v41 = *&options->isReconnecting;
        navigationModeContext = options->navigationModeContext;
        v30 = [(NavigationSessionBuilder *)v25 initWithRouteCollection:collectionCopy navigationDetailsOptions:buf mapServiceTraits:currentTraits sessionInitiator:2 isResumingMultipointRoute:isResumingMultipointRoute tracePlaybackPath:0];
        build = [(NavigationSessionBuilder *)v30 build];

        if ([sharingContacts count])
        {
          configuration2 = [build configuration];
          sharedTripPrefetchContext = [configuration2 sharedTripPrefetchContext];

          [sharedTripPrefetchContext setAutomaticSharingContacts:sharingContacts];
          v34 = sub_100006E1C();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v35 = [sharingContacts count];
            *buf = 134217984;
            *&buf[4] = v35;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Populated %lu Share ETA contacts from RG entry", buf, 0xCu);
          }
        }

        currentSession4 = [platformController currentSession];
        objc_opt_class();
        v37 = objc_opt_isKindOfClass();

        if (v37)
        {
          [platformController replaceCurrentSessionWithSession:build];
        }

        else
        {
          [platformController pushSession:build];
        }

        currentSession5 = v38;

        goto LABEL_31;
      }

      routeGeniusEntry = [v13 routeGeniusEntry];
      configuration = [routeGeniusEntry entry];

      if ([configuration type] == 11)
      {
        waypoints = [configuration waypoints];
        isResumingMultipointRoute = [waypoints count] > 2;
      }

      else
      {
        isResumingMultipointRoute = 0;
      }

      sharingContacts = [configuration sharingContacts];
    }

    goto LABEL_23;
  }

  v13 = sub_100006E1C();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    currentSession5 = [platformController currentSession];
    *buf = 138412290;
    *&buf[4] = currentSession5;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Attempted to begin navigation, but there is already a NavigationSession on the sessionStack: %@", buf, 0xCu);
LABEL_31:
  }
}

- (void)displayRoutePlanningForExistingRoute
{
  v3 = +[CarDisplayController sharedInstance];
  platformController = [v3 platformController];
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

- (void)displayRoutePlanningForDestination:(id)destination userInfo:(id)info
{
  destinationCopy = destination;
  infoCopy = info;
  v8 = sub_10000B11C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v22 = "[CarChromeModeCoordinator displayRoutePlanningForDestination:userInfo:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  if (destinationCopy)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100964404;
    v17[3] = &unk_10162FBB0;
    v18 = destinationCopy;
    v9 = infoCopy;
    v19 = v9;
    selfCopy = self;
    v10 = objc_retainBlock(v17);
    v11 = [v9 objectForKeyedSubscript:@"skipEndNavigationPrompt"];
    bOOLValue = [v11 BOOLValue];

    v13 = +[CarSessionController sharedInstance];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100964EC4;
    v15[3] = &unk_101655D58;
    v15[4] = self;
    v16 = v10;
    v14 = v10;
    [v13 endNavigationIfNeededWithPrompt:bOOLValue ^ 1 andPerformBlock:v15];
  }
}

- (id)_appendOrReplaceRoutePlanningContextForSession:(id)session currentContexts:(id)contexts
{
  sessionCopy = session;
  contextsCopy = contexts;
  v7 = [contextsCopy _maps_firstContextOfClass:objc_opt_class()];
  v8 = v7;
  if (v7)
  {
    [v7 setRoutePlanningSession:sessionCopy];
    v9 = [contextsCopy _maps_subarrayToIndex:{objc_msgSend(contextsCopy, "indexOfObject:", v8)}];
  }

  else
  {
    v10 = [[_TtC4Maps23CarRoutePlanningContext alloc] initWithRoutePlanningSession:sessionCopy];
    v9 = [contextsCopy arrayByAddingObject:v10];
  }

  return v9;
}

- (void)displayRoutePlanningForSession:(id)session userInfo:(id)info
{
  sessionCopy = session;
  infoCopy = info;
  v8 = sub_10000B11C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v16 = "[CarChromeModeCoordinator displayRoutePlanningForSession:userInfo:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  v9 = [infoCopy objectForKeyedSubscript:@"skipEndNavigationPrompt"];

  bOOLValue = [v9 BOOLValue];
  v11 = +[CarSessionController sharedInstance];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100965140;
  v13[3] = &unk_101661570;
  v13[4] = self;
  v14 = sessionCopy;
  v12 = sessionCopy;
  [v11 endNavigationIfNeededWithPrompt:bOOLValue ^ 1 andPerformBlock:v13];
}

- (void)displaySearchResultsWithCollection:(id)collection
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1009652A4;
  v6[3] = &unk_10165FB98;
  collectionCopy = collection;
  v4 = collectionCopy;
  v5 = objc_retainBlock(v6);
  [(CarChromeModeCoordinator *)self _scheduleCoordinatedContextChangeWithCarBlock:v5 dashboardMapBlock:0 smallWidgetsBlock:0];
}

- (void)endPlaceCardWithItem:(id)item
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1009654D0;
  v5[3] = &unk_10165FB98;
  itemCopy = item;
  v4 = itemCopy;
  [(CarChromeModeCoordinator *)self _scheduleCoordinatedContextChangeWithCarBlock:v5 dashboardMapBlock:0 smallWidgetsBlock:0];
}

- (void)displayPlaceCardWithSearchResult:(id)result
{
  resultCopy = result;
  v5 = [[PlaceCardItem alloc] initWithSearchResult:resultCopy];

  [(CarChromeModeCoordinator *)self displayPlaceCardWithPlaceCardItem:v5];
}

- (void)displayPlaceCardWithPlaceCardItem:(id)item shouldNotify:(BOOL)notify
{
  notifyCopy = notify;
  itemCopy = item;
  v7 = itemCopy;
  if (itemCopy)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100965740;
    v15[3] = &unk_10165FB98;
    v8 = itemCopy;
    v16 = v8;
    v9 = objc_retainBlock(v15);
    [(CarChromeModeCoordinator *)self _scheduleCoordinatedContextChangeWithCarBlock:v9 dashboardMapBlock:0 smallWidgetsBlock:0];
    if (notifyCopy)
    {
      v10 = [PlaceCardSynchronizationNotificationInfo alloc];
      v11 = +[CarDisplayController sharedInstance];
      platformController = [v11 platformController];
      v13 = [(PlaceCardSynchronizationNotificationInfo *)v10 initWithPlaceCardItem:v8 platformController:platformController];

      v14 = +[NSNotificationCenter defaultCenter];
      [v14 postNotificationName:@"CarPlaceCardDidPresent" object:v13];
    }
  }
}

- (id)_replaceTopmostSearchResultContexts:(id)contexts withContext:(id)context
{
  contextsCopy = contexts;
  contextCopy = context;
  if (contextCopy)
  {
    objc_opt_class();
    v7 = objc_opt_isKindOfClass() & 1;
    *buf = 0;
    v15 = buf;
    v16 = 0x2020000000;
    v17 = [contextsCopy count] - 1;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100965A28;
    v12[3] = &unk_10162FD00;
    v13 = v7;
    v12[4] = buf;
    [contextsCopy enumerateObjectsWithOptions:2 usingBlock:v12];
    v8 = [contextsCopy _maps_subarrayToIndex:*(v15 + 3)];

    v9 = [v8 arrayByAddingObject:contextCopy];
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

    v8 = contextsCopy;
    v9 = v8;
  }

  return v9;
}

- (void)displaySearchResultsWithCategory:(id)category
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100965CF0;
  v6[3] = &unk_10165FB98;
  categoryCopy = category;
  v4 = categoryCopy;
  v5 = objc_retainBlock(v6);
  [(CarChromeModeCoordinator *)self _scheduleCoordinatedContextChangeWithCarBlock:v5 dashboardMapBlock:0 smallWidgetsBlock:0];
}

- (void)_displayKeyboardSearchWithInteractionModel:(unint64_t)model resultsProvider:(id)provider animated:(BOOL)animated
{
  providerCopy = provider;
  v9 = +[MapsExternalDevice sharedInstance];
  disableSoftwareKeyboard = [v9 disableSoftwareKeyboard];

  if (disableSoftwareKeyboard)
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
    animatedCopy = animated;
    modelCopy = model;
    v14 = providerCopy;
    v12 = objc_retainBlock(v13);
    [(CarChromeModeCoordinator *)self _scheduleCoordinatedContextChangeWithCarBlock:v12 dashboardMapBlock:0 smallWidgetsBlock:0];

    v11 = v14;
  }
}

- (void)displayKeyboardSearchWithInteractionModel:(unint64_t)model
{
  v5 = objc_alloc_init(CarKeyboardSearchResultsViewController);
  [(CarChromeModeCoordinator *)self _displayKeyboardSearchWithInteractionModel:model resultsProvider:v5 animated:1];
}

- (void)launchIntoKeyboardSearchWithRequestedInteractionModel:(unint64_t)model
{
  v5 = objc_alloc_init(CarKeyboardSearchResultsViewController);
  [(CarChromeModeCoordinator *)self _displayKeyboardSearchWithInteractionModel:model resultsProvider:v5 animated:0];
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
  chromeViewController = [v3 chromeViewController];
  [chromeViewController captureUserAction:18];
}

- (void)_displaySiriSearch
{
  v3 = +[NSBundle mainBundle];
  bundleIdentifier = [v3 bundleIdentifier];
  v8 = [SiriDirectActionContext mapSearchDirectActionWithAppBundleId:bundleIdentifier];

  siriActionSource = [(CarChromeModeCoordinator *)self siriActionSource];
  [siriActionSource activateWithContext:v8];

  v6 = +[CarDisplayController sharedInstance];
  chromeViewController = [v6 chromeViewController];
  [chromeViewController captureUserAction:8009 onTarget:1010];
}

- (void)displaySearchWithInteractionModel:(unint64_t)model
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

    [(CarChromeModeCoordinator *)self displayKeyboardSearchWithInteractionModel:model];
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

- (void)displayIncidentReportSubmissionWithItem:(id)item report:(id)report
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10096666C;
  v9[3] = &unk_10162FBB0;
  itemCopy = item;
  reportCopy = report;
  selfCopy = self;
  v6 = reportCopy;
  v7 = itemCopy;
  v8 = objc_retainBlock(v9);
  [(CarChromeModeCoordinator *)self _scheduleCoordinatedContextChangeWithCarBlock:v8 dashboardMapBlock:0 smallWidgetsBlock:0];
}

- (void)_displayIncidentReportingFromMapControl:(BOOL)control
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100966864;
  v5[3] = &unk_10162FC70;
  controlCopy = control;
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

- (void)endSearchSession:(id)session
{
  sessionCopy = session;
  v5 = sessionCopy;
  if (sessionCopy)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100966D60;
    v8[3] = &unk_10165FB98;
    v9 = sessionCopy;
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

- (void)_displaySearchAlongTheRouteForMapItems:(id)items selectedItemIndex:(unint64_t)index
{
  itemsCopy = items;
  if ([itemsCopy count])
  {
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_100967274;
    v12 = &unk_10162FC28;
    v13 = itemsCopy;
    indexCopy = index;
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

- (void)_displaySearchAlongTheRouteForSearchSession:(id)session
{
  sessionCopy = session;
  currentResults = [sessionCopy currentResults];
  if ([currentResults count])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100967580;
    v8[3] = &unk_10162FBB0;
    v9 = currentResults;
    v10 = sessionCopy;
    selfCopy = self;
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

- (void)_handleClientResolvedResultForSearchSession:(id)session
{
  sessionCopy = session;
  currentResultsSearchInfo = [sessionCopy currentResultsSearchInfo];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100967828;
  v7[3] = &unk_10162FC00;
  v8 = sessionCopy;
  v6 = sessionCopy;
  [(CarChromeModeCoordinator *)self _resolveSearchFieldItemWithSearchInfo:currentResultsSearchInfo withCompletion:v7];
}

- (void)_resolveSearchFieldItemWithSearchInfo:(id)info withCompletion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  if (completionCopy)
  {
    v7 = objc_alloc_init(ClientTypeResolver);
    clientResolvedResult = [infoCopy clientResolvedResult];
    itemType = [clientResolvedResult itemType];
    if (itemType > 6)
    {
LABEL_12:

      goto LABEL_13;
    }

    if (((1 << itemType) & 0x19) != 0)
    {
      v12 = sub_100006E1C();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        itemType2 = [clientResolvedResult itemType];
        v13 = "Unsupported clientResolved type: %ld";
        v14 = v12;
        v15 = 12;
LABEL_10:
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
      }
    }

    else
    {
      if (((1 << itemType) & 0x46) != 0)
      {
        personalizedItemSource = [(ClientTypeResolver *)v7 personalizedItemSource];
        itemType3 = [clientResolvedResult itemType];
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_100967B10;
        v22[3] = &unk_10164C6E8;
        v23 = completionCopy;
        [personalizedItemSource addressOrLOIWithType:itemType3 completion:v22];

        goto LABEL_12;
      }

      resultIndex = [clientResolvedResult resultIndex];
      results = [infoCopy results];
      v18 = [results count];

      if (resultIndex < v18)
      {
        results2 = [infoCopy results];
        v20 = [results2 objectAtIndexedSubscript:{objc_msgSend(clientResolvedResult, "resultIndex")}];

        v21 = [SearchFieldItem searchFieldItemWithObject:v20];
        (*(completionCopy + 2))(completionCopy, v21);

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

- (void)refreshSessionWithEVResults:(id)results contexts:(id)contexts
{
  resultsCopy = results;
  contextsCopy = contexts;
  if (![contextsCopy count])
  {
    lastObject2 = sub_100006E1C();
    if (os_log_type_enabled(lastObject2, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, lastObject2, OS_LOG_TYPE_ERROR, "There are no contexts available. Ignoring the call to refresh the ev chargers.", v10, 2u);
    }

    goto LABEL_6;
  }

  lastObject = [contextsCopy lastObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    lastObject2 = [contextsCopy lastObject];
    [lastObject2 updateChargerAvailabilityWithResults:resultsCopy];
LABEL_6:
  }
}

- (void)displaySearchAlongTheRouteForCategory:(id)category
{
  categoryCopy = category;
  v5 = categoryCopy;
  if (categoryCopy)
  {
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_100967DEC;
    v11 = &unk_10162FBD8;
    v12 = categoryCopy;
    selfCopy = self;
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

- (void)displaySearchSession:(id)session
{
  sessionCopy = session;
  currentResultsSearchInfo = [sessionCopy currentResultsSearchInfo];
  placeCollections = [currentResultsSearchInfo placeCollections];
  if ([placeCollections count])
  {
    v7 = 1;
  }

  else
  {
    publisher = [currentResultsSearchInfo publisher];
    v7 = publisher != 0;
  }

  results = [currentResultsSearchInfo results];
  v10 = [results count];

  if (v10 || !v7)
  {
    clientResolvedResult = [currentResultsSearchInfo clientResolvedResult];

    if (clientResolvedResult)
    {
      [(CarChromeModeCoordinator *)self _handleClientResolvedResultForSearchSession:sessionCopy];
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
            v20 = sessionCopy;
            v21 = currentResultsSearchInfo;
            selfCopy = self;
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

- (void)_displayMapRegion:(id *)region animated:(BOOL)animated
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
    regionCopy = region;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100968C70;
    v18[3] = &unk_10162FB68;
    *&v18[4] = v4;
    *&v18[5] = v5;
    *&v18[6] = v6;
    *&v18[7] = v7;
    regionCopy2 = region;
    v14 = objc_retainBlock(v18);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100968D70;
    v16[3] = &unk_10162FB68;
    *&v16[4] = v9;
    *&v16[5] = v8;
    *&v16[6] = v10;
    *&v16[7] = v11;
    v17 = regionCopy;
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
  allObjects = [(NSHashTable *)self->_chromeViewControllers allObjects];
  v4 = [allObjects countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        v9 = +[CarDisplayController sharedInstance];
        routeGeniusManager = [v9 routeGeniusManager];
        isActive = [routeGeniusManager isActive];

        if (isActive)
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
      v5 = [allObjects countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }
}

- (void)_scheduleCoordinatedContextChangeWithCarBlock:(id)block dashboardMapBlock:(id)mapBlock smallWidgetsBlock:(id)widgetsBlock
{
  blockCopy = block;
  mapBlockCopy = mapBlock;
  widgetsBlockCopy = widgetsBlock;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  allObjects = [(NSHashTable *)self->_chromeViewControllers allObjects];
  v12 = [allObjects countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        [(CarChromeModeCoordinator *)self _scheduleCoordinatedContextChangeForViewController:*(*(&v16 + 1) + 8 * v15) carBlock:blockCopy dashboardMapBlock:mapBlockCopy smallWidgetsBlock:widgetsBlockCopy];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [allObjects countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (void)_scheduleCoordinatedContextChangeForViewController:(id)controller carBlock:(id)block dashboardMapBlock:(id)mapBlock smallWidgetsBlock:(id)widgetsBlock
{
  controllerCopy = controller;
  mapBlockCopy = mapBlock;
  widgetsBlockCopy = widgetsBlock;
  v11 = objc_retainBlock(block);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v13 = mapBlockCopy;
  if (isKindOfClass & 1) != 0 || (objc_opt_class(), v14 = objc_opt_isKindOfClass(), v13 = widgetsBlockCopy, (v14))
  {
    v15 = objc_retainBlock(v13);

    v11 = v15;
  }

  [controllerCopy scheduleCoordinatedContextChange:v11 completionHandler:0];
}

- (void)_performActionForCarBlock:(id)block dashboardMapBlock:(id)mapBlock smallWidgetsBlock:(id)widgetsBlock
{
  blockCopy = block;
  mapBlockCopy = mapBlock;
  widgetsBlockCopy = widgetsBlock;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  allObjects = [(NSHashTable *)self->_chromeViewControllers allObjects];
  v11 = [allObjects countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        v15 = *(*(&v22 + 1) + 8 * v14);
        v16 = objc_retainBlock(blockCopy);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v18 = mapBlockCopy;
        if (isKindOfClass & 1) != 0 || (objc_opt_class(), v19 = objc_opt_isKindOfClass(), v18 = widgetsBlockCopy, (v19))
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
      v12 = [allObjects countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }
}

- (void)popFromContext:(id)context
{
  contextCopy = context;
  v5 = sub_100006E1C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    allObjects = [(NSHashTable *)self->_chromeViewControllers allObjects];
    *buf = 138412290;
    v21 = allObjects;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "The top context will be popped. All chrome controllers : %@", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  allObjects2 = [(NSHashTable *)self->_chromeViewControllers allObjects];
  v8 = [allObjects2 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(allObjects2);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_10096A530;
        v13[3] = &unk_10165FB98;
        v14 = contextCopy;
        [v12 scheduleCoordinatedContextChange:v13 completionHandler:0];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [allObjects2 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  siriActionSource = [(CarChromeModeCoordinator *)self siriActionSource];
  [siriActionSource invalidate];

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
  [self getHomeContextClass];
  v2 = objc_opt_new();

  return v2;
}

@end