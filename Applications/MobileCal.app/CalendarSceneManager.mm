@interface CalendarSceneManager
+ (BOOL)isSceneCalendarAppScene:(id)scene;
+ (id)_applicationLastActiveTime;
+ (id)_encodeIdentifier:(id)identifier;
+ (id)_sharedState;
+ (void)setApplicationLastActiveTimeProvider:(id)provider;
- (BOOL)_areMultipleScenesOpen;
- (BOOL)_continueUserActivity:(id)activity restoreSelectedOccurrence:(BOOL)occurrence restoreSelectedDate:(BOOL)date restorationHandler:(id)handler;
- (BOOL)_isAnyWindowShowingDelegateCalendar;
- (BOOL)_isUserActivityForStateRestoration:(id)restoration;
- (BOOL)_shouldMaintainToday;
- (BOOL)_shouldResumeToTodayOnBecomeActive;
- (double)_resumeToTodayTimeout;
- (id)_eventURLFromLaunchURL:(id)l isTravel:(BOOL *)travel;
- (id)_extractNumberFromUserActivity:(id)activity forKey:(id)key;
- (id)_setUpModel;
- (id)stateRestorationActivityForScene:(id)scene;
- (void)__buildCalendarSyncHashesForCalendars:(id)calendars;
- (void)__restoreSelectedCalendarsFromPreferences;
- (void)_addPersistedStateFromCalendarModelToDictionary:(id)dictionary;
- (void)_collectStats:(id)stats;
- (void)_constructAndPresentSplashScreenFromViewController:(id)controller window:(id)window;
- (void)_displayedOccurrencesChangedForTheFirstTime:(id)time;
- (void)_extendedLaunchDidComplete;
- (void)_mainViewControllerDidRequestSceneTitleUpdate:(id)update;
- (void)_openURL:(id)l;
- (void)_receivedSplashScreenCompletedNotification;
- (void)_refreshAccountListAndViewContentsIfNeededForModel:(id)model;
- (void)_restoreModelPersistedStateFromUserActivity:(id)activity;
- (void)_restoreSelectedCalendarsFromPreferenceIfNeeded;
- (void)_restoreStateFromUserActivity:(id)activity;
- (void)_selectedIdentityDidUpdate:(id)update;
- (void)_setupDebugMenu:(id)menu;
- (void)_showDate:(id)date inView:(unint64_t)view;
- (void)_splashScreenDidDismissShouldNotify:(BOOL)notify;
- (void)_stateRestoreSelectedCalendarsFromUserActivity:(id)activity;
- (void)_topMainViewControllerCompletedExtendedLaunch:(id)launch;
- (void)_updateSceneActivationConditions;
- (void)_updateSceneTitle;
- (void)diagnosticsViewControllerDidDismiss;
- (void)scene:(id)scene didFailToContinueUserActivityWithType:(id)type error:(id)error;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)sceneWillResignActive:(id)active;
- (void)showDebugMenu;
- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler;
@end

@implementation CalendarSceneManager

+ (id)_sharedState
{
  if (qword_100251D08 != -1)
  {
    sub_100003278();
  }

  v3 = qword_100251D00;

  return v3;
}

- (id)_setUpModel
{
  v3 = +[Application createNewCalendarModel];
  v4 = +[CalendarSceneManager _sharedState];
  extendedLaunchComplete = [v4 extendedLaunchComplete];

  if (extendedLaunchComplete)
  {
    [v3 startNotificationMonitor];
    [(CUIKCalendarModel *)self->_model checkLocationAuthorizationAndAllowEventLocationPrediction];
  }

  return v3;
}

- (void)__restoreSelectedCalendarsFromPreferences
{
  v3 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
  {
    model = self->_model;
    v5 = v3;
    eventStore = [(CUIKCalendarModel *)model eventStore];
    sourceForSelectedIdentity = [(CUIKCalendarModel *)self->_model sourceForSelectedIdentity];
    *buf = 138412802;
    v44 = model;
    v45 = 2112;
    v46 = eventStore;
    v47 = 2112;
    v48 = sourceForSelectedIdentity;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "CalendarSceneManager Setting up selected calendars for model from preference %@ (%@ %@)", buf, 0x20u);
  }

  v8 = [EKCalendarVisibilityManager alloc];
  eventStore2 = [(CUIKCalendarModel *)self->_model eventStore];
  sourceForSelectedIdentity2 = [(CUIKCalendarModel *)self->_model sourceForSelectedIdentity];
  v11 = [v8 initWithEventStore:eventStore2 limitedToSource:sourceForSelectedIdentity2 visibilityChangedCallback:0 queue:0];

  invisibleCalendarsForAllIdentities = [v11 invisibleCalendarsForAllIdentities];
  if ([UIApp launchedToTest])
  {
    v34 = invisibleCalendarsForAllIdentities;
    v35 = v11;
    eventStore3 = [(CUIKCalendarModel *)self->_model eventStore];
    v14 = [eventStore3 calendarsForEntityType:0];

    invisibleCalendarsForAllIdentities = [v14 mutableCopy];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v15 = v14;
    v16 = [v15 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v39;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v39 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v38 + 1) + 8 * i);
          title = [v20 title];
          v22 = [title containsString:@"Legacy"];

          if ((v22 & 1) == 0)
          {
            [invisibleCalendarsForAllIdentities removeObject:v20];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v17);
    }

    v11 = v35;
  }

  v23 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
  {
    v24 = v23;
    v25 = [invisibleCalendarsForAllIdentities count];
    *buf = 134217984;
    v44 = v25;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "CalendarSceneManager Invisible calendars: (%tu)", buf, 0xCu);
  }

  v26 = [[NSSet alloc] initWithArray:invisibleCalendarsForAllIdentities];
  [(CUIKCalendarModel *)self->_model setUnselectedCalendars:v26];
  [(CUIKCalendarModel *)self->_model setMaxCachedDays:300];
  v27 = +[EKPreferences shared];
  collapsedSectionIdentifiers = [v27 collapsedSectionIdentifiers];
  v29 = [NSSet setWithArray:collapsedSectionIdentifiers];
  [(CUIKCalendarModel *)self->_model setCollapsedSectionIdentifiers:v29];

  v30 = +[EKCalendarVisibilityManager unselectedCalendarIdentifiersForFocusMode];
  v31 = v30 != 0;

  [(CUIKCalendarModel *)self->_model setFocusFilterMode:v31];
  v32 = dispatch_get_global_queue(-2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003FC0;
  block[3] = &unk_10020EC68;
  block[4] = self;
  v37 = v11;
  v33 = v11;
  dispatch_async(v32, block);
}

- (void)_restoreSelectedCalendarsFromPreferenceIfNeeded
{
  if (!self->_finishedSetup)
  {
    [(CalendarSceneManager *)self __restoreSelectedCalendarsFromPreferences];
    self->_finishedSetup = 1;
  }
}

- (void)_updateSceneActivationConditions
{
  selfCopy = self;
  model = [(CalendarSceneManager *)self model];
  sourceForSelectedIdentity = [model sourceForSelectedIdentity];

  v5 = &_s19RemindersAppIntents0A40InCalendarReminderEditingModuleInterfaceP036requiresUserConfirmationForCancelingG0SbvgTj_ptr;
  if (sourceForSelectedIdentity)
  {
    model2 = [(CalendarSceneManager *)selfCopy model];
    sourceForSelectedIdentity2 = [model2 sourceForSelectedIdentity];
    sourceIdentifier = [sourceForSelectedIdentity2 sourceIdentifier];

    v9 = [CalendarSceneManager _encodeIdentifier:sourceIdentifier];

    v10 = [NSString stringWithFormat:@"x-apple-calevent://%@/", v9];
    v11 = [NSPredicate predicateWithFormat:@"self CONTAINS %@", v10];

    goto LABEL_17;
  }

  v9 = +[NSMutableArray array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v31 = selfCopy;
  model3 = [(CalendarSceneManager *)selfCopy model];
  eventStore = [model3 eventStore];
  delegateSources = [eventStore delegateSources];

  obj = delegateSources;
  v15 = [delegateSources countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v34;
    do
    {
      v18 = 0;
      do
      {
        if (*v34 != v17)
        {
          objc_enumerationMutation(obj);
        }

        sourceIdentifier2 = [*(*(&v33 + 1) + 8 * v18) sourceIdentifier];
        v20 = [CalendarSceneManager _encodeIdentifier:sourceIdentifier2];

        v21 = [NSString stringWithFormat:@"x-apple-calevent://%@/", v20];
        [v5[418] predicateWithFormat:@"self CONTAINS %@", v21];
        v23 = v22 = v5;
        v24 = [NSCompoundPredicate notPredicateWithSubpredicate:v23];

        v5 = v22;
        [v9 addObject:v24];

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v16);
  }

  if ([v9 count] == 1)
  {
    firstObject = [v9 firstObject];
  }

  else
  {
    if ([v9 count] < 2)
    {
      v11 = 0;
      goto LABEL_16;
    }

    firstObject = [NSCompoundPredicate andPredicateWithSubpredicates:v9];
  }

  v11 = firstObject;
LABEL_16:
  selfCopy = v31;
LABEL_17:

  v26 = objc_alloc_init(UISceneActivationConditions);
  v27 = [v5[418] predicateWithValue:1];
  [v26 setCanActivateForTargetContentIdentifierPredicate:v27];

  if (v11)
  {
    [v26 setPrefersToActivateForTargetContentIdentifierPredicate:v11];
  }

  else
  {
    v28 = [v5[418] predicateWithValue:0];
    [v26 setPrefersToActivateForTargetContentIdentifierPredicate:v28];
  }

  mobileCalWindow = [(CalendarSceneManager *)selfCopy mobileCalWindow];
  windowScene = [mobileCalWindow windowScene];
  [windowScene setActivationConditions:v26];
}

- (void)_updateSceneTitle
{
  if (EKUIDeviceCanTransform())
  {
    sourceForSelectedIdentity = [(CUIKCalendarModel *)self->_model sourceForSelectedIdentity];

    if (sourceForSelectedIdentity)
    {
      sourceForSelectedIdentity2 = [(CUIKCalendarModel *)self->_model sourceForSelectedIdentity];
      v5 = CUIKDisplayedTitleForSource();
    }

    else
    {
      if ([(CalendarSceneManager *)self _isAnyWindowShowingDelegateCalendar])
      {
        sourceForSelectedIdentity2 = [NSBundle bundleForClass:objc_opt_class()];
        [sourceForSelectedIdentity2 localizedStringForKey:@"My Calendar" value:&stru_1002133B8 table:0];
      }

      else
      {
        sourceForSelectedIdentity2 = [(RootNavigationController *)self->_rootNavigationController topMainViewControllerContainer];
        [sourceForSelectedIdentity2 sceneTitle];
      }
      v5 = ;
    }

    v8 = v5;

    mobileCalWindow = [(CalendarSceneManager *)self mobileCalWindow];
    windowScene = [mobileCalWindow windowScene];
    [windowScene setTitle:v8];
  }
}

- (void)_extendedLaunchDidComplete
{
  [CalMCSignpost endLaunchToView:[(RootNavigationController *)self->_rootNavigationController currentViewType] extended:1];
  self->_sceneHasCompletedExtendedLaunch = 1;
  [(CUIKCalendarModel *)self->_model startNotificationMonitor];
  model = self->_model;

  [(CUIKCalendarModel *)model checkLocationAuthorizationAndAllowEventLocationPrediction];
}

+ (BOOL)isSceneCalendarAppScene:(id)scene
{
  delegate = [scene delegate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (void)setApplicationLastActiveTimeProvider:(id)provider
{
  providerCopy = provider;
  _sharedState = [self _sharedState];
  [_sharedState setApplicationLastActiveTimeProvider:providerCopy];
}

- (void)_showDate:(id)date inView:(unint64_t)view
{
  dateCopy = date;
  v7 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138543362;
    v20 = dateCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "CalendarSceneManager showDate inView with date %{public}@", &v19, 0xCu);
  }

  calendar = [(CUIKCalendarModel *)self->_model calendar];
  timeZone = [calendar timeZone];
  v10 = [EKCalendarDate calendarDateWithDate:dateCopy timeZone:timeZone];

  v11 = 0;
  v12 = -1;
  v13 = 1;
  if (view > 3)
  {
    if (view == 4)
    {
      v11 = 0;
      v13 = 0;
      v12 = 0;
      goto LABEL_16;
    }

    if (view == 5)
    {
      v11 = 0;
      v13 = 0;
      v12 = 4;
      goto LABEL_16;
    }

    if (view != 6)
    {
      goto LABEL_16;
    }

LABEL_11:
    v11 = 0;
    v13 = 0;
    v12 = 1;
    goto LABEL_16;
  }

  switch(view)
  {
    case 1uLL:
      v11 = 0;
      v13 = 0;
      v12 = 3;
      break;
    case 2uLL:
      v13 = 0;
      v11 = 1;
      v12 = 2;
      break;
    case 3uLL:
      goto LABEL_11;
  }

LABEL_16:
  traitCollection = [(RootNavigationController *)self->_rootNavigationController traitCollection];
  v15 = traitCollection;
  if (v11)
  {
    if ([traitCollection horizontalSizeClass] == 1 && objc_msgSend(v15, "verticalSizeClass") == 2)
    {
      model = [(CalendarSceneManager *)self model];
      numDaysToShow = [model numDaysToShow];

      if (numDaysToShow == 1)
      {
        v12 = 3;
      }

      else
      {
        v12 = 2;
      }
    }

    else
    {
      v12 = 2;
    }

    goto LABEL_25;
  }

  if ((v13 & 1) == 0)
  {
LABEL_25:
    v18 = [(RootNavigationController *)self->_rootNavigationController pushCalendarViewControllerWithViewType:v12 andDate:v10];
    goto LABEL_26;
  }

  [(RootNavigationController *)self->_rootNavigationController showDate:v10 animated:1];
LABEL_26:
}

- (void)diagnosticsViewControllerDidDismiss
{
  diagnosticsViewController = [(CalendarSceneManager *)self diagnosticsViewController];
  [diagnosticsViewController setDelegate:0];

  [(CalendarSceneManager *)self setDiagnosticsViewController:0];
}

- (void)_setupDebugMenu:(id)menu
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100118E44;
  v4[3] = &unk_10020EB00;
  v4[4] = self;
  statusBarManager = [menu statusBarManager];
  [statusBarManager setDebugMenuHandler:v4];
}

- (void)showDebugMenu
{
  diagnosticsViewController = [(CalendarSceneManager *)self diagnosticsViewController];
  if (diagnosticsViewController)
  {
  }

  else if (sub_10011F368())
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2050000000;
    v4 = qword_100251D38;
    v14 = qword_100251D38;
    if (!qword_100251D38)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10011F4AC;
      v10[3] = &unk_100210C70;
      v10[4] = &v11;
      sub_10011F4AC(v10);
      v4 = v12[3];
    }

    v5 = v4;
    _Block_object_dispose(&v11, 8);
    v6 = objc_alloc_init(v4);
    [(CalendarSceneManager *)self setDiagnosticsViewController:v6];

    diagnosticsViewController2 = [(CalendarSceneManager *)self diagnosticsViewController];
    [diagnosticsViewController2 setDelegate:self];

    rootNavigationController = [(CalendarSceneManager *)self rootNavigationController];
    diagnosticsViewController3 = [(CalendarSceneManager *)self diagnosticsViewController];
    [rootNavigationController presentViewController:diagnosticsViewController3 animated:1 completion:0];
  }
}

- (void)__buildCalendarSyncHashesForCalendars:(id)calendars
{
  calendarsCopy = calendars;
  v4 = +[EKPreferences shared];
  [v4 setDeselectedCalendars:calendarsCopy reason:@"restoring selected calendars from preferences"];
}

- (void)_stateRestoreSelectedCalendarsFromUserActivity:(id)activity
{
  activityCopy = activity;
  if ([(CalendarSceneManager *)self _isUserActivityForStateRestoration:activityCopy])
  {
    if (([UIApp launchedToTest] & 1) == 0)
    {
      v5 = +[NSMutableSet set];
      userInfo = [activityCopy userInfo];
      v7 = [userInfo objectForKeyedSubscript:@"_UserActivityStateRestore_InvisibleCalendars"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v9 = [v8 countByEnumeratingWithState:&v61 objects:v71 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v62;
          do
          {
            for (i = 0; i != v10; i = i + 1)
            {
              if (*v62 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v61 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v5 addObject:v13];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v61 objects:v71 count:16];
          }

          while (v10);
        }
      }

      v51 = v7;
      selfCopy = self;
      eventStore = [(CUIKCalendarModel *)self->_model eventStore];
      v15 = [eventStore calendarsForEntityType:0];

      v16 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v5 count]);
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v17 = v15;
      v18 = [v17 countByEnumeratingWithState:&v57 objects:v70 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v58;
        do
        {
          for (j = 0; j != v19; j = j + 1)
          {
            if (*v58 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v57 + 1) + 8 * j);
            calendarIdentifier = [v22 calendarIdentifier];
            v24 = [v5 containsObject:calendarIdentifier];

            if (v24)
            {
              [v16 addObject:v22];
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v57 objects:v70 count:16];
        }

        while (v19);
      }

      v25 = [v5 count];
      if (v25 != [v16 count])
      {
        v26 = kCalUILogHandle;
        if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v27 = v26;
          v28 = [v5 count];
          v29 = [v16 count];
          *buf = 134218240;
          v67 = v28;
          v68 = 2048;
          v69 = v29;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Calendar state restoration: tried to restore %lu invisible calendars, but only found %lu.", buf, 0x16u);
        }
      }

      v30 = kCalUILogHandle;
      v31 = selfCopy;
      if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
      {
        v32 = v30;
        v33 = [v16 count];
        *buf = 134217984;
        v67 = v33;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Calendar state restoration: restoring unselected calendars: %tu", buf, 0xCu);
      }

      [(CUIKCalendarModel *)selfCopy->_model setUnselectedCalendars:v16];
      v34 = +[NSMutableSet set];
      userInfo2 = [activityCopy userInfo];
      v36 = [userInfo2 objectForKeyedSubscript:@"_UserActivityStateRestore_CollapsedSectionIdentifiers"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v49 = v36;
        v50 = activityCopy;
        v37 = v36;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v38 = [v37 countByEnumeratingWithState:&v53 objects:v65 count:16];
        if (v38)
        {
          v39 = v38;
          v40 = *v54;
          do
          {
            for (k = 0; k != v39; k = k + 1)
            {
              if (*v54 != v40)
              {
                objc_enumerationMutation(v37);
              }

              v42 = *(*(&v53 + 1) + 8 * k);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v34 addObject:v42];
              }
            }

            v39 = [v37 countByEnumeratingWithState:&v53 objects:v65 count:16];
          }

          while (v39);
        }

        v36 = v49;
        activityCopy = v50;
        v31 = selfCopy;
      }

      [(CUIKCalendarModel *)v31->_model setCollapsedSectionIdentifiers:v34, v49, v50];
      v43 = +[EKCalendarVisibilityManager unselectedCalendarIdentifiersForFocusMode];

      if (v43)
      {
        userInfo3 = [activityCopy userInfo];
        v45 = [userInfo3 objectForKeyedSubscript:@"_UserActivityStateRestore_FocusFilterMode"];

        integerValue = [v45 integerValue];
        if (integerValue <= 1)
        {
          v47 = 1;
        }

        else
        {
          v47 = integerValue;
        }

        [(CUIKCalendarModel *)v31->_model setFocusFilterMode:v47];
      }

      v31->_finishedSetup = 1;
    }
  }

  else
  {
    v48 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Calendar state restoration (selected calendars): currently ignoring user activity that does not have a state restoration flag.", buf, 2u);
    }
  }
}

- (void)_displayedOccurrencesChangedForTheFirstTime:(id)time
{
  topMainViewControllerContainer = [(RootNavigationController *)self->_rootNavigationController topMainViewControllerContainer];
  currentChildViewController = [topMainViewControllerContainer currentChildViewController];
  if (([currentChildViewController handlesNotifyOnExtendedLaunchCompletion] & 1) == 0)
  {
    v6 = +[CalendarSceneManager _sharedState];
    extendedLaunchComplete = [v6 extendedLaunchComplete];

    if (extendedLaunchComplete)
    {
      if (!self->_sceneHasCompletedExtendedLaunch)
      {
        [(CalendarSceneManager *)self _extendedLaunchDidComplete];
      }
    }

    else
    {
      [(CalendarSceneManager *)self _extendedLaunchDidComplete];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100119734;
      block[3] = &unk_10020EB00;
      block[4] = self;
      if (qword_100251CF8 != -1)
      {
        dispatch_once(&qword_100251CF8, block);
      }
    }

    v8 = +[CalendarSceneManager _sharedState];
    [v8 setExtendedLaunchComplete:1];
  }

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 removeObserver:self name:CUIKCalendarModelDisplayedOccurrencesChangedForTheFirstTimeNotification object:0];
}

- (void)_topMainViewControllerCompletedExtendedLaunch:(id)launch
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:@"MainViewControllerDidCompleteExtendedLaunchNotification" object:0];

  v5 = +[CalendarSceneManager _sharedState];
  if ([v5 extendedLaunchComplete])
  {
    sceneHasCompletedExtendedLaunch = self->_sceneHasCompletedExtendedLaunch;

    if (sceneHasCompletedExtendedLaunch)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  [(CalendarSceneManager *)self _extendedLaunchDidComplete];
LABEL_6:
  v7 = +[CalendarSceneManager _sharedState];
  [v7 setExtendedLaunchComplete:1];
}

+ (id)_applicationLastActiveTime
{
  _sharedState = [self _sharedState];
  applicationLastActiveTimeProvider = [_sharedState applicationLastActiveTimeProvider];
  applicationLastActiveTime = [applicationLastActiveTimeProvider applicationLastActiveTime];

  return applicationLastActiveTime;
}

- (double)_resumeToTodayTimeout
{
  v2 = +[CUIKPreferences sharedPreferences];
  isShortResumeToTodayTimeout = [v2 isShortResumeToTodayTimeout];

  result = 480.0;
  if (isShortResumeToTodayTimeout)
  {
    return 5.0;
  }

  return result;
}

- (void)_refreshAccountListAndViewContentsIfNeededForModel:(id)model
{
  modelCopy = model;
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100119A18;
  block[3] = &unk_10020EB00;
  v7 = modelCopy;
  v5 = modelCopy;
  dispatch_async(v4, block);
}

- (BOOL)_areMultipleScenesOpen
{
  v2 = +[UIApplication sharedApplication];
  openSessions = [v2 openSessions];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = openSessions;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v4);
        }

        role = [*(*(&v14 + 1) + 8 * i) role];
        v11 = [role isEqualToString:UIWindowSceneSessionRoleApplication];

        v7 += v11;
        if (v7 > 1)
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (BOOL)_shouldResumeToTodayOnBecomeActive
{
  v3 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Determining whether to show today on resume.", &v17, 2u);
  }

  if (self->_launchedFromURLOrActivity)
  {
    v4 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "_launchedFromURLOrActivity is YES, not showing today on resume.", &v17, 2u);
    }

    LOBYTE(v5) = 0;
  }

  else
  {
    v6 = CUIKNowDate();
    [(CalendarSceneManager *)self _resumeToTodayTimeout];
    v8 = v7;
    v9 = +[CalendarSceneManager _applicationLastActiveTime];
    if (v9)
    {
      [v6 timeIntervalSinceDate:v9];
      v11 = v10;
    }

    else
    {
      v11 = v8 + 1.0;
    }

    v5 = v11 > v8;
    v12 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
    {
      v17 = 67109634;
      v18 = v11 > v8;
      v19 = 2112;
      v20 = v9;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Resume to today timeout expired: %d (Application last active time = %@ | now = %@", &v17, 0x1Cu);
    }

    if ([(CalendarSceneManager *)self _areMultipleScenesOpen])
    {
      v13 = kCalUILogHandle;
      if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
      {
        maintainToday = self->_maintainToday;
        v17 = 67109120;
        v18 = maintainToday;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Multiple scenes present, _maintainToday = %d", &v17, 8u);
      }

      v5 = v11 > v8 && self->_maintainToday;
    }

    v15 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
    {
      v17 = 67109120;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Should show today on resume result = %d", &v17, 8u);
    }
  }

  return v5;
}

- (BOOL)_shouldMaintainToday
{
  v3 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Determining whether to maintain today on next resume (assuming timeout is expired).", &v13, 2u);
  }

  v4 = CUIKNowDate();
  if ([(CalendarSceneManager *)self _areMultipleScenesOpen])
  {
    v5 = [(RootNavigationController *)self->_rootNavigationController isDateVisible:v4];
    v6 = kCalUILogHandle;
    if (!os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    v13 = 67109120;
    v14 = v5;
    v7 = "Multiple scenes present, today visible = %d.";
    v8 = v6;
    v9 = 8;
  }

  else
  {
    v10 = kCalUILogHandle;
    v5 = 1;
    if (!os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    LOWORD(v13) = 0;
    v7 = "Single scene, should always maintain today. Not bothering to check if today is visible.";
    v8 = v10;
    v9 = 2;
  }

  _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, v7, &v13, v9);
LABEL_9:
  v11 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
  {
    v13 = 67109120;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "should maintain today result = %d", &v13, 8u);
  }

  return v5;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  v11 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v95 = sessionCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CalendarSceneManager scene:willConnectToSession:options: %@", buf, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v85 = sceneCopy;
    windows = [v85 windows];
    v13 = [windows countByEnumeratingWithState:&v90 objects:v98 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v91;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v91 != v15)
          {
            objc_enumerationMutation(windows);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v23 = kCalUILogHandle;
            if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "CalendarSceneManager Scene window already set up, no further work needed", buf, 2u);
            }

            goto LABEL_77;
          }
        }

        v14 = [windows countByEnumeratingWithState:&v90 objects:v98 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    _setUpModel = [(CalendarSceneManager *)self _setUpModel];
    model = self->_model;
    self->_model = _setUpModel;

    _sceneIdentifier = [v85 _sceneIdentifier];
    [(CUIKCalendarModel *)self->_model setSceneIdentifier:_sceneIdentifier];

    [(CalendarSceneManager *)self _setupDebugMenu:v85];
    if ([UIApp launchedToTest])
    {
      stateRestorationActivity = 0;
      v21 = 1;
    }

    else
    {
      stateRestorationActivity = [sessionCopy stateRestorationActivity];
      if (stateRestorationActivity)
      {
        v24 = kCalUILogHandle;
        if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v95 = stateRestorationActivity;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "CalendarSceneManager _stateRestoreSelectedCalendarsFromUserActivity. %@", buf, 0xCu);
        }

        [(CalendarSceneManager *)self _stateRestoreSelectedCalendarsFromUserActivity:stateRestorationActivity];
        v21 = 0;
        if (self->_finishedSetup)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v21 = 1;
      }
    }

    v25 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "CalendarSceneManager _restoreSelectedCalendarsFromPreferenceIfNeeded", buf, 2u);
    }

    [(CalendarSceneManager *)self _restoreSelectedCalendarsFromPreferenceIfNeeded];
LABEL_28:
    v26 = EKUIShouldSaveStateInPreferences();
    if ((v21 & 1) == 0 && (v26 & 1) == 0)
    {
      v27 = kCalUILogHandle;
      if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "CalendarSceneManager _restoreModelPersistedStateFromUserActivity", buf, 2u);
      }

      [(CalendarSceneManager *)self _restoreModelPersistedStateFromUserActivity:stateRestorationActivity];
    }

    v84 = stateRestorationActivity;
    v28 = +[NSNotificationCenter defaultCenter];
    [v28 addObserver:self selector:"_displayedOccurrencesChangedForTheFirstTime:" name:CUIKCalendarModelDisplayedOccurrencesChangedForTheFirstTimeNotification object:0];

    v29 = +[NSNotificationCenter defaultCenter];
    [v29 addObserver:self selector:"_topMainViewControllerCompletedExtendedLaunch:" name:@"MainViewControllerDidCompleteExtendedLaunchNotification" object:0];

    v30 = objc_autoreleasePoolPush();
    v31 = [[MobileCalWindow alloc] initWithWindowScene:v85];
    objc_autoreleasePoolPop(v30);
    v32 = CalendarAppTintColor();
    [(MobileCalWindow *)v31 setTintColor:v32];

    v33 = [[RootNavigationController alloc] initWithModel:self->_model targetWindow:v31];
    EKUIPushFallbackSizingContextWithViewHierarchy();
    v34 = objc_autoreleasePoolPush();
    if (CalSolariumEnabled())
    {
      v35 = CalWindowRootViewController;
    }

    else if (CalSplitViewEnabled())
    {
      v35 = SplitViewWindowRootViewController;
    }

    else
    {
      v35 = MainWindowRootViewController;
    }

    v36 = [[v35 alloc] initWithRootNavigationController:v33];
    rootViewController = self->_rootViewController;
    self->_rootViewController = v36;

    [(MobileCalWindow *)v31 setRootViewController:self->_rootViewController];
    objc_autoreleasePoolPop(v34);
    v38 = objc_autoreleasePoolPush();
    [(MobileCalWindow *)v31 makeKeyAndVisible];
    if (([(RootNavigationController *)v33 isViewLoaded]& 1) == 0)
    {
      view = [(RootNavigationController *)v33 view];
    }

    v83 = sessionCopy;
    objc_autoreleasePoolPop(v38);
    EKUIPopFallbackSizingContextWithViewHierarchy();
    objc_storeStrong(&self->_mobileCalWindow, v31);
    objc_storeStrong(&self->_rootNavigationController, v33);
    v40 = +[NSUserDefaults standardUserDefaults];
    if ([v40 BOOLForKey:@"UITestingFastAnimations"])
    {
      layer = [(MobileCalWindow *)v31 layer];
      LODWORD(v42) = 1120403456;
      [layer setSpeed:v42];
    }

    v82 = v40;
    if (+[EKFeatureSet mustDisplaySplashScreenToUser](EKFeatureSet, "mustDisplaySplashScreenToUser") && (+[UMUserManager sharedManager](UMUserManager, "sharedManager"), v43 = objc_claimAutoreleasedReturnValue(), v44 = [v43 isMultiUser], v43, (v44 & 1) == 0))
    {
      if (EKUICurrentWidthSizeClassIsRegularInViewHierarchy())
      {
        v46 = +[CUIKPreferences sharedPreferences];
        lastViewMode = [v46 lastViewMode];
        integerValue = [lastViewMode integerValue];

        if (integerValue == 3)
        {
          v49 = kCalUILogHandle;
          if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
          {
            log = v49;
            v79 = [NSNumber numberWithInteger:3];
            v50 = [NSNumber numberWithInteger:2];
            *buf = 138412546;
            v95 = v79;
            v96 = 2112;
            v97 = v50;
            _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Overriding 'last view mode' preference.  Previous: [%@]  New: [%@].", buf, 0x16u);
          }

          v51 = [NSNumber numberWithInteger:2];
          [v46 setLastViewMode:v51];
        }
      }

      v45 = 1;
    }

    else
    {
      v45 = 0;
    }

    v52 = +[NSNotificationCenter defaultCenter];
    [v52 addObserver:self selector:"_selectedIdentityDidUpdate:" name:CUIKCalendarModelIdentityChangedNotification object:0];

    v53 = +[NSNotificationCenter defaultCenter];
    [v53 addObserver:self selector:"_selectedIdentityDidUpdate:" name:CUIKCalendarModelDelegatesChangedNotification object:0];

    [(CalendarSceneManager *)self _updateSceneActivationConditions];
    v54 = +[CUIKPreferences sharedPreferences];
    lastSidebarMode = [v54 lastSidebarMode];
    unsignedIntegerValue = [lastSidebarMode unsignedIntegerValue];

    [(CalRootViewController *)self->_rootViewController setCurrentSidebarState:unsignedIntegerValue];
    v57 = objc_alloc_init(EKReminderEditViewControllerCreator);
    [EKEventEditViewController registerIntegrationEditViewControllerCreator:v57];

    if ((v21 & 1) == 0)
    {
      [(CalendarSceneManager *)self _restoreStateFromUserActivity:v84];
      if (self->_selectedOccurrenceToRestoreAfterConnection)
      {
        if (!self->_sceneNeedsToCallExtendedLaunchCompletionSPI)
        {
          self->_sceneNeedsToCallExtendedLaunchCompletionSPI = 1;
          v58 = kCalUILogHandle;
          if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v95 = v85;
            _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "CalendarSceneManager calling _extendStateRestoration for scene: %@", buf, 0xCu);
          }

          [v85 _extendStateRestoration];
          v59 = dispatch_time(0, 5000000000);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10011ABC0;
          block[3] = &unk_10020EC68;
          block[4] = self;
          v89 = v85;
          dispatch_after(v59, &_dispatch_main_q, block);
        }
      }
    }

    v60 = kCalUILogHandle;
    v61 = os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO);
    if (v45)
    {
      if (v61)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "CalendarSceneManager Presenting splash screen to the user.", buf, 2u);
      }

      [(CalendarSceneManager *)self _constructAndPresentSplashScreenFromViewController:self->_rootViewController window:v31];
    }

    else if (v61)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "CalendarSceneManager Will not present the splash screen to the user.", buf, 2u);
    }

    v86[0] = _NSConcreteStackBlock;
    v86[1] = 3221225472;
    v86[2] = sub_10011AC84;
    v86[3] = &unk_10020EB00;
    v62 = v33;
    v87 = v62;
    if (qword_100251D10 != -1)
    {
      dispatch_once(&qword_100251D10, v86);
    }

    shortcutItem = [optionsCopy shortcutItem];
    shortcutItemToRunAfterConnection = self->_shortcutItemToRunAfterConnection;
    self->_shortcutItemToRunAfterConnection = shortcutItem;

    userActivities = [optionsCopy userActivities];
    allObjects = [userActivities allObjects];
    userActivitiesToContinueAfterConnection = self->_userActivitiesToContinueAfterConnection;
    self->_userActivitiesToContinueAfterConnection = allObjects;

    uRLContexts = [optionsCopy URLContexts];
    if (uRLContexts)
    {
      [(CalendarSceneManager *)self scene:v85 openURLContexts:uRLContexts];
    }

    else
    {
      notificationResponse = [optionsCopy notificationResponse];

      if (notificationResponse)
      {
        v81 = optionsCopy;
        notificationResponse2 = [optionsCopy notificationResponse];
        notification = [notificationResponse2 notification];
        request = [notification request];
        content = [request content];
        defaultActionURL = [content defaultActionURL];

        v75 = defaultActionURL;
        v76 = kCalUILogHandle;
        v77 = os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO);
        if (defaultActionURL)
        {
          if (v77)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_INFO, "Opening URL from dragged notification banner", buf, 2u);
          }

          [(CalendarSceneManager *)self _openURL:defaultActionURL];
          optionsCopy = v81;
        }

        else
        {
          optionsCopy = v81;
          if (v77)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_INFO, "Unable to find URL for dragged notification banner", buf, 2u);
          }
        }
      }
    }

    v78 = +[NSNotificationCenter defaultCenter];
    [v78 addObserver:self selector:"_mainViewControllerDidRequestSceneTitleUpdate:" name:@"_CalendarWindowSceneTitleRequiresUpdateNotification" object:v85];

    [(CalendarSceneManager *)self _updateSceneTitle];
    sessionCopy = v83;
    goto LABEL_77;
  }

  v22 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "CalendarSceneManager Scene connected, but it's not a window scene.", buf, 2u);
  }

LABEL_77:
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v5 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v40 = disconnectCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CalendarSceneManager sceneDidDisconnect: %@", buf, 0xCu);
  }

  v34 = disconnectCopy;
  [(MobileCalWindow *)self->_mobileCalWindow setHidden:1];
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self name:CUIKCalendarModelIdentityChangedNotification object:self->_model];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 removeObserver:self name:CUIKCalendarModelDelegatesChangedNotification object:self->_model];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v8 = +[UIApplication sharedApplication];
  connectedScenes = [v8 connectedScenes];

  v10 = [connectedScenes countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v36;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(connectedScenes);
        }

        v14 = *(*(&v35 + 1) + 8 * i);
        if ([objc_opt_class() isSceneCalendarAppScene:v14])
        {
          _sceneIdentifier = [v14 _sceneIdentifier];
          mobileCalWindow = [(CalendarSceneManager *)self mobileCalWindow];
          windowScene = [mobileCalWindow windowScene];
          _sceneIdentifier2 = [windowScene _sceneIdentifier];
          v19 = [_sceneIdentifier isEqualToString:_sceneIdentifier2];

          if (!v19)
          {

            v31 = kCalUILogHandle;
            v23 = v34;
            if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
            {
              v32 = v31;
              _sceneIdentifier3 = [v34 _sceneIdentifier];
              *buf = 138412290;
              v40 = _sceneIdentifier3;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "CalendarSceneManager Scene %@ disconnected", buf, 0xCu);
            }

            goto LABEL_17;
          }
        }
      }

      v11 = [connectedScenes countByEnumeratingWithState:&v35 objects:v43 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  rootNavigationController = [(CalendarSceneManager *)self rootNavigationController];
  currentViewType = [rootNavigationController currentViewType];

  v22 = kCalUILogHandle;
  v23 = v34;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
  {
    v24 = v22;
    _sceneIdentifier4 = [v34 _sceneIdentifier];
    *buf = 138412546;
    v40 = _sceneIdentifier4;
    v41 = 1024;
    v42 = currentViewType;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "CalendarSceneManager Scene %@ disconnected, writing out last view mode: %d", buf, 0x12u);
  }

  v26 = +[CUIKPreferences sharedPreferences];
  v27 = [NSNumber numberWithInteger:currentViewType];
  [v26 setLastViewMode:v27];

  currentSidebarState = [(CalRootViewController *)self->_rootViewController currentSidebarState];
  v29 = +[CUIKPreferences sharedPreferences];
  v30 = [NSNumber numberWithUnsignedInteger:currentSidebarState];
  [v29 setLastSidebarMode:v30];

LABEL_17:
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  v5 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = activeCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CalendarSceneManager sceneDidBecomeActive: %@", buf, 0xCu);
  }

  _shouldResumeToTodayOnBecomeActive = [(CalendarSceneManager *)self _shouldResumeToTodayOnBecomeActive];
  view = [(RootNavigationController *)self->_rootNavigationController view];
  window = [view window];
  EKUIPushFallbackSizingContextWithViewHierarchy();

  if (_shouldResumeToTodayOnBecomeActive)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  [(RootNavigationController *)self->_rootNavigationController selectTodayWithTrigger:v9 animated:0];
  self->_launchedFromURLOrActivity = 0;
  view2 = [(RootNavigationController *)self->_rootNavigationController view];
  window2 = [view2 window];
  EKUIPopFallbackSizingContextWithViewHierarchy();

  [(RootNavigationController *)self->_rootNavigationController didBecomeActive];
  v12 = +[CUIKPreferences sharedPreferences];
  LODWORD(window2) = [v12 requestSyncOnApplicationLaunch];

  if (window2)
  {
    model = [(RootNavigationController *)self->_rootNavigationController model];
    [(CalendarSceneManager *)self performSelector:"_refreshAccountListAndViewContentsIfNeededForModel:" withObject:model afterDelay:2.0];
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v14 = self->_userActivitiesToContinueAfterConnection;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v28;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(CalendarSceneManager *)self _continueUserActivity:*(*(&v27 + 1) + 8 * i) restoreSelectedOccurrence:1 restoreSelectedDate:1 restorationHandler:0, v27];
      }

      v16 = [(NSArray *)v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v16);
  }

  userActivitiesToContinueAfterConnection = self->_userActivitiesToContinueAfterConnection;
  self->_userActivitiesToContinueAfterConnection = 0;

  selectedOccurrenceToRestoreAfterConnection = self->_selectedOccurrenceToRestoreAfterConnection;
  if (selectedOccurrenceToRestoreAfterConnection)
  {
    [(CalRootViewController *)self->_rootViewController showEventAndCloseSidebarIfNeeded:selectedOccurrenceToRestoreAfterConnection animated:0 showMode:1];
    v21 = self->_selectedOccurrenceToRestoreAfterConnection;
    self->_selectedOccurrenceToRestoreAfterConnection = 0;
  }

  if (self->_sceneNeedsToCallExtendedLaunchCompletionSPI)
  {
    self->_sceneNeedsToCallExtendedLaunchCompletionSPI = 0;
    v22 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = activeCopy;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "CalendarSceneManager: calling _completeStateRestoration (sceneDidBecomeActive) for scene: %@", buf, 0xCu);
    }

    [activeCopy _completeStateRestoration];
  }

  if (self->_shortcutItemToRunAfterConnection)
  {
    view3 = [(RootNavigationController *)self->_rootNavigationController view];
    window3 = [view3 window];
    windowScene = [window3 windowScene];
    [(CalendarSceneManager *)self windowScene:windowScene performActionForShortcutItem:self->_shortcutItemToRunAfterConnection completionHandler:0];

    shortcutItemToRunAfterConnection = self->_shortcutItemToRunAfterConnection;
    self->_shortcutItemToRunAfterConnection = 0;
  }

  [(CalendarSceneManager *)self _collectStats:self->_rootNavigationController, v27];
}

- (void)sceneWillResignActive:(id)active
{
  activeCopy = active;
  v5 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = activeCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CalendarSceneManager sceneWillResignActive: %@", &v6, 0xCu);
  }

  self->_launchedFromURLOrActivity = 0;
  self->_maintainToday = [(CalendarSceneManager *)self _shouldMaintainToday];
}

- (void)sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  v5 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = backgroundCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CalendarSceneManager sceneDidEnterBackground: %@", &v6, 0xCu);
  }

  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:"_refreshAccountListAndViewContentsIfNeededForModel:" object:self->_model];
  [(RootNavigationController *)self->_rootNavigationController didEnterBackground];
  CUIKITriggerReminderSync();
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  v5 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = foregroundCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CalendarSceneManager sceneWillEnterForeground: %@", buf, 0xCu);
  }

  [(RootNavigationController *)self->_rootNavigationController willEnterForeground];
  +[EKUIAppReviewUtils applicationDidForeground];
  if ((byte_100251D18 & 1) == 0)
  {
    byte_100251D18 = 1;
  }

  CUIKITriggerReminderSync();
  v6 = dispatch_time(0, 2000000000);
  v7 = dispatch_get_global_queue(17, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011B718;
  block[3] = &unk_10020EB00;
  block[4] = self;
  dispatch_after(v6, v7, block);
}

- (id)stateRestorationActivityForScene:(id)scene
{
  sceneCopy = scene;
  v5 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v41 = sceneCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CalendarSceneManager stateRestorationActivityForScene: %@", buf, 0xCu);
  }

  if (self->_finishedSetup)
  {
    currentViewType = [(RootNavigationController *)self->_rootNavigationController currentViewType];
    if (currentViewType > 4)
    {
      v7 = 0;
    }

    else
    {
      v7 = qword_1001F8690[currentViewType];
    }

    selectedDate = [(CUIKCalendarModel *)self->_model selectedDate];
    date = [selectedDate date];

    v9 = [[NSUserActivity alloc] initWithActivityType:@"com.apple.calendar.continuity.date_selection"];
    v12 = [CUIKUserActivityCalendarDate alloc];
    calendar = [(CUIKCalendarModel *)self->_model calendar];
    v14 = [v12 initWithDate:date view:v7 calendar:calendar];

    [v14 updateActivity:v9];
    v15 = +[NSMutableDictionary dictionary];
    v16 = [NSNumber numberWithBool:1];
    [v15 setObject:v16 forKey:@"_UserActivityStateRestore_Flag"];

    unselectedCalendarsIgnoringFocus = [(CUIKCalendarModel *)self->_model unselectedCalendarsIgnoringFocus];
    v18 = [unselectedCalendarsIgnoringFocus valueForKey:@"calendarIdentifier"];

    [v15 setObject:v18 forKey:@"_UserActivityStateRestore_InvisibleCalendars"];
    collapsedSectionIdentifiers = [(CUIKCalendarModel *)self->_model collapsedSectionIdentifiers];
    [v15 setObject:collapsedSectionIdentifiers forKey:@"_UserActivityStateRestore_CollapsedSectionIdentifiers"];

    v20 = [NSNumber numberWithUnsignedInteger:[(CUIKCalendarModel *)self->_model focusFilterMode]];
    [v15 setObject:v20 forKey:@"_UserActivityStateRestore_FocusFilterMode"];

    sourceForSelectedIdentity = [(CUIKCalendarModel *)self->_model sourceForSelectedIdentity];

    if (sourceForSelectedIdentity)
    {
      sourceForSelectedIdentity2 = [(CUIKCalendarModel *)self->_model sourceForSelectedIdentity];
      sourceIdentifier = [sourceForSelectedIdentity2 sourceIdentifier];
      [v15 setObject:sourceIdentifier forKey:@"_UserActivityStateRestore_SelectedSource"];
    }

    [(CalendarSceneManager *)self _addPersistedStateFromCalendarModelToDictionary:v15];
    v24 = [NSNumber numberWithBool:[(CalendarSceneManager *)self _shouldMaintainToday]];
    [v15 setObject:v24 forKey:@"_UserActivityStateRestore_MaintainToday_Key"];

    selectedOccurrence = [(CUIKCalendarModel *)self->_model selectedOccurrence];
    if (!selectedOccurrence)
    {
      goto LABEL_18;
    }

    selectedOccurrence4 = selectedOccurrence;
    v39 = sceneCopy;
    v27 = v18;
    v28 = v14;
    v29 = date;
    selectedOccurrence2 = [(CUIKCalendarModel *)self->_model selectedOccurrence];
    uniqueID = [selectedOccurrence2 uniqueID];
    if (uniqueID)
    {
      v32 = uniqueID;
      shouldSaveSelectedEvent = [(RootNavigationController *)self->_rootNavigationController shouldSaveSelectedEvent];

      date = v29;
      v14 = v28;
      v18 = v27;
      sceneCopy = v39;
      if (!shouldSaveSelectedEvent)
      {
LABEL_18:
        v36 = CUIKNowDate();
        [v15 setObject:v36 forKey:@"_UserActivityStateRestore_Timestamp"];

        v37 = [NSNumber numberWithUnsignedInteger:[(CalRootViewController *)self->_rootViewController currentSidebarState]];
        [v15 setObject:v37 forKey:@"_UserActivityStateRestore_LastSidebarMode_Key"];

        [v9 addUserInfoEntriesFromDictionary:v15];
        goto LABEL_19;
      }

      selectedOccurrence3 = [(CUIKCalendarModel *)self->_model selectedOccurrence];
      uniqueID2 = [selectedOccurrence3 uniqueID];
      [v15 setObject:uniqueID2 forKey:@"_UserActivityStateRestore_SelectedOccurrenceUID_Key"];

      selectedOccurrence4 = [(CUIKCalendarModel *)self->_model selectedOccurrence];
      selectedOccurrence2 = [selectedOccurrence4 startDate];
      [v15 setObject:selectedOccurrence2 forKey:@"_UserActivityStateRestore_SelectedOccurrenceDate_Key"];
    }

    else
    {
      v14 = v28;
      v18 = v27;
      sceneCopy = v39;
    }

    goto LABEL_18;
  }

  v8 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v41 = sceneCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CalendarSceneManager Don't attempt to save state. because setup is not finished yet. During stateRestorationActivityForScene %@", buf, 0xCu);
  }

  v9 = 0;
LABEL_19:

  return v9;
}

- (void)_addPersistedStateFromCalendarModelToDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  persistedSceneState = [(CUIKCalendarModel *)self->_model persistedSceneState];
  v5 = persistedSceneState;
  if (persistedSceneState)
  {
    [persistedSceneState dayViewHourScale];
    if (v6 > 0.0)
    {
      [v5 dayViewHourScale];
      v7 = [NSNumber numberWithDouble:?];
      [dictionaryCopy setObject:v7 forKey:@"_UserActivityStateRestore_DayHourScale_Key"];
    }

    [v5 weekViewHourScale];
    if (v8 > 0.0)
    {
      [v5 weekViewHourScale];
      v9 = [NSNumber numberWithDouble:?];
      [dictionaryCopy setObject:v9 forKey:@"_UserActivityStateRestore_WeekHourScale_Key"];
    }

    if (([v5 dayViewFirstVisibleSecond] & 0x80000000) == 0)
    {
      v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 dayViewFirstVisibleSecond]);
      [dictionaryCopy setObject:v10 forKey:@"_UserActivityStateRestore_DayViewFirstVisibleSecond_Key"];
    }

    v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 showDayAsList]);
    [dictionaryCopy setObject:v11 forKey:@"_UserActivityStateRestore_ShowDayAsList_Key"];

    v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 showMonthAsDivided]);
    [dictionaryCopy setObject:v12 forKey:@"_UserActivityStateRestore_ShowMonthAsDivided_Key"];
  }
}

- (BOOL)_isUserActivityForStateRestoration:(id)restoration
{
  userInfo = [restoration userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"_UserActivityStateRestore_Flag"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)_extractNumberFromUserActivity:(id)activity forKey:(id)key
{
  activityCopy = activity;
  keyCopy = key;
  if (!activityCopy)
  {
    goto LABEL_5;
  }

  userInfo = [activityCopy userInfo];
  v8 = [userInfo objectForKey:keyCopy];

  if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

LABEL_5:
    v8 = 0;
  }

  return v8;
}

- (void)_restoreModelPersistedStateFromUserActivity:(id)activity
{
  activityCopy = activity;
  if ((EKUIShouldSaveStateInPreferences() & 1) == 0)
  {
    persistedSceneState = [(CUIKCalendarModel *)self->_model persistedSceneState];
    v5 = [(CalendarSceneManager *)self _extractNumberFromUserActivity:activityCopy forKey:@"_UserActivityStateRestore_ShowDayAsList_Key"];
    v6 = [(CalendarSceneManager *)self _extractNumberFromUserActivity:activityCopy forKey:@"_UserActivityStateRestore_ShowMonthAsDivided_Key"];
    if (v5)
    {
      bOOLValue = [v5 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    [persistedSceneState setShowDayAsList:bOOLValue];
    if (v6)
    {
      bOOLValue2 = [v6 BOOLValue];
    }

    else
    {
      bOOLValue2 = 0;
    }

    [persistedSceneState setShowMonthAsDivided:bOOLValue2];
    v9 = [(CalendarSceneManager *)self _extractNumberFromUserActivity:activityCopy forKey:@"_UserActivityStateRestore_DayHourScale_Key"];
    v10 = [(CalendarSceneManager *)self _extractNumberFromUserActivity:activityCopy forKey:@"_UserActivityStateRestore_WeekHourScale_Key"];
    v11 = [(CalendarSceneManager *)self _extractNumberFromUserActivity:activityCopy forKey:@"_UserActivityStateRestore_DayViewFirstVisibleSecond_Key"];
    v12 = -1.0;
    v13 = -1.0;
    if (v9)
    {
      [v9 doubleValue];
    }

    [persistedSceneState setDayViewHourScale:v13];
    if (v10)
    {
      [v10 doubleValue];
      v12 = v14;
    }

    [persistedSceneState setWeekViewHourScale:v12];
    if (v11)
    {
      intValue = [v11 intValue];
    }

    else
    {
      intValue = 0xFFFFFFFFLL;
    }

    [persistedSceneState setDayViewFirstVisibleSecond:intValue];
  }
}

- (void)_restoreStateFromUserActivity:(id)activity
{
  activityCopy = activity;
  v5 = [(CalendarSceneManager *)self _isUserActivityForStateRestoration:activityCopy];
  v6 = kCalUILogHandle;
  v7 = os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEFAULT);
  if ((v5 & 1) == 0)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Calendar state restoration: currently ignoring user activity that does not have a state restoration flag.", buf, 2u);
    }

    goto LABEL_62;
  }

  if (v7)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Calendar state restoration: starting restoration from user activity....", buf, 2u);
  }

  v8 = +[CalendarSceneManager _applicationLastActiveTime];

  if (!v8)
  {
    userInfo = [activityCopy userInfo];
    v17 = [userInfo objectForKeyedSubscript:@"_UserActivityStateRestore_Timestamp"];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v16 = 0;
      goto LABEL_18;
    }

    v18 = v17;
    v22 = +[NSDate date];
    [v22 timeIntervalSinceDate:v18];
    v24 = v23;
    [(CalendarSceneManager *)self _resumeToTodayTimeout];
    v26 = v25;

    v16 = v24 > v26;
    if (v24 <= v26 || (v27 = kCalUILogHandle, !os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO)))
    {
LABEL_15:

LABEL_18:
      goto LABEL_19;
    }

    v19 = v27;
    v28 = +[NSDate date];
    [(CalendarSceneManager *)self _resumeToTodayTimeout];
    *buf = 138412802;
    *v68 = v18;
    *&v68[8] = 2112;
    v69 = v28;
    v70 = 1024;
    v71 = v29;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Calendar state restoration: user activity timestamp is outside the resume to today timeout. Last active time = %@, Now = %@, timeout = %d", buf, 0x1Cu);

LABEL_14:
    goto LABEL_15;
  }

  v9 = +[NSDate date];
  v10 = +[CalendarSceneManager _applicationLastActiveTime];
  [v9 timeIntervalSinceDate:v10];
  v12 = v11;
  [(CalendarSceneManager *)self _resumeToTodayTimeout];
  v14 = v13;

  if (v12 <= v14)
  {
    v16 = 0;
  }

  else
  {
    v15 = kCalUILogHandle;
    v16 = 1;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
    {
      v17 = v15;
      v18 = +[CalendarSceneManager _applicationLastActiveTime];
      v19 = +[NSDate date];
      [(CalendarSceneManager *)self _resumeToTodayTimeout];
      *buf = 138412802;
      *v68 = v18;
      *&v68[8] = 2112;
      v69 = v19;
      v70 = 1024;
      v71 = v20;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Calendar state restoration: last active time is outside the resume to today timeout. Last active time = %@, Now = %@, timeout = %d", buf, 0x1Cu);
      goto LABEL_14;
    }
  }

LABEL_19:
  if (![(CalendarSceneManager *)self _areMultipleScenesOpen])
  {
    goto LABEL_24;
  }

  userInfo2 = [activityCopy userInfo];
  v31 = [userInfo2 objectForKeyedSubscript:@"_UserActivityStateRestore_MaintainToday_Key"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_24;
  }

  bOOLValue = [v31 BOOLValue];
  self->_maintainToday = bOOLValue & 1;

  if (bOOLValue)
  {
LABEL_24:
    v34 = !v16;
    v33 = 1;
    goto LABEL_25;
  }

  v33 = 0;
  v34 = 1;
LABEL_25:
  v35 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 67109632;
    *v68 = v34;
    *&v68[4] = 1024;
    *&v68[6] = v16;
    LOWORD(v69) = 1024;
    *(&v69 + 2) = v33;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "Calendar state restoration: restore selected date = %d (resumeTimeoutExpired = %d, maintainToday = %d)", buf, 0x14u);
  }

  [(CalendarSceneManager *)self _continueUserActivity:activityCopy restoreSelectedOccurrence:0 restoreSelectedDate:v34 restorationHandler:0];
  userInfo3 = [activityCopy userInfo];
  v37 = [userInfo3 objectForKeyedSubscript:@"_UserActivityStateRestore_SelectedSource"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_47;
  }

  v38 = v37;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  eventStore = [(CUIKCalendarModel *)self->_model eventStore];
  sources = [eventStore sources];

  v41 = [sources countByEnumeratingWithState:&v62 objects:v66 count:16];
  if (!v41)
  {
    v48 = sources;
    goto LABEL_45;
  }

  v42 = v41;
  v61 = v37;
  v43 = *v63;
LABEL_30:
  v44 = 0;
  while (1)
  {
    if (*v63 != v43)
    {
      objc_enumerationMutation(sources);
    }

    v45 = *(*(&v62 + 1) + 8 * v44);
    sourceIdentifier = [v45 sourceIdentifier];
    if (![sourceIdentifier isEqualToString:v38])
    {

      goto LABEL_37;
    }

    isEnabled = [v45 isEnabled];

    if (isEnabled)
    {
      break;
    }

LABEL_37:
    if (v42 == ++v44)
    {
      v42 = [sources countByEnumeratingWithState:&v62 objects:v66 count:16];
      if (v42)
      {
        goto LABEL_30;
      }

      v48 = sources;
      v37 = v61;
      goto LABEL_45;
    }
  }

  v48 = v45;

  v37 = v61;
  if (!v48)
  {
    goto LABEL_46;
  }

  v49 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *v68 = v48;
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEBUG, "Calendar state restoration: restoring selected identity: %@", buf, 0xCu);
  }

  [(CUIKCalendarModel *)self->_model updateSourceForSelectedIdentity:v48 selectedCalendars:0];
LABEL_45:

LABEL_46:
LABEL_47:
  if ((EKUIShouldSaveStateInPreferences() & 1) == 0)
  {
    userInfo4 = [activityCopy userInfo];
    v51 = [userInfo4 objectForKeyedSubscript:@"_UserActivityStateRestore_SelectedOccurrenceUID_Key"];

    userInfo5 = [activityCopy userInfo];
    v53 = [userInfo5 objectForKeyedSubscript:@"_UserActivityStateRestore_SelectedOccurrenceDate_Key"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        eventStore2 = [(CUIKCalendarModel *)self->_model eventStore];
        v55 = [eventStore2 allEventsWithUniqueId:v51 occurrenceDate:v53];

        if ([v55 count] == 1)
        {
          firstObject = [v55 firstObject];
        }

        else
        {
          firstObject = 0;
        }

        selectedOccurrenceToRestoreAfterConnection = self->_selectedOccurrenceToRestoreAfterConnection;
        self->_selectedOccurrenceToRestoreAfterConnection = firstObject;
      }
    }
  }

  userInfo6 = [activityCopy userInfo];
  v59 = [userInfo6 objectForKeyedSubscript:@"_UserActivityStateRestore_LastSidebarMode_Key"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[CalRootViewController setCurrentSidebarState:](self->_rootViewController, "setCurrentSidebarState:", [v59 unsignedIntegerValue]);
  }

  if (([UIApp launchedToTest] & 1) == 0)
  {
    self->_finishedSetup = 1;
  }

  v60 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Calendar state restoration: completed", buf, 2u);
  }

LABEL_62:
}

- (BOOL)_continueUserActivity:(id)activity restoreSelectedOccurrence:(BOOL)occurrence restoreSelectedDate:(BOOL)date restorationHandler:(id)handler
{
  dateCopy = date;
  occurrenceCopy = occurrence;
  activityCopy = activity;
  handlerCopy = handler;
  v8 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v110 = activityCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CalendarSceneManager was requested to continue the following user activity: [%@]", buf, 0xCu);
  }

  v99 = EKWeakLinkStringConstant();
  v97 = EKWeakLinkStringConstant();
  activityType = [activityCopy activityType];
  if (self->_showingSplashScreen)
  {
    v9 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v110 = "[CalendarSceneManager _continueUserActivity:restoreSelectedOccurrence:restoreSelectedDate:restorationHandler:]";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "The splash screen is currently being shown.  Will delay execution of [%s] until the splash screen is dismissed.", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    +[NSDate date];
    v102[0] = _NSConcreteStackBlock;
    v102[1] = 3221225472;
    v102[2] = sub_10011D54C;
    v10 = v102[3] = &unk_100211B50;
    v103 = v10;
    objc_copyWeak(&v106, buf);
    v104 = activityCopy;
    v107 = occurrenceCopy;
    v108 = dateCopy;
    v105 = handlerCopy;
    [(CalendarSceneManager *)self setSplashScreenCompletionAction:v102];

    objc_destroyWeak(&v106);
    objc_destroyWeak(buf);
    v11 = 1;
    goto LABEL_70;
  }

  if ([activityType isEqualToString:v99])
  {
    userInfo = [activityCopy userInfo];
    v13 = EKWeakLinkStringConstant();
    v14 = [userInfo objectForKey:v13];

    v15 = v14;
    if (v14)
    {
      v93 = [v14 componentsSeparatedByString:@"."];
      firstObject = [v93 firstObject];
      v17 = [firstObject stringByAppendingString:@"."];
      v18 = [v14 stringByReplacingOccurrencesOfString:v17 withString:&stru_1002133B8];

      eventStore = [(CUIKCalendarModel *)self->_model eventStore];
      v20 = [eventStore calendarItemWithIdentifier:firstObject];

      eventStore2 = [(CUIKCalendarModel *)self->_model eventStore];
      objectID = [v20 objectID];
      [v18 doubleValue];
      v23 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      v24 = [eventStore2 eventForObjectID:objectID occurrenceDate:v23];

      v11 = v24 != 0;
      if (v24)
      {
        model = self->_model;
        calendar = [v24 calendar];
        source = [calendar source];
        [(CUIKCalendarModel *)model updateSourceForSelectedIdentity:source selectedCalendars:0];

        [(CalRootViewController *)self->_rootViewController showEventAndCloseSidebarIfNeeded:v24 animated:0 showMode:1];
      }

      v15 = v14;
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_67;
  }

  if ([activityType isEqualToString:v97])
  {
    userInfo2 = [activityCopy userInfo];
    v29 = EKWeakLinkStringConstant();
    v30 = [userInfo2 objectForKey:v29];

    [(CalRootViewController *)self->_rootViewController continueSearchWithTerm:v30];
    v11 = 1;
    v15 = v30;
LABEL_67:

    if (occurrenceCopy || dateCopy)
    {
      self->_launchedFromURLOrActivity = v11;
    }

    goto LABEL_70;
  }

  interaction = [activityCopy interaction];
  v32 = interaction == 0;

  if (v32)
  {
    v47 = [CUIKUserActivity activityForActivity:activityCopy];
    type = [v47 type];
    if (type)
    {
      if (type == 4098)
      {
        v57 = v47;
        v58 = self->_model;
        if (occurrenceCopy)
        {
          eventStore3 = [(CUIKCalendarModel *)v58 eventStore];
          date = [v57 eventFromStore:eventStore3];

          if (date)
          {
            v61 = kCalUILogHandle;
            if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
            {
              v62 = v61;
              calendar2 = [date calendar];
              source2 = [calendar2 source];
              view = [v57 view];
              *buf = 138412802;
              v110 = date;
              v111 = 2112;
              v112 = source2;
              v113 = 1024;
              v114 = view;
              _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEBUG, "Calendar state restoration: restoring selected event (%@), event identity (%@) and view (%d)", buf, 0x1Cu);
            }

            v66 = self->_model;
            calendar3 = [date calendar];
            source3 = [calendar3 source];
            [(CUIKCalendarModel *)v66 updateSourceForSelectedIdentity:source3 selectedCalendars:0];

            -[CalendarSceneManager _showEvent:inView:](self, "_showEvent:inView:", date, [v57 view]);
          }
        }

        else
        {
          selectedDate = [(CUIKCalendarModel *)v58 selectedDate];
          date = [selectedDate date];

          v84 = kCalUILogHandle;
          if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEBUG, "Calendar state restoration: requested to not restore selected event, restoring to model selected date instead", buf, 2u);
          }

          v85 = kCalUILogHandle;
          if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
          {
            v86 = v85;
            view2 = [v57 view];
            *buf = 138412546;
            v110 = date;
            v111 = 1024;
            LODWORD(v112) = view2;
            _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEBUG, "Calendar state restoration: restoring date (%@) and view (%d)", buf, 0x12u);
          }

          -[CalendarSceneManager _showDate:inView:](self, "_showDate:inView:", date, [v57 view]);
        }

        v11 = 1;
        v15 = v57;
        goto LABEL_67;
      }

      if (type == 4097)
      {
        v35 = v47;
        view3 = [v35 view];
        if (dateCopy)
        {
          date2 = [v35 date];
          if ([v35 isTomorrow])
          {
            v51 = +[NSCalendar currentCalendar];
            v52 = objc_alloc_init(NSDateComponents);
            [v52 setDay:1];
            v53 = CUIKTodayDate();
            v54 = [v51 dateByAddingComponents:v52 toDate:v53 options:0];

            view3 = 0;
            date2 = v54;
          }

          v55 = kCalUILogHandle;
          if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v110 = date2;
            v111 = 1024;
            LODWORD(v112) = view3;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEBUG, "Calendar state restoration: restoring date (%@) and view (%d)", buf, 0x12u);
          }
        }

        else
        {
          selectedDate2 = [(CUIKCalendarModel *)self->_model selectedDate];
          date2 = [selectedDate2 date];

          v89 = kCalUILogHandle;
          if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEBUG, "Calendar state restoration: requested to not restore date, restoring to model selected date instead", buf, 2u);
          }

          v90 = kCalUILogHandle;
          if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v110 = date2;
            v111 = 1024;
            LODWORD(v112) = view3;
            _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEBUG, "Calendar state restoration: restoring date (%@) and view (%d)", buf, 0x12u);
          }
        }

        [(CalendarSceneManager *)self _showDate:date2 inView:view3];

        goto LABEL_66;
      }

      v11 = 0;
    }

    else
    {
      v11 = 1;
    }

    v15 = v47;
    goto LABEL_67;
  }

  interaction2 = [activityCopy interaction];
  intent = [interaction2 intent];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v35 = intent;
    startDate = [v35 startDate];
    endDate = [v35 endDate];
    allDay = [v35 allDay];
    bOOLValue = [allDay BOOLValue];

    if (startDate)
    {
      identifier = [startDate identifier];
      v40 = [identifier componentsSeparatedByString:@"#"];

      v41 = [v40 count];
      if ((v41 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        firstObject2 = [v40 firstObject];
        [firstObject2 doubleValue];
        v43 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];

        v44 = [v40 objectAtIndexedSubscript:1];
        v45 = [NSTimeZone timeZoneWithName:v44];

        v94 = [EKCalendarDate calendarDateWithDate:v43 timeZone:v45];
        if (v41 == 3)
        {
          lastObject = [v40 lastObject];
        }

        else
        {
          lastObject = 0;
        }
      }

      else
      {
        lastObject = 0;
        v94 = 0;
      }
    }

    else
    {
      lastObject = 0;
      v94 = 0;
    }

    if (endDate)
    {
      identifier2 = [endDate identifier];
      v70 = [identifier2 componentsSeparatedByString:@"#"];

      if ([v70 count] == 2)
      {
        firstObject3 = [v70 firstObject];
        [firstObject3 doubleValue];
        v72 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];

        lastObject2 = [v70 lastObject];
        v74 = [NSTimeZone timeZoneWithName:lastObject2];

        v75 = [EKCalendarDate calendarDateWithDate:v72 timeZone:v74];
      }

      else
      {
        v75 = 0;
      }
    }

    else
    {
      v75 = 0;
    }

    locationName = [v35 locationName];

    if (locationName)
    {
      locationName2 = [v35 locationName];
      locationName = [EKStructuredLocation locationWithTitle:locationName2];

      geolocation = [v35 geolocation];
      location = [geolocation location];
      [locationName setGeoLocation:location];

      locationAddress = [v35 locationAddress];
      [locationName setAddress:locationAddress];
    }

    rootViewController = self->_rootViewController;
    title = [v35 title];
    [(CalRootViewController *)rootViewController showAddEventWithTitle:title startDate:v94 endDate:v75 location:locationName suggestionsKey:lastObject allDay:bOOLValue];

LABEL_66:
    v11 = 1;
    v15 = v35;
    goto LABEL_67;
  }

  v56 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v110 = intent;
    _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "Asked to continue unrecognized intent type: %@", buf, 0xCu);
  }

  v11 = 0;
LABEL_70:

  return v11;
}

- (BOOL)_isAnyWindowShowingDelegateCalendar
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = +[UIApplication sharedApplication];
  connectedScenes = [v2 connectedScenes];

  v4 = [connectedScenes countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = *v15;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(connectedScenes);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        delegate = [v7 delegate];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          delegate2 = [v7 delegate];
          model = [delegate2 model];
          sourceForSelectedIdentity = [model sourceForSelectedIdentity];

          if (sourceForSelectedIdentity)
          {
            LOBYTE(v4) = 1;
            goto LABEL_12;
          }
        }
      }

      v4 = [connectedScenes countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v4;
}

- (void)_mainViewControllerDidRequestSceneTitleUpdate:(id)update
{
  sourceForSelectedIdentity = [(CUIKCalendarModel *)self->_model sourceForSelectedIdentity];

  if (!sourceForSelectedIdentity)
  {

    [(CalendarSceneManager *)self _updateSceneTitle];
  }
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  contextsCopy = contexts;
  if ([contextsCopy count] >= 2)
  {
    selfCopy = self;
    v6 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Multiple URLs requested, only one will be opened. URLs:", buf, 2u);
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = contextsCopy;
    v8 = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = kCalUILogHandle;
          if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
          {
            v13 = *(*(&v23 + 1) + 8 * i);
            v14 = v12;
            v15 = [v13 URL];
            *buf = 138412290;
            v28 = v15;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "    %@", buf, 0xCu);
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v9);
    }

    self = selfCopy;
  }

  anyObject = [contextsCopy anyObject];
  v17 = [anyObject URL];
  v18 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v19 = v18;
    mobileCalWindow = [(CalendarSceneManager *)self mobileCalWindow];
    windowScene = [mobileCalWindow windowScene];
    *buf = 138412546;
    v28 = windowScene;
    v29 = 2112;
    selfCopy2 = self;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Open URL requested. Scene: %@   SceneManager: %@", buf, 0x16u);
  }

  [(CalendarSceneManager *)self _openURL:v17];
}

- (void)_openURL:(id)l
{
  lCopy = l;
  v5 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *&buf[4] = lCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Opening URL %@", buf, 0xCu);
  }

  if (self->_showingSplashScreen)
  {
    v6 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "[CalendarSceneManager _openURL:]";
      *&buf[12] = 2112;
      *&buf[14] = lCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "The splash screen is currently being shown.  Will delay execution of [%s] with URL [%@] until the splash screen is dismissed.", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v7 = +[NSDate date];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10011DEAC;
    v27[3] = &unk_100211B78;
    v8 = lCopy;
    v28 = v8;
    v9 = v7;
    v29 = v9;
    objc_copyWeak(&v30, buf);
    [(CalendarSceneManager *)self setSplashScreenCompletionAction:v27];
    objc_destroyWeak(&v30);

    objc_destroyWeak(buf);
  }

  else
  {
    v26 = 0;
    v8 = [(CalendarSceneManager *)self _eventURLFromLaunchURL:lCopy isTravel:&v26];

    model = [(CalendarSceneManager *)self model];
    currentlyLocked = [model currentlyLocked];

    if (currentlyLocked)
    {
      objc_initWeak(&location, self);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v34 = sub_10011DF88;
      v35 = sub_10011DF98;
      v36 = 0;
      v12 = +[NSNotificationCenter defaultCenter];
      model2 = [(CalendarSceneManager *)self model];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10011DFA0;
      v20[3] = &unk_100211BA0;
      objc_copyWeak(&v23, &location);
      v14 = CUIKCalendarModelDidUnlockNotification;
      v15 = v8;
      v24 = v26;
      v21 = v15;
      v22 = buf;
      v16 = [v12 addObserverForName:v14 object:model2 queue:0 usingBlock:v20];
      v17 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v16;

      _Block_object_dispose(buf, 8);
      objc_destroyWeak(&v23);
      objc_destroyWeak(&location);
    }

    else
    {
      v31 = EKUIEventDetailsFromTravelAdvisoryContextKey;
      v18 = [NSNumber numberWithBool:v26];
      v32 = v18;
      v19 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      [(CalendarSceneManager *)self handleURL:v8 context:v19];
    }
  }
}

- (id)_eventURLFromLaunchURL:(id)l isTravel:(BOOL *)travel
{
  lCopy = l;
  v6 = lCopy;
  if (travel)
  {
    *travel = 0;
  }

  if (lCopy)
  {
    query = [lCopy query];
    if (query)
    {
      v17 = query;
      v8 = [query componentsSeparatedByString:@"?"];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v19;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v19 != v11)
            {
              objc_enumerationMutation(v8);
            }

            if ([*(*(&v18 + 1) + 8 * i) isEqualToString:@"travel=true"])
            {
              if (travel)
              {
                *travel = 1;
              }

              absoluteString = [v6 absoluteString];
              v14 = [absoluteString stringByReplacingOccurrencesOfString:@"?travel=true" withString:&stru_1002133B8];

              v15 = [NSURL URLWithString:v14];

              v6 = v15;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v10);
      }

      query = v17;
    }
  }

  return v6;
}

+ (id)_encodeIdentifier:(id)identifier
{
  v3 = qword_100251D28;
  identifierCopy = identifier;
  if (v3 != -1)
  {
    sub_100170C04();
  }

  v5 = [identifierCopy stringByAddingPercentEncodingWithAllowedCharacters:qword_100251D20];

  return v5;
}

- (void)_selectedIdentityDidUpdate:(id)update
{
  object = [update object];
  model = self->_model;

  if (object == model)
  {
    [(CalendarSceneManager *)self _updateSceneActivationConditions];
  }

  [(CalendarSceneManager *)self _updateSceneTitle];
}

- (void)scene:(id)scene didFailToContinueUserActivityWithType:(id)type error:(id)error
{
  typeCopy = type;
  errorCopy = error;
  v8 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412546;
    v10 = typeCopy;
    v11 = 2112;
    v12 = errorCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Scene failed to continue user activity with type: %@, error: %@", &v9, 0x16u);
  }
}

- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler
{
  sceneCopy = scene;
  itemCopy = item;
  handlerCopy = handler;
  v11 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v25 = itemCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "The application was requested to perform an action for the following shortcut item: [%@]", buf, 0xCu);
  }

  if (self->_showingSplashScreen)
  {
    v12 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v25 = "[CalendarSceneManager windowScene:performActionForShortcutItem:completionHandler:]";
      v26 = 2112;
      v27 = itemCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "The splash screen is currently being shown.  Will delay execution of [%s] with shortcut item [%@] until the splash screen is dismissed.", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v13 = +[NSDate date];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10011E7C0;
    v18[3] = &unk_100211BE8;
    v19 = itemCopy;
    v14 = v13;
    v20 = v14;
    objc_copyWeak(&v23, buf);
    v21 = sceneCopy;
    v22 = handlerCopy;
    [(CalendarSceneManager *)self setSplashScreenCompletionAction:v18];

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }

  else
  {
    type = [itemCopy type];
    v16 = [type isEqualToString:@"com.apple.mobilecal.addevent"];

    v17 = kCalUILogHandle;
    if (v16)
    {
      if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v25 = itemCopy;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Received Add Event Springboard Quick Action '%@'.", buf, 0xCu);
      }

      [(CalRootViewController *)self->_rootViewController showAddEvent];
    }

    else if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = itemCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Unrecognized Springboard Quick Action '%@'.", buf, 0xCu);
    }

    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, v16);
    }
  }
}

- (void)_constructAndPresentSplashScreenFromViewController:(id)controller window:(id)window
{
  controllerCopy = controller;
  windowCopy = window;
  v8 = +[NSNotificationCenter defaultCenter];
  [v8 addObserver:self selector:"_receivedSplashScreenCompletedNotification" name:@"_CalendarSceneManagerDidCompleteSplashScreenNotification" object:0];

  v9 = objc_alloc_init(SplashScreenViewController);
  objc_initWeak(&location, self);
  objc_initWeak(&from, v9);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10011EB34;
  v15[3] = &unk_100211C10;
  objc_copyWeak(&v16, &location);
  objc_copyWeak(&v17, &from);
  v15[4] = self;
  [(SplashScreenViewController *)v9 setDoneBlock:v15];
  self->_showingSplashScreen = 1;
  v10 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v21 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Presenting splash screen view controller: [%@]", buf, 0xCu);
  }

  EKUIPushFallbackSizingContextWithViewHierarchy();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10011EDD4;
  v12[3] = &unk_1002108E8;
  objc_copyWeak(&v14, &from);
  v11 = windowCopy;
  v13 = v11;
  [controllerCopy presentViewController:v9 animated:1 completion:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

- (void)_splashScreenDidDismissShouldNotify:(BOOL)notify
{
  notifyCopy = notify;
  self->_showingSplashScreen = 0;
  splashScreenCompletionAction = [(CalendarSceneManager *)self splashScreenCompletionAction];

  if (splashScreenCompletionAction)
  {
    v6 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Executing delayed application request.", v9, 2u);
    }

    splashScreenCompletionAction2 = [(CalendarSceneManager *)self splashScreenCompletionAction];
    splashScreenCompletionAction2[2]();

    [(CalendarSceneManager *)self setSplashScreenCompletionAction:0];
  }

  if (notifyCopy)
  {
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 postNotificationName:@"_CalendarSceneManagerDidCompleteSplashScreenNotification" object:self];
  }
}

- (void)_receivedSplashScreenCompletedNotification
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"_CalendarSceneManagerDidCompleteSplashScreenNotification" object:0];

  if (self->_showingSplashScreen)
  {
    v4 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Received notification that splash screen view controller completed, dismissing.", buf, 2u);
    }

    rootNavigationController = self->_rootNavigationController;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10011F088;
    v6[3] = &unk_10020EB00;
    v6[4] = self;
    [(RootNavigationController *)rootNavigationController dismissViewControllerAnimated:1 completion:v6];
  }
}

- (void)_collectStats:(id)stats
{
  statsCopy = stats;
  v3 = statsCopy;
  CalAnalyticsSendEventLazy();
}

@end