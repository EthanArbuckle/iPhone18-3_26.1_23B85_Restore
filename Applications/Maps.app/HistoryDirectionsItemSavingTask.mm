@interface HistoryDirectionsItemSavingTask
- (BOOL)_updateEVInfoForHistoryEntry:(id)a3;
- (HistoryDirectionsItemSavingTask)initWithNavigationService:(id)a3 routeInfoProvider:(id)a4 routeInterrupter:(id)a5;
- (id)_currentRouteHandleStorage;
- (unint64_t)_routeProgressWaypointIndexForCurrentLegIndex:(unint64_t)a3 inRoute:(id)a4;
- (void)_appWillTerminate:(id)a3;
- (void)_handleArrivalAtWaypoint:(id)a3 endOfLegIndex:(unint64_t)a4;
- (void)_interruptAndSaveHistoryEntry:(id)a3 completion:(id)a4;
- (void)_launchRouteGeniusIfNeeded;
- (void)_preserveAutosharingContacts:(BOOL)a3 inHistoryEntry:(id)a4 completion:(id)a5;
- (void)_saveCustomRouteToHistory:(id)a3 uuid:(id)a4;
- (void)_saveRouteHistory:(id)a3 withOriginalHistoryIdentifier:(id)a4 arrivalState:(unint64_t)a5;
- (void)_uninterruptHistoryEntry:(id)a3 completion:(id)a4;
- (void)_updateHistoryEntry:(id)a3 withBlock:(id)a4;
- (void)dealloc;
- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)navigationService:(id)a3 didReroute:(id)a4 rerouteReason:(unint64_t)a5;
- (void)navigationService:(id)a3 didResumeNavigatingFromWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5 reason:(unint64_t)a6;
- (void)navigationService:(id)a3 didUpdateResumeRouteHandle:(id)a4;
- (void)navigationService:(id)a3 isApproachingEndOfLeg:(unint64_t)a4;
- (void)navigationService:(id)a3 willChangeFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)navigationService:(id)a3 willEndWithReason:(unint64_t)a4;
- (void)sharedTripService:(id)a3 didUpdateReceivers:(id)a4;
@end

@implementation HistoryDirectionsItemSavingTask

- (void)sharedTripService:(id)a3 didUpdateReceivers:(id)a4
{
  v5 = a4;
  navigationIsEnding = self->_navigationIsEnding;
  v7 = sub_10067EDB0();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (navigationIsEnding)
  {
    if (v8)
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Will not update Share ETA receivers in history item, navigation is ending", &v9, 2u);
    }
  }

  else
  {
    if (v8)
    {
      v9 = 134217984;
      v10 = [v5 count];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Share ETA updated with %lu receivers, will update history item", &v9, 0xCu);
    }

    v7 = [(HistoryDirectionsItemSavingTask *)self historyEntryRoute];
    [(HistoryDirectionsItemSavingTask *)self _preserveAutosharingContacts:1 inHistoryEntry:v7 completion:0];
  }
}

- (unint64_t)_routeProgressWaypointIndexForCurrentLegIndex:(unint64_t)a3 inRoute:(id)a4
{
  v5 = a4;
  v6 = sub_10067EDB0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v32 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Calculating route progress waypoint index for current leg %lu", buf, 0xCu);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v26 = v5;
  v7 = [v5 legs];
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v35 count:16];
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
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        if ([v13 legIndex] >= a3)
        {
          v20 = sub_10067EDB0();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = [v13 legIndex];
            v22 = [v13 destination];
            v23 = [v22 name];
            *buf = 134218243;
            v32 = v21;
            v33 = 2113;
            v34 = v23;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "\tFound user-provided waypoint for resuming is %lu (%{private}@)", buf, 0x16u);
          }

          goto LABEL_21;
        }

        v14 = [v13 destination];
        v15 = [v14 isServerProvidedWaypoint];

        if (v15)
        {
          v16 = sub_10067EDB0();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v17 = [v13 legIndex];
            v18 = [v13 destination];
            v19 = [v18 name];
            *buf = 134218243;
            v32 = v17;
            v33 = 2113;
            v34 = v19;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "\tSkipping leg %lu (%{private}@), is server-provided waypoint", buf, 0x16u);
          }
        }

        else
        {
          ++v11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v27 objects:v35 count:16];
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
    v32 = v11;
    v33 = 2048;
    v34 = a3;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "\tCalculated route progress index %lu given current leg %lu", buf, 0x16u);
  }

  return v11;
}

- (void)_saveCustomRouteToHistory:(id)a3 uuid:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10067EDB0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v6 uniqueRouteID];
    v10 = [v6 storageID];
    v13 = 138543874;
    v14 = v9;
    v15 = 2114;
    v16 = v7;
    v17 = 2114;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Saving custom route %{public}@ on uuid %{public}@, storageID %{public}@", &v13, 0x20u);
  }

  v11 = [[GEOComposedWaypointToRoute alloc] initWithRoute:v6];
  v12 = [HistoryEntryRecentsItem saveCustomRoute:v6 asWaypoint:v11 withOriginalHistoryIdentifier:v7];
  [(NavigationRouteHistoryInfoProviding *)self->_routeInfoProvider updateHistoryEntryRoute:v12];
}

- (void)_saveRouteHistory:(id)a3 withOriginalHistoryIdentifier:(id)a4 arrivalState:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  if ([v8 source] == 3 || objc_msgSend(v8, "source") == 2)
  {
    [(HistoryDirectionsItemSavingTask *)self _saveCustomRouteToHistory:v8 uuid:v9];
  }

  else
  {
    v10 = sub_10067EDB0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [(HistoryDirectionsItemSavingTask *)self historyEntryRoute];
      if (a5 - 1 > 4)
      {
        v12 = @"Unavailable";
      }

      else
      {
        v12 = *(&off_101631088 + a5 - 1);
      }

      v13 = v12;
      *buf = 138412802;
      v20 = v11;
      v21 = 2112;
      v22 = v9;
      v23 = 2114;
      v24 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Updating historyEntryRoute : %@. originalUUID: %@, arrivalState: %{public}@", buf, 0x20u);
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10067F4C0;
    v15[3] = &unk_101625930;
    v17 = self;
    v18 = a5;
    v16 = v8;
    v14 = [HistoryEntryRecentsItem saveRoute:v16 withOriginalHistoryIdentifier:v9 editBlock:v15];
    [(NavigationRouteHistoryInfoProviding *)self->_routeInfoProvider updateHistoryEntryRoute:v14];
  }
}

- (void)_updateHistoryEntry:(id)a3 withBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
    v8 = sub_10067EDB0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v7 identifier];
      v10 = objc_retainBlock(v6);
      *buf = 138543618;
      v21 = v9;
      v22 = 2114;
      v23 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Adding edit+commit blocks to history entry (non-MPR): %{public}@, block: %{public}@", buf, 0x16u);
    }

    (*(v6 + 2))(v6, v7, 0);
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
    v14 = v5;
    v15 = sub_10067EDB0();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v14 identifier];
      v17 = objc_retainBlock(v6);
      *buf = 138543618;
      v21 = v16;
      v22 = 2114;
      v23 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Adding edit+commit blocks to history entry (MPR): %{public}@, block: %{public}@", buf, 0x16u);
    }

    (*(v6 + 2))(v6, 0, v14);
    v11 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
    v18 = v14;
    v12 = [NSArray arrayWithObjects:&v18 count:1];
    v13 = &stru_101625908;
    goto LABEL_9;
  }

LABEL_10:
}

- (void)navigationService:(id)a3 willEndWithReason:(unint64_t)a4
{
  v6 = a3;
  self->_navigationIsEnding = 1;
  v7 = [(HistoryDirectionsItemSavingTask *)self historyEntryRoute];
  v8 = [v6 route];
  v9 = sub_10067EDB0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v22 = a4;
    if (a4 - 1 > 9)
    {
      v10 = @"Unknown";
    }

    else
    {
      v10 = *(&off_101625970 + a4 - 1);
    }

    if ([v6 isResumingMultipointRoute])
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
    if ([v8 isMultipointRoute])
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    v15 = v14;
    v20 = [v6 targetLegIndex];
    v16 = [v6 route];
    v17 = [v16 legs];
    *buf = 138544898;
    v24 = v10;
    v25 = 2114;
    v26 = v12;
    v27 = 2114;
    v28 = v21;
    v29 = 2114;
    v30 = v15;
    v31 = 2048;
    v32 = v20;
    v33 = 2048;
    v34 = [v17 count];
    v35 = 2048;
    v36 = [v6 stepIndex];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Navigation will end with reason: %{public}@ (resumed: %{public}@, arrived: %{public}@, multi-point: %{public}@, target leg: %lu/%lu, step: %lu).", buf, 0x48u);

    a4 = v22;
  }

  if (self->_arrivedAtDestination || !sub_10067FE68(v6, a4))
  {
    v19 = sub_10067EDB0();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Will not interrupt history for resuming later. Will clear Share ETA contacts and re-save.", buf, 2u);
    }

    [(HistoryDirectionsItemSavingTask *)self _preserveAutosharingContacts:0 inHistoryEntry:v7 completion:0];
    [(HistoryDirectionsItemSavingTask *)self _uninterruptHistoryEntry:v7 completion:0];
  }

  else
  {
    v18 = sub_10067EDB0();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Have not arrived at final destination, will interrupt and save history item to resume later.", buf, 2u);
    }

    [(HistoryDirectionsItemSavingTask *)self _interruptAndSaveHistoryEntry:v7 completion:0];
  }
}

- (void)_handleArrivalAtWaypoint:(id)a3 endOfLegIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = sub_10067EDB0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v6 shortDescription];
    *buf = 136315650;
    v18 = "[HistoryDirectionsItemSavingTask _handleArrivalAtWaypoint:endOfLegIndex:]";
    v19 = 2112;
    v20 = v8;
    v21 = 2048;
    v22 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s waypoint: %@ legIndex: %lu", buf, 0x20u);
  }

  v9 = +[MNNavigationService sharedService];
  v10 = [v9 route];
  self->_arrivedAtDestination = [v10 isLegIndexOfLastLeg:a4];

  v11 = [(HistoryDirectionsItemSavingTask *)self historyEntryRoute];
  v12 = [v11 historyEntry];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100680114;
  v14[3] = &unk_1016258C8;
  v15 = v9;
  v16 = a4;
  v14[4] = self;
  v13 = v9;
  [(HistoryDirectionsItemSavingTask *)self _updateHistoryEntry:v12 withBlock:v14];
}

- (void)navigationService:(id)a3 isApproachingEndOfLeg:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 route];
  v8 = [v7 legs];
  if ([v8 count] <= a4)
  {
  }

  else
  {
    v9 = [v6 route];
    v10 = [v9 legs];
    v11 = [v10 objectAtIndexedSubscript:a4];

    if (v11)
    {
      v12 = [v11 destination];
      [(HistoryDirectionsItemSavingTask *)self _handleArrivalAtWaypoint:v12 endOfLegIndex:a4];

      goto LABEL_7;
    }
  }

  v11 = sub_10067EDB0();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v13 = 134217984;
    v14 = a4;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "navigationService:isApproachingEndOfLeg: received an invalid legIndex: %lu", &v13, 0xCu);
  }

LABEL_7:
}

- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  v6 = a3;
  if (MNNavigationServiceStateChangedToNavigating())
  {
    *&self->_arrivedAtDestination = 0;
    v7 = [v6 route];
    v8 = [(HistoryDirectionsItemSavingTask *)self historyEntryRoute];
    v9 = v8;
    if (v8 && ([v8 historyEntry], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_opt_respondsToSelector(), v10, (v11 & 1) != 0))
    {
      v12 = [v9 historyEntry];
      v13 = [v12 storageIdentifier];

      v14 = sub_10067EDB0();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = 138412290;
        v16 = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "didChangeFromState: Will save route with ID: %@", &v15, 0xCu);
      }
    }

    else
    {
      v13 = 0;
    }

    -[HistoryDirectionsItemSavingTask _saveRouteHistory:withOriginalHistoryIdentifier:arrivalState:](self, "_saveRouteHistory:withOriginalHistoryIdentifier:arrivalState:", v7, v13, [v6 arrivalState]);
  }

  else
  {
    [(HistoryDirectionsItemSavingTask *)self _launchRouteGeniusIfNeeded];
  }
}

- (void)navigationService:(id)a3 willChangeFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  if (MNNavigationServiceStateChangedToNavigating())
  {
    self->_navigationIsEnding = 0;
  }
}

- (void)navigationService:(id)a3 didResumeNavigatingFromWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5 reason:(unint64_t)a6
{
  v8 = a3;
  v9 = a5 + 1;
  v10 = [v8 route];
  v11 = [v10 legs];
  v12 = [v11 count];

  if (v9 < v12)
  {
    v13 = [(HistoryDirectionsItemSavingTask *)self historyEntryRoute];
    v14 = [v13 historyEntry];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100680768;
    v15[3] = &unk_1016258C8;
    v15[4] = self;
    v17 = v9;
    v16 = v8;
    [(HistoryDirectionsItemSavingTask *)self _updateHistoryEntry:v14 withBlock:v15];
  }
}

- (void)navigationService:(id)a3 didUpdateResumeRouteHandle:(id)a4
{
  v5 = a3;
  v6 = [(HistoryDirectionsItemSavingTask *)self historyEntryRoute];
  v7 = [(HistoryDirectionsItemSavingTask *)self _currentRouteHandleStorage];
  v8 = sub_10067EDB0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v5 resumeRouteHandle];
    *buf = 138412290;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "navigationService:didUpdateResumeRouteHandle Will update resumeRouteHandle: %@", buf, 0xCu);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100680A60;
  v11[3] = &unk_10165F7B8;
  v12 = v5;
  v10 = v5;
  [v6 updateResumeRouteHandle:v7 completion:v11];
}

- (void)navigationService:(id)a3 didReroute:(id)a4 rerouteReason:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(HistoryDirectionsItemSavingTask *)self historyEntryRoute];
  v10 = v9;
  if (v9 && ([v9 historyEntry], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_opt_respondsToSelector(), v11, (v12 & 1) != 0))
  {
    v13 = [v10 historyEntry];
    v14 = [v13 storageIdentifier];

    v15 = sub_10067EDB0();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "didReroute: Will save route with ID: %@", &v16, 0xCu);
    }
  }

  else
  {
    v14 = 0;
  }

  if (([v8 source] & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    -[HistoryDirectionsItemSavingTask _saveRouteHistory:withOriginalHistoryIdentifier:arrivalState:](self, "_saveRouteHistory:withOriginalHistoryIdentifier:arrivalState:", v8, v14, [v7 arrivalState]);
  }
}

- (void)_appWillTerminate:(id)a3
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
  v3 = [(MNNavigationService *)self->_navigationService resumeRouteHandle];

  if (v3)
  {
    v4 = [(MNNavigationService *)self->_navigationService resumeRouteHandle];
    v5 = [GEOResumeRouteHandle resumeRouteHandleStorageFromResumeRouteHandle:v4];
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
      v6 = [v5 isCurrentlyConnectedToAnyCarScene];
      v7 = sub_10067EDB0();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
      if (v6)
      {
        if (v8)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Route paused and connected to CP -> will start route genius", buf, 2u);
        }

        v9 = [v5 platformController];
        v10 = [v9 sessionStack];
        v11 = [v10 count];

        if (v11)
        {
          v12 = sub_10067EDB0();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *v15 = 0;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Session stack was not empty. clearing it out so that we can present RG.", v15, 2u);
          }

          v13 = [v5 platformController];
          [v13 clearSessions];
        }

        v7 = [v5 routeGeniusManager];
        v14 = [v5 chromeViewController];
        [v7 activateIfPossibleForChrome:v14];
      }

      else if (v8)
      {
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "We're not connected to CP so we won't launch RG.", v17, 2u);
      }
    }
  }
}

- (void)_uninterruptHistoryEntry:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10067EDB0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Will un-pause route with history entry: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  routeInterrupter = self->_routeInterrupter;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1006812B4;
  v11[3] = &unk_101660648;
  v10 = v7;
  v12 = v10;
  objc_copyWeak(&v13, buf);
  [(NavigationRouteInterrupting *)routeInterrupter cancelInterruptionOnHistoryEntryRoute:v6 completion:v11];
  objc_destroyWeak(&v13);

  objc_destroyWeak(buf);
}

- (void)_interruptAndSaveHistoryEntry:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10067EDB0();
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Will pause route with history entry: %@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    routeInterrupter = self->_routeInterrupter;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1006815B8;
    v12[3] = &unk_101660648;
    v13 = v7;
    objc_copyWeak(&v14, buf);
    [(NavigationRouteInterrupting *)routeInterrupter interruptHistoryEntryRoute:v6 withCompletion:v12];
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

- (BOOL)_updateEVInfoForHistoryEntry:(id)a3
{
  v3 = a3;
  v4 = +[MNNavigationService sharedService];
  v5 = [v4 route];

  v6 = +[MNNavigationService sharedService];
  v7 = [v6 upcomingStop];

  if ([v5 isEVRoute])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  v9 = [v3 requiredCharge];
  if (v9)
  {
    v10 = [v3 vehicleIdentifier];
    v11 = v10 != 0;
  }

  else
  {
    v11 = 0;
  }

  v12 = isKindOfClass & 1;
  if (v11 != v12)
  {
    v13 = v7;
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

    v16 = [v15 chargingInfo];

    if (isKindOfClass)
    {
      [v16 batteryPercentageAfterCharging];
      v18 = [NSNumber numberWithDouble:v17 * 0.01];
      [v3 setRequiredCharge:v18];

      v19 = +[VGVirtualGarageService sharedService];
      v20 = [v19 activeVehicleIdentifier];
      [v3 setVehicleIdentifier:v20];
    }

    else
    {
      [v3 setRequiredCharge:0];
      [v3 setVehicleIdentifier:0];
    }

    [v3 setType:{objc_msgSend(v5, "isEVRoute")}];
  }

  return v11 != v12;
}

- (void)_preserveAutosharingContacts:(BOOL)a3 inHistoryEntry:(id)a4 completion:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  if (v8)
  {
    if (v6)
    {
      v10 = [(NavigationRouteHistoryInfoProviding *)self->_routeInfoProvider archivedTripSharingState];
    }

    else
    {
      v10 = 0;
    }

    v12 = sub_10067EDB0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      if (v6)
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
      v24 = [v10 length];
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "_preserveAutosharingContacts: %s autosharing: sharing data: %@ (%lu)", buf, 0x20u);
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100681B30;
    v17[3] = &unk_1016610B8;
    v18 = v9;
    [v8 setSharedETAData:v10 completion:v17];
  }

  else
  {
    v11 = sub_10067EDB0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "_preserveAutosharingContacts: We don't have an entry to update autosharing", buf, 2u);
    }

    if (v9)
    {
      v9[2](v9);
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

- (HistoryDirectionsItemSavingTask)initWithNavigationService:(id)a3 routeInfoProvider:(id)a4 routeInterrupter:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = HistoryDirectionsItemSavingTask;
  v12 = [(HistoryDirectionsItemSavingTask *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_navigationService, a3);
    [(MNNavigationService *)v13->_navigationService registerObserver:v13];
    objc_storeStrong(&v13->_routeInfoProvider, a4);
    objc_storeStrong(&v13->_routeInterrupter, a5);
    v14 = +[MSPSharedTripService sharedInstance];
    [v14 addSendingObserver:v13];

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 addObserver:v13 selector:"_appWillTerminate:" name:UIApplicationWillTerminateNotification object:0];
  }

  return v13;
}

@end