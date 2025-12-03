@interface HistoryDirectionsItemSavingTask
- (BOOL)_updateEVInfoForHistoryEntry:(id)entry;
- (HistoryDirectionsItemSavingTask)initWithNavigationService:(id)service routeInfoProvider:(id)provider routeInterrupter:(id)interrupter;
- (id)_currentRouteHandleStorage;
- (unint64_t)_routeProgressWaypointIndexForCurrentLegIndex:(unint64_t)index inRoute:(id)route;
- (void)_appWillTerminate:(id)terminate;
- (void)_handleArrivalAtWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index;
- (void)_interruptAndSaveHistoryEntry:(id)entry completion:(id)completion;
- (void)_launchRouteGeniusIfNeeded;
- (void)_preserveAutosharingContacts:(BOOL)contacts inHistoryEntry:(id)entry completion:(id)completion;
- (void)_saveCustomRouteToHistory:(id)history uuid:(id)uuid;
- (void)_saveRouteHistory:(id)history withOriginalHistoryIdentifier:(id)identifier arrivalState:(unint64_t)state;
- (void)_uninterruptHistoryEntry:(id)entry completion:(id)completion;
- (void)_updateHistoryEntry:(id)entry withBlock:(id)block;
- (void)dealloc;
- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)navigationService:(id)service didReroute:(id)reroute rerouteReason:(unint64_t)reason;
- (void)navigationService:(id)service didResumeNavigatingFromWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index reason:(unint64_t)reason;
- (void)navigationService:(id)service didUpdateResumeRouteHandle:(id)handle;
- (void)navigationService:(id)service isApproachingEndOfLeg:(unint64_t)leg;
- (void)navigationService:(id)service willChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)navigationService:(id)service willEndWithReason:(unint64_t)reason;
- (void)sharedTripService:(id)service didUpdateReceivers:(id)receivers;
@end

@implementation HistoryDirectionsItemSavingTask

- (void)sharedTripService:(id)service didUpdateReceivers:(id)receivers
{
  receiversCopy = receivers;
  navigationIsEnding = self->_navigationIsEnding;
  historyEntryRoute = sub_10067EDB0();
  v8 = os_log_type_enabled(historyEntryRoute, OS_LOG_TYPE_INFO);
  if (navigationIsEnding)
  {
    if (v8)
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, historyEntryRoute, OS_LOG_TYPE_INFO, "Will not update Share ETA receivers in history item, navigation is ending", &v9, 2u);
    }
  }

  else
  {
    if (v8)
    {
      v9 = 134217984;
      v10 = [receiversCopy count];
      _os_log_impl(&_mh_execute_header, historyEntryRoute, OS_LOG_TYPE_INFO, "Share ETA updated with %lu receivers, will update history item", &v9, 0xCu);
    }

    historyEntryRoute = [(HistoryDirectionsItemSavingTask *)self historyEntryRoute];
    [(HistoryDirectionsItemSavingTask *)self _preserveAutosharingContacts:1 inHistoryEntry:historyEntryRoute completion:0];
  }
}

- (unint64_t)_routeProgressWaypointIndexForCurrentLegIndex:(unint64_t)index inRoute:(id)route
{
  routeCopy = route;
  v6 = sub_10067EDB0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    indexCopy = index;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Calculating route progress waypoint index for current leg %lu", buf, 0xCu);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v26 = routeCopy;
  legs = [routeCopy legs];
  v8 = [legs countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    v11 = 1;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(legs);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        if ([v13 legIndex] >= index)
        {
          v20 = sub_10067EDB0();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            legIndex = [v13 legIndex];
            destination = [v13 destination];
            name = [destination name];
            *buf = 134218243;
            indexCopy = legIndex;
            v33 = 2113;
            indexCopy2 = name;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "\tFound user-provided waypoint for resuming is %lu (%{private}@)", buf, 0x16u);
          }

          goto LABEL_21;
        }

        destination2 = [v13 destination];
        isServerProvidedWaypoint = [destination2 isServerProvidedWaypoint];

        if (isServerProvidedWaypoint)
        {
          v16 = sub_10067EDB0();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            legIndex2 = [v13 legIndex];
            destination3 = [v13 destination];
            name2 = [destination3 name];
            *buf = 134218243;
            indexCopy = legIndex2;
            v33 = 2113;
            indexCopy2 = name2;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "\tSkipping leg %lu (%{private}@), is server-provided waypoint", buf, 0x16u);
          }
        }

        else
        {
          ++v11;
        }
      }

      v9 = [legs countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 1;
  }

LABEL_21:

  v24 = sub_10067EDB0();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    indexCopy = v11;
    v33 = 2048;
    indexCopy2 = index;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "\tCalculated route progress index %lu given current leg %lu", buf, 0x16u);
  }

  return v11;
}

- (void)_saveCustomRouteToHistory:(id)history uuid:(id)uuid
{
  historyCopy = history;
  uuidCopy = uuid;
  v8 = sub_10067EDB0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    uniqueRouteID = [historyCopy uniqueRouteID];
    storageID = [historyCopy storageID];
    v13 = 138543874;
    v14 = uniqueRouteID;
    v15 = 2114;
    v16 = uuidCopy;
    v17 = 2114;
    v18 = storageID;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Saving custom route %{public}@ on uuid %{public}@, storageID %{public}@", &v13, 0x20u);
  }

  v11 = [[GEOComposedWaypointToRoute alloc] initWithRoute:historyCopy];
  v12 = [HistoryEntryRecentsItem saveCustomRoute:historyCopy asWaypoint:v11 withOriginalHistoryIdentifier:uuidCopy];
  [(NavigationRouteHistoryInfoProviding *)self->_routeInfoProvider updateHistoryEntryRoute:v12];
}

- (void)_saveRouteHistory:(id)history withOriginalHistoryIdentifier:(id)identifier arrivalState:(unint64_t)state
{
  historyCopy = history;
  identifierCopy = identifier;
  if ([historyCopy source] == 3 || objc_msgSend(historyCopy, "source") == 2)
  {
    [(HistoryDirectionsItemSavingTask *)self _saveCustomRouteToHistory:historyCopy uuid:identifierCopy];
  }

  else
  {
    v10 = sub_10067EDB0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      historyEntryRoute = [(HistoryDirectionsItemSavingTask *)self historyEntryRoute];
      if (state - 1 > 4)
      {
        v12 = @"Unavailable";
      }

      else
      {
        v12 = *(&off_101631088 + state - 1);
      }

      v13 = v12;
      *buf = 138412802;
      v20 = historyEntryRoute;
      v21 = 2112;
      v22 = identifierCopy;
      v23 = 2114;
      v24 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Updating historyEntryRoute : %@. originalUUID: %@, arrivalState: %{public}@", buf, 0x20u);
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10067F4C0;
    v15[3] = &unk_101625930;
    selfCopy = self;
    stateCopy = state;
    v16 = historyCopy;
    v14 = [HistoryEntryRecentsItem saveRoute:v16 withOriginalHistoryIdentifier:identifierCopy editBlock:v15];
    [(NavigationRouteHistoryInfoProviding *)self->_routeInfoProvider updateHistoryEntryRoute:v14];
  }
}

- (void)_updateHistoryEntry:(id)entry withBlock:(id)block
{
  entryCopy = entry;
  blockCopy = block;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = entryCopy;
    v8 = sub_10067EDB0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      identifier = [v7 identifier];
      v10 = objc_retainBlock(blockCopy);
      *buf = 138543618;
      v21 = identifier;
      v22 = 2114;
      v23 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Adding edit+commit blocks to history entry (non-MPR): %{public}@, block: %{public}@", buf, 0x16u);
    }

    (*(blockCopy + 2))(blockCopy, v7, 0);
    v11 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
    v19 = v7;
    v12 = [NSArray arrayWithObjects:&v19 count:1];
    v13 = &stru_1016258E8;
LABEL_9:
    [v11 saveWithObjects:v12 completionHandler:v13];

    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = entryCopy;
    v15 = sub_10067EDB0();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      identifier2 = [v14 identifier];
      v17 = objc_retainBlock(blockCopy);
      *buf = 138543618;
      v21 = identifier2;
      v22 = 2114;
      v23 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Adding edit+commit blocks to history entry (MPR): %{public}@, block: %{public}@", buf, 0x16u);
    }

    (*(blockCopy + 2))(blockCopy, 0, v14);
    v11 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
    v18 = v14;
    v12 = [NSArray arrayWithObjects:&v18 count:1];
    v13 = &stru_101625908;
    goto LABEL_9;
  }

LABEL_10:
}

- (void)navigationService:(id)service willEndWithReason:(unint64_t)reason
{
  serviceCopy = service;
  self->_navigationIsEnding = 1;
  historyEntryRoute = [(HistoryDirectionsItemSavingTask *)self historyEntryRoute];
  route = [serviceCopy route];
  v9 = sub_10067EDB0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    reasonCopy = reason;
    if (reason - 1 > 9)
    {
      v10 = @"Unknown";
    }

    else
    {
      v10 = *(&off_101625970 + reason - 1);
    }

    if ([serviceCopy isResumingMultipointRoute])
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v12 = v11;
    if (self->_arrivedAtDestination)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v21 = v13;
    if ([route isMultipointRoute])
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    v15 = v14;
    targetLegIndex = [serviceCopy targetLegIndex];
    route2 = [serviceCopy route];
    legs = [route2 legs];
    *buf = 138544898;
    v24 = v10;
    v25 = 2114;
    v26 = v12;
    v27 = 2114;
    v28 = v21;
    v29 = 2114;
    v30 = v15;
    v31 = 2048;
    v32 = targetLegIndex;
    v33 = 2048;
    v34 = [legs count];
    v35 = 2048;
    stepIndex = [serviceCopy stepIndex];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Navigation will end with reason: %{public}@ (resumed: %{public}@, arrived: %{public}@, multi-point: %{public}@, target leg: %lu/%lu, step: %lu).", buf, 0x48u);

    reason = reasonCopy;
  }

  if (self->_arrivedAtDestination || !sub_10067FE68(serviceCopy, reason))
  {
    v19 = sub_10067EDB0();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Will not interrupt history for resuming later. Will clear Share ETA contacts and re-save.", buf, 2u);
    }

    [(HistoryDirectionsItemSavingTask *)self _preserveAutosharingContacts:0 inHistoryEntry:historyEntryRoute completion:0];
    [(HistoryDirectionsItemSavingTask *)self _uninterruptHistoryEntry:historyEntryRoute completion:0];
  }

  else
  {
    v18 = sub_10067EDB0();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Have not arrived at final destination, will interrupt and save history item to resume later.", buf, 2u);
    }

    [(HistoryDirectionsItemSavingTask *)self _interruptAndSaveHistoryEntry:historyEntryRoute completion:0];
  }
}

- (void)_handleArrivalAtWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index
{
  waypointCopy = waypoint;
  v7 = sub_10067EDB0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    shortDescription = [waypointCopy shortDescription];
    *buf = 136315650;
    v18 = "[HistoryDirectionsItemSavingTask _handleArrivalAtWaypoint:endOfLegIndex:]";
    v19 = 2112;
    v20 = shortDescription;
    v21 = 2048;
    indexCopy = index;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s waypoint: %@ legIndex: %lu", buf, 0x20u);
  }

  v9 = +[MNNavigationService sharedService];
  route = [v9 route];
  self->_arrivedAtDestination = [route isLegIndexOfLastLeg:index];

  historyEntryRoute = [(HistoryDirectionsItemSavingTask *)self historyEntryRoute];
  historyEntry = [historyEntryRoute historyEntry];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100680114;
  v14[3] = &unk_1016258C8;
  v15 = v9;
  indexCopy2 = index;
  v14[4] = self;
  v13 = v9;
  [(HistoryDirectionsItemSavingTask *)self _updateHistoryEntry:historyEntry withBlock:v14];
}

- (void)navigationService:(id)service isApproachingEndOfLeg:(unint64_t)leg
{
  serviceCopy = service;
  route = [serviceCopy route];
  legs = [route legs];
  if ([legs count] <= leg)
  {
  }

  else
  {
    route2 = [serviceCopy route];
    legs2 = [route2 legs];
    v11 = [legs2 objectAtIndexedSubscript:leg];

    if (v11)
    {
      destination = [v11 destination];
      [(HistoryDirectionsItemSavingTask *)self _handleArrivalAtWaypoint:destination endOfLegIndex:leg];

      goto LABEL_7;
    }
  }

  v11 = sub_10067EDB0();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v13 = 134217984;
    legCopy = leg;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "navigationService:isApproachingEndOfLeg: received an invalid legIndex: %lu", &v13, 0xCu);
  }

LABEL_7:
}

- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  serviceCopy = service;
  if (MNNavigationServiceStateChangedToNavigating())
  {
    *&self->_arrivedAtDestination = 0;
    route = [serviceCopy route];
    historyEntryRoute = [(HistoryDirectionsItemSavingTask *)self historyEntryRoute];
    v9 = historyEntryRoute;
    if (historyEntryRoute && ([historyEntryRoute historyEntry], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_opt_respondsToSelector(), v10, (v11 & 1) != 0))
    {
      historyEntry = [v9 historyEntry];
      storageIdentifier = [historyEntry storageIdentifier];

      v14 = sub_10067EDB0();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = 138412290;
        v16 = storageIdentifier;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "didChangeFromState: Will save route with ID: %@", &v15, 0xCu);
      }
    }

    else
    {
      storageIdentifier = 0;
    }

    -[HistoryDirectionsItemSavingTask _saveRouteHistory:withOriginalHistoryIdentifier:arrivalState:](self, "_saveRouteHistory:withOriginalHistoryIdentifier:arrivalState:", route, storageIdentifier, [serviceCopy arrivalState]);
  }

  else
  {
    [(HistoryDirectionsItemSavingTask *)self _launchRouteGeniusIfNeeded];
  }
}

- (void)navigationService:(id)service willChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  if (MNNavigationServiceStateChangedToNavigating())
  {
    self->_navigationIsEnding = 0;
  }
}

- (void)navigationService:(id)service didResumeNavigatingFromWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index reason:(unint64_t)reason
{
  serviceCopy = service;
  v9 = index + 1;
  route = [serviceCopy route];
  legs = [route legs];
  v12 = [legs count];

  if (v9 < v12)
  {
    historyEntryRoute = [(HistoryDirectionsItemSavingTask *)self historyEntryRoute];
    historyEntry = [historyEntryRoute historyEntry];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100680768;
    v15[3] = &unk_1016258C8;
    v15[4] = self;
    v17 = v9;
    v16 = serviceCopy;
    [(HistoryDirectionsItemSavingTask *)self _updateHistoryEntry:historyEntry withBlock:v15];
  }
}

- (void)navigationService:(id)service didUpdateResumeRouteHandle:(id)handle
{
  serviceCopy = service;
  historyEntryRoute = [(HistoryDirectionsItemSavingTask *)self historyEntryRoute];
  _currentRouteHandleStorage = [(HistoryDirectionsItemSavingTask *)self _currentRouteHandleStorage];
  v8 = sub_10067EDB0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    resumeRouteHandle = [serviceCopy resumeRouteHandle];
    *buf = 138412290;
    v14 = resumeRouteHandle;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "navigationService:didUpdateResumeRouteHandle Will update resumeRouteHandle: %@", buf, 0xCu);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100680A60;
  v11[3] = &unk_10165F7B8;
  v12 = serviceCopy;
  v10 = serviceCopy;
  [historyEntryRoute updateResumeRouteHandle:_currentRouteHandleStorage completion:v11];
}

- (void)navigationService:(id)service didReroute:(id)reroute rerouteReason:(unint64_t)reason
{
  serviceCopy = service;
  rerouteCopy = reroute;
  historyEntryRoute = [(HistoryDirectionsItemSavingTask *)self historyEntryRoute];
  v10 = historyEntryRoute;
  if (historyEntryRoute && ([historyEntryRoute historyEntry], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_opt_respondsToSelector(), v11, (v12 & 1) != 0))
  {
    historyEntry = [v10 historyEntry];
    storageIdentifier = [historyEntry storageIdentifier];

    v15 = sub_10067EDB0();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = storageIdentifier;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "didReroute: Will save route with ID: %@", &v16, 0xCu);
    }
  }

  else
  {
    storageIdentifier = 0;
  }

  if (([rerouteCopy source] & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    -[HistoryDirectionsItemSavingTask _saveRouteHistory:withOriginalHistoryIdentifier:arrivalState:](self, "_saveRouteHistory:withOriginalHistoryIdentifier:arrivalState:", rerouteCopy, storageIdentifier, [serviceCopy arrivalState]);
  }
}

- (void)_appWillTerminate:(id)terminate
{
  [(MNNavigationService *)self->_navigationService state];
  if (MNNavigationServiceStateIsNavigating() && [(MNNavigationService *)self->_navigationService navigationState]== 7)
  {
    v4 = sub_10067EDB0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "App is terminating with navigation active at the end of segment, will try to update Share ETA contacts and save historyEntry.", buf, 2u);
    }

    v5 = dispatch_group_create();
    dispatch_group_enter(v5);
    [(HistoryDirectionsItemSavingTask *)self historyEntryRoute];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100680DF8;
    v9[3] = &unk_101661A40;
    v10 = v9[4] = self;
    v11 = v5;
    v6 = v5;
    v7 = v10;
    [(HistoryDirectionsItemSavingTask *)self _preserveAutosharingContacts:1 inHistoryEntry:v7 completion:v9];
    v8 = dispatch_time(0, 2000000000);
    dispatch_group_wait(v6, v8);
  }
}

- (id)_currentRouteHandleStorage
{
  resumeRouteHandle = [(MNNavigationService *)self->_navigationService resumeRouteHandle];

  if (resumeRouteHandle)
  {
    resumeRouteHandle2 = [(MNNavigationService *)self->_navigationService resumeRouteHandle];
    v5 = [GEOResumeRouteHandle resumeRouteHandleStorageFromResumeRouteHandle:resumeRouteHandle2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_launchRouteGeniusIfNeeded
{
  if (self->_shouldLaunchRouteGeniusOnEnd)
  {
    v18 = v2;
    v19 = v3;
    [(MNNavigationService *)self->_navigationService state];
    if ((MNNavigationServiceStateIsNavigating() & 1) == 0)
    {
      self->_shouldLaunchRouteGeniusOnEnd = 0;
      v5 = +[CarDisplayController sharedInstance];
      isCurrentlyConnectedToAnyCarScene = [v5 isCurrentlyConnectedToAnyCarScene];
      routeGeniusManager = sub_10067EDB0();
      v8 = os_log_type_enabled(routeGeniusManager, OS_LOG_TYPE_INFO);
      if (isCurrentlyConnectedToAnyCarScene)
      {
        if (v8)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, routeGeniusManager, OS_LOG_TYPE_INFO, "Route paused and connected to CP -> will start route genius", buf, 2u);
        }

        platformController = [v5 platformController];
        sessionStack = [platformController sessionStack];
        v11 = [sessionStack count];

        if (v11)
        {
          v12 = sub_10067EDB0();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *v15 = 0;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Session stack was not empty. clearing it out so that we can present RG.", v15, 2u);
          }

          platformController2 = [v5 platformController];
          [platformController2 clearSessions];
        }

        routeGeniusManager = [v5 routeGeniusManager];
        chromeViewController = [v5 chromeViewController];
        [routeGeniusManager activateIfPossibleForChrome:chromeViewController];
      }

      else if (v8)
      {
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, routeGeniusManager, OS_LOG_TYPE_INFO, "We're not connected to CP so we won't launch RG.", v17, 2u);
      }
    }
  }
}

- (void)_uninterruptHistoryEntry:(id)entry completion:(id)completion
{
  entryCopy = entry;
  completionCopy = completion;
  v8 = sub_10067EDB0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v15 = entryCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Will un-pause route with history entry: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  routeInterrupter = self->_routeInterrupter;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1006812B4;
  v11[3] = &unk_101660648;
  v10 = completionCopy;
  v12 = v10;
  objc_copyWeak(&v13, buf);
  [(NavigationRouteInterrupting *)routeInterrupter cancelInterruptionOnHistoryEntryRoute:entryCopy completion:v11];
  objc_destroyWeak(&v13);

  objc_destroyWeak(buf);
}

- (void)_interruptAndSaveHistoryEntry:(id)entry completion:(id)completion
{
  entryCopy = entry;
  completionCopy = completion;
  v8 = sub_10067EDB0();
  v9 = v8;
  if (entryCopy)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v16 = entryCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Will pause route with history entry: %@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    routeInterrupter = self->_routeInterrupter;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1006815B8;
    v12[3] = &unk_101660648;
    v13 = completionCopy;
    objc_copyWeak(&v14, buf);
    [(NavigationRouteInterrupting *)routeInterrupter interruptHistoryEntryRoute:entryCopy withCompletion:v12];
    objc_destroyWeak(&v14);

    objc_destroyWeak(buf);
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      routeInfoProvider = self->_routeInfoProvider;
      *buf = 138412290;
      v16 = routeInfoProvider;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to save historyEntryRoute because entry was nil. _routeInfoProvider: %@", buf, 0xCu);
    }
  }
}

- (BOOL)_updateEVInfoForHistoryEntry:(id)entry
{
  entryCopy = entry;
  v4 = +[MNNavigationService sharedService];
  route = [v4 route];

  v6 = +[MNNavigationService sharedService];
  upcomingStop = [v6 upcomingStop];

  if ([route isEVRoute])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  requiredCharge = [entryCopy requiredCharge];
  if (requiredCharge)
  {
    vehicleIdentifier = [entryCopy vehicleIdentifier];
    v11 = vehicleIdentifier != 0;
  }

  else
  {
    v11 = 0;
  }

  v12 = isKindOfClass & 1;
  if (v11 != v12)
  {
    v13 = upcomingStop;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    chargingInfo = [v15 chargingInfo];

    if (isKindOfClass)
    {
      [chargingInfo batteryPercentageAfterCharging];
      v18 = [NSNumber numberWithDouble:v17 * 0.01];
      [entryCopy setRequiredCharge:v18];

      v19 = +[VGVirtualGarageService sharedService];
      activeVehicleIdentifier = [v19 activeVehicleIdentifier];
      [entryCopy setVehicleIdentifier:activeVehicleIdentifier];
    }

    else
    {
      [entryCopy setRequiredCharge:0];
      [entryCopy setVehicleIdentifier:0];
    }

    [entryCopy setType:{objc_msgSend(route, "isEVRoute")}];
  }

  return v11 != v12;
}

- (void)_preserveAutosharingContacts:(BOOL)contacts inHistoryEntry:(id)entry completion:(id)completion
{
  contactsCopy = contacts;
  entryCopy = entry;
  completionCopy = completion;
  if (entryCopy)
  {
    if (contactsCopy)
    {
      archivedTripSharingState = [(NavigationRouteHistoryInfoProviding *)self->_routeInfoProvider archivedTripSharingState];
    }

    else
    {
      archivedTripSharingState = 0;
    }

    v12 = sub_10067EDB0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      if (contactsCopy)
      {
        v13 = "Will archive";
      }

      else
      {
        v13 = "Will clear";
      }

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v15 = @"NO";
      if (isKindOfClass)
      {
        v15 = @"YES";
      }

      v16 = v15;
      *buf = 136315650;
      v20 = v13;
      v21 = 2112;
      v22 = v16;
      v23 = 2048;
      v24 = [archivedTripSharingState length];
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "_preserveAutosharingContacts: %s autosharing: sharing data: %@ (%lu)", buf, 0x20u);
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100681B30;
    v17[3] = &unk_1016610B8;
    v18 = completionCopy;
    [entryCopy setSharedETAData:archivedTripSharingState completion:v17];
  }

  else
  {
    v11 = sub_10067EDB0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "_preserveAutosharingContacts: We don't have an entry to update autosharing", buf, 2u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

- (void)dealloc
{
  v3 = +[MSPSharedTripService sharedInstance];
  [v3 removeSendingObserver:self];

  [(MNNavigationService *)self->_navigationService unregisterObserver:self];
  v4.receiver = self;
  v4.super_class = HistoryDirectionsItemSavingTask;
  [(HistoryDirectionsItemSavingTask *)&v4 dealloc];
}

- (HistoryDirectionsItemSavingTask)initWithNavigationService:(id)service routeInfoProvider:(id)provider routeInterrupter:(id)interrupter
{
  serviceCopy = service;
  providerCopy = provider;
  interrupterCopy = interrupter;
  v17.receiver = self;
  v17.super_class = HistoryDirectionsItemSavingTask;
  v12 = [(HistoryDirectionsItemSavingTask *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_navigationService, service);
    [(MNNavigationService *)v13->_navigationService registerObserver:v13];
    objc_storeStrong(&v13->_routeInfoProvider, provider);
    objc_storeStrong(&v13->_routeInterrupter, interrupter);
    v14 = +[MSPSharedTripService sharedInstance];
    [v14 addSendingObserver:v13];

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 addObserver:v13 selector:"_appWillTerminate:" name:UIApplicationWillTerminateNotification object:0];
  }

  return v13;
}

@end