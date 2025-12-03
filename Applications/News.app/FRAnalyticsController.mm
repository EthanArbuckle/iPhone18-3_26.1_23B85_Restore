@interface FRAnalyticsController
- (BOOL)sessionInProgressForID:(id)d;
- (FRAnalyticsController)init;
- (FRAnalyticsController)initWithCloudContext:(id)context;
- (NTPBSession)currentSession;
- (void)_endAllSessionsWithReason:(int64_t)reason forSceneID:(id)d;
- (void)_resetUserID;
- (void)_restartAllSessions;
- (void)_startSessionWithReferral:(id)referral sceneID:(id)d restartAllSessions:(BOOL)sessions;
- (void)addAppSessionObserver:(id)observer;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)endSessionForReason:(int64_t)reason byStartingNewSession:(BOOL)session resetUserID:(BOOL)d forSceneID:(id)iD;
- (void)loadOrRegenerateUserID;
- (void)loadOrRegenerateUserStartDate;
- (void)notifyWhenUserIDHasBeenDeterminedWithBlock:(id)block;
- (void)resignSessionForSceneID:(id)d;
- (void)startSessionIfNeededWithReferral:(id)referral sceneID:(id)d;
- (void)syncUserStartDate;
- (void)userInfoDidChangeFeldsparID:(id)d fromCloud:(BOOL)cloud;
@end

@implementation FRAnalyticsController

- (void)loadOrRegenerateUserID
{
  v3 = self->_userIDDeterminationGroup;
  if (!v3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006860C();
  }

  dispatch_group_enter(v3);
  cloudContext = [(FRAnalyticsController *)self cloudContext];
  userInfo = [cloudContext userInfo];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006460;
  v7[3] = &unk_1000C1920;
  v7[4] = self;
  v8 = v3;
  v6 = v3;
  [userInfo loadFeldsparIDWithCompletion:v7];
}

- (void)loadOrRegenerateUserStartDate
{
  v3 = +[FCAppleAccount sharedAccount];
  isPrivateDataSyncingEnabled = [v3 isPrivateDataSyncingEnabled];

  cloudContext = [(FRAnalyticsController *)self cloudContext];
  userInfo = [cloudContext userInfo];
  userStartDate = [userInfo userStartDate];

  if (!userStartDate)
  {
    if (isPrivateDataSyncingEnabled)
    {

      [(FRAnalyticsController *)self syncUserStartDate];
    }

    else
    {
      lastAppOpenDate = [(FRAnalyticsController *)self lastAppOpenDate];

      if (!lastAppOpenDate && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100068548();
      }

      lastAppOpenDate2 = [(FRAnalyticsController *)self lastAppOpenDate];
      cloudContext2 = [(FRAnalyticsController *)self cloudContext];
      userInfo2 = [cloudContext2 userInfo];
      [userInfo2 setUserStartDate:lastAppOpenDate2];
    }
  }
}

- (FRAnalyticsController)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = [[NSString alloc] initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v7 = "[FRAnalyticsController init]";
    v8 = 2080;
    v9 = "FRAnalyticsController.m";
    v10 = 1024;
    v11 = 61;
    v12 = 2114;
    v13 = v2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[FRAnalyticsController init]"];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (FRAnalyticsController)initWithCloudContext:(id)context
{
  contextCopy = context;
  if (!contextCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100068228();
  }

  v19.receiver = self;
  v19.super_class = FRAnalyticsController;
  v6 = [(FRAnalyticsController *)&v19 init];
  if (v6)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    sceneSessionDictionary = v6->_sceneSessionDictionary;
    v6->_sceneSessionDictionary = v7;

    objc_storeStrong(&v6->_cloudContext, context);
    v6->_isUserIDLoaded = 0;
    v9 = dispatch_group_create();
    userIDDeterminationGroup = v6->_userIDDeterminationGroup;
    v6->_userIDDeterminationGroup = v9;

    userInfo = [contextCopy userInfo];
    [userInfo addObserver:v6];
    v12 = +[NSDate date];
    lastAppOpenDate = v6->_lastAppOpenDate;
    v6->_lastAppOpenDate = v12;

    [(FRAnalyticsController *)v6 loadOrRegenerateUserID];
    [(FRAnalyticsController *)v6 loadOrRegenerateUserStartDate];
    v14 = [NSHashTable hashTableWithOptions:517];
    observers = v6->_observers;
    v6->_observers = v14;

    v16 = [NSHashTable hashTableWithOptions:517];
    appSessionObservers = v6->_appSessionObservers;
    v6->_appSessionObservers = v16;
  }

  return v6;
}

- (void)dealloc
{
  cloudContext = [(FRAnalyticsController *)self cloudContext];
  userInfo = [cloudContext userInfo];
  [userInfo removeObserver:self];

  v5.receiver = self;
  v5.super_class = FRAnalyticsController;
  [(FRAnalyticsController *)&v5 dealloc];
}

- (NTPBSession)currentSession
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000682EC();
  }

  return 0;
}

- (void)userInfoDidChangeFeldsparID:(id)d fromCloud:(BOOL)cloud
{
  if (cloud)
  {
    if ([(FRAnalyticsController *)self isUserIDLoaded])
    {
      FCPerformBlockOnMainThread();
    }
  }
}

- (void)notifyWhenUserIDHasBeenDeterminedWithBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000683C0();
  }

  userIDDeterminationGroup = [(FRAnalyticsController *)self userIDDeterminationGroup];
  dispatch_group_notify(userIDDeterminationGroup, &_dispatch_main_q, blockCopy);
}

- (void)syncUserStartDate
{
  cloudContext = [(FRAnalyticsController *)self cloudContext];
  userInfo = [cloudContext userInfo];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000B214;
  v5[3] = &unk_1000C18F8;
  v5[4] = self;
  [userInfo syncWithCompletion:v5];
}

- (BOOL)sessionInProgressForID:(id)d
{
  dCopy = d;
  +[NSThread isMainThread];
  sceneSessionDictionary = [(FRAnalyticsController *)self sceneSessionDictionary];
  v6 = [sceneSessionDictionary objectForKeyedSubscript:dCopy];

  return v6 != 0;
}

- (void)startSessionIfNeededWithReferral:(id)referral sceneID:(id)d
{
  referralCopy = referral;
  dCopy = d;
  +[NSThread isMainThread];
  if (![(FRAnalyticsController *)self sessionInProgressForID:dCopy])
  {
    [(FRAnalyticsController *)self _startSessionWithReferral:referralCopy sceneID:dCopy restartAllSessions:0];
  }
}

- (void)resignSessionForSceneID:(id)d
{
  dCopy = d;
  +[NSThread isMainThread];
  observers = [(FRAnalyticsController *)self observers];
  allObjects = [observers allObjects];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = allObjects;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          sceneSessionIdentifier = [v12 sceneSessionIdentifier];

          if (sceneSessionIdentifier == dCopy)
          {
            [v12 performSelector:"sessionWillResignActive" withObject:dCopy];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)endSessionForReason:(int64_t)reason byStartingNewSession:(BOOL)session resetUserID:(BOOL)d forSceneID:(id)iD
{
  dCopy = d;
  sessionCopy = session;
  iDCopy = iD;
  +[NSThread isMainThread];
  if (iDCopy)
  {
    sceneSessionDictionary = [(FRAnalyticsController *)self sceneSessionDictionary];
    v12 = [sceneSessionDictionary objectForKeyedSubscript:iDCopy];

    if (v12)
    {
      v13 = reason == 4 && sessionCopy;
      if (!v13 && !dCopy)
      {
        v29 = sessionCopy;
        v30 = v12;
        observers = [(FRAnalyticsController *)self observers];
        allObjects = [observers allObjects];

        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v16 = allObjects;
        v17 = [v16 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v32;
          v20 = &Tag__properties;
          while (2)
          {
            v21 = 0;
            v22 = v20[215];
            do
            {
              if (*v32 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v23 = *(*(&v31 + 1) + 8 * v21);
              if (objc_opt_respondsToSelector())
              {
                sceneSessionIdentifier = [v23 sceneSessionIdentifier];

                if (sceneSessionIdentifier == iDCopy)
                {
                  v26 = [NSNumber numberWithInteger:reason];
                  [v23 performSelector:v22 withObject:v26 withObject:iDCopy];

                  goto LABEL_23;
                }
              }

              v21 = v21 + 1;
            }

            while (v18 != v21);
            v18 = [v16 countByEnumeratingWithState:&v31 objects:v39 count:16];
            v20 = &Tag__properties;
            if (v18)
            {
              continue;
            }

            break;
          }
        }

LABEL_23:

        v25 = 0;
        v12 = v30;
        dCopy = 0;
        sessionCopy = v29;
        goto LABEL_24;
      }

LABEL_21:
      [(FRAnalyticsController *)self _endAllSessionsWithReason:reason forSceneID:iDCopy];
      v25 = 1;
LABEL_24:
      v27 = FCAnalyticsLog;
      if (os_log_type_enabled(FCAnalyticsLog, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v36 = iDCopy;
        v37 = 2112;
        v38 = v12;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Ending analytics session with scene ID session ID: %@, %@", buf, 0x16u);
      }

      if (dCopy)
      {
        [(FRAnalyticsController *)self _resetUserID];
      }

      if ((v25 | sessionCopy) == 1)
      {
        [(FRAnalyticsController *)self _startSessionWithReferral:0 sceneID:iDCopy restartAllSessions:v25];
      }

      else
      {
        sceneSessionDictionary2 = [(FRAnalyticsController *)self sceneSessionDictionary];
        [sceneSessionDictionary2 setObject:0 forKeyedSubscript:iDCopy];
      }

      goto LABEL_33;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000686D0();
      if (dCopy)
      {
        goto LABEL_21;
      }
    }

    else if (dCopy)
    {
      goto LABEL_21;
    }

    sub_10000B8B4();
LABEL_33:

    goto LABEL_34;
  }

  sub_10000B84C();
LABEL_34:
}

- (void)_endAllSessionsWithReason:(int64_t)reason forSceneID:(id)d
{
  [NSThread isMainThread:reason];
  appSessionObservers = [(FRAnalyticsController *)self appSessionObservers];
  allObjects = [appSessionObservers allObjects];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = allObjects;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v14 = [NSNumber numberWithInteger:reason, v15];
          [v13 performSelector:"endAppSessionWithEndReason:" withObject:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

- (void)_startSessionWithReferral:(id)referral sceneID:(id)d restartAllSessions:(BOOL)sessions
{
  sessionsCopy = sessions;
  referralCopy = referral;
  dCopy = d;
  +[NSThread isMainThread];
  if (sessionsCopy)
  {
    sceneSessionDictionary = [(FRAnalyticsController *)self sceneSessionDictionary];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10000BD84;
    v37[3] = &unk_1000C1948;
    v37[4] = self;
    [sceneSessionDictionary enumerateKeysAndObjectsUsingBlock:v37];

    [(FRAnalyticsController *)self _restartAllSessions];
  }

  else
  {
    v11 = +[NSUUID UUID];
    uUIDString = [v11 UUIDString];

    sceneSessionDictionary2 = [(FRAnalyticsController *)self sceneSessionDictionary];
    [sceneSessionDictionary2 setObject:uUIDString forKeyedSubscript:dCopy];

    referringURL = [referralCopy referringURL];

    if (referringURL)
    {
      v15 = [NSURL alloc];
      referringURL2 = [referralCopy referringURL];
      v32 = [v15 initWithString:referringURL2];
    }

    else
    {
      v32 = 0;
    }

    observers = [(FRAnalyticsController *)self observers];
    allObjects = [observers allObjects];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v19 = allObjects;
    v20 = [v19 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v34;
      v23 = &selRef_readOnlyArray;
      while (2)
      {
        v24 = 0;
        v25 = v23;
        do
        {
          if (*v34 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v26 = *(*(&v33 + 1) + 8 * v24);
          if (objc_opt_respondsToSelector())
          {
            sceneSessionIdentifier = [v26 sceneSessionIdentifier];

            if (sceneSessionIdentifier == dCopy)
            {
              sceneSessionDictionary3 = [(FRAnalyticsController *)self sceneSessionDictionary];
              v29 = [sceneSessionDictionary3 objectForKeyedSubscript:dCopy];
              referringApplication = [v31 referringApplication];
              [v26 sessionDidStartWithSessionID:v29 sourceApplication:referringApplication url:v32];

              goto LABEL_17;
            }
          }

          v24 = v24 + 1;
        }

        while (v21 != v24);
        v21 = [v19 countByEnumeratingWithState:&v33 objects:v38 count:16];
        v23 = v25;
        if (v21)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:

    referralCopy = v31;
  }
}

- (void)_restartAllSessions
{
  +[NSThread isMainThread];
  selfCopy = self;
  appSessionObservers = [(FRAnalyticsController *)self appSessionObservers];
  allObjects = [appSessionObservers allObjects];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = allObjects;
  v6 = [v5 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v11 = [NSNumber numberWithBool:1];
          [v10 performSelector:"startAppSessionWithUserIDReset:" withObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v7);
  }

  v26 = v5;

  observers = [(FRAnalyticsController *)selfCopy observers];
  allObjects2 = [observers allObjects];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = allObjects2;
  v15 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v29;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v28 + 1) + 8 * j);
        sceneSessionIdentifier = [v19 sceneSessionIdentifier];
        if (objc_opt_respondsToSelector())
        {
          sceneSessionDictionary = [(FRAnalyticsController *)selfCopy sceneSessionDictionary];
          allKeys = [sceneSessionDictionary allKeys];
          v23 = [allKeys containsObject:sceneSessionIdentifier];

          if (v23)
          {
            sceneSessionDictionary2 = [(FRAnalyticsController *)selfCopy sceneSessionDictionary];
            v25 = [sceneSessionDictionary2 objectForKeyedSubscript:sceneSessionIdentifier];
            [v19 sessionDidStartWithSessionID:v25 sourceApplication:0 url:0];
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v16);
  }
}

- (void)_resetUserID
{
  cloudContext = [(FRAnalyticsController *)self cloudContext];
  userInfo = [cloudContext userInfo];
  [userInfo resetUserIDs];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  +[NSThread isMainThread];
  observers = [(FRAnalyticsController *)self observers];
  [observers addObject:observerCopy];
}

- (void)addAppSessionObserver:(id)observer
{
  observerCopy = observer;
  +[NSThread isMainThread];
  appSessionObservers = [(FRAnalyticsController *)self appSessionObservers];
  [appSessionObservers addObject:observerCopy];
}

@end