@interface FRAnalyticsController
- (BOOL)sessionInProgressForID:(id)a3;
- (FRAnalyticsController)init;
- (FRAnalyticsController)initWithCloudContext:(id)a3;
- (NTPBSession)currentSession;
- (void)_endAllSessionsWithReason:(int64_t)a3 forSceneID:(id)a4;
- (void)_resetUserID;
- (void)_restartAllSessions;
- (void)_startSessionWithReferral:(id)a3 sceneID:(id)a4 restartAllSessions:(BOOL)a5;
- (void)addAppSessionObserver:(id)a3;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)endSessionForReason:(int64_t)a3 byStartingNewSession:(BOOL)a4 resetUserID:(BOOL)a5 forSceneID:(id)a6;
- (void)loadOrRegenerateUserID;
- (void)loadOrRegenerateUserStartDate;
- (void)notifyWhenUserIDHasBeenDeterminedWithBlock:(id)a3;
- (void)resignSessionForSceneID:(id)a3;
- (void)startSessionIfNeededWithReferral:(id)a3 sceneID:(id)a4;
- (void)syncUserStartDate;
- (void)userInfoDidChangeFeldsparID:(id)a3 fromCloud:(BOOL)a4;
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
  v4 = [(FRAnalyticsController *)self cloudContext];
  v5 = [v4 userInfo];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006460;
  v7[3] = &unk_1000C1920;
  v7[4] = self;
  v8 = v3;
  v6 = v3;
  [v5 loadFeldsparIDWithCompletion:v7];
}

- (void)loadOrRegenerateUserStartDate
{
  v3 = +[FCAppleAccount sharedAccount];
  v4 = [v3 isPrivateDataSyncingEnabled];

  v5 = [(FRAnalyticsController *)self cloudContext];
  v6 = [v5 userInfo];
  v7 = [v6 userStartDate];

  if (!v7)
  {
    if (v4)
    {

      [(FRAnalyticsController *)self syncUserStartDate];
    }

    else
    {
      v8 = [(FRAnalyticsController *)self lastAppOpenDate];

      if (!v8 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100068548();
      }

      v9 = [(FRAnalyticsController *)self lastAppOpenDate];
      v10 = [(FRAnalyticsController *)self cloudContext];
      v11 = [v10 userInfo];
      [v11 setUserStartDate:v9];
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

- (FRAnalyticsController)initWithCloudContext:(id)a3
{
  v5 = a3;
  if (!v5 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
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

    objc_storeStrong(&v6->_cloudContext, a3);
    v6->_isUserIDLoaded = 0;
    v9 = dispatch_group_create();
    userIDDeterminationGroup = v6->_userIDDeterminationGroup;
    v6->_userIDDeterminationGroup = v9;

    v11 = [v5 userInfo];
    [v11 addObserver:v6];
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
  v3 = [(FRAnalyticsController *)self cloudContext];
  v4 = [v3 userInfo];
  [v4 removeObserver:self];

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

- (void)userInfoDidChangeFeldsparID:(id)a3 fromCloud:(BOOL)a4
{
  if (a4)
  {
    if ([(FRAnalyticsController *)self isUserIDLoaded])
    {
      FCPerformBlockOnMainThread();
    }
  }
}

- (void)notifyWhenUserIDHasBeenDeterminedWithBlock:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000683C0();
  }

  v5 = [(FRAnalyticsController *)self userIDDeterminationGroup];
  dispatch_group_notify(v5, &_dispatch_main_q, v4);
}

- (void)syncUserStartDate
{
  v3 = [(FRAnalyticsController *)self cloudContext];
  v4 = [v3 userInfo];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000B214;
  v5[3] = &unk_1000C18F8;
  v5[4] = self;
  [v4 syncWithCompletion:v5];
}

- (BOOL)sessionInProgressForID:(id)a3
{
  v4 = a3;
  +[NSThread isMainThread];
  v5 = [(FRAnalyticsController *)self sceneSessionDictionary];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6 != 0;
}

- (void)startSessionIfNeededWithReferral:(id)a3 sceneID:(id)a4
{
  v7 = a3;
  v6 = a4;
  +[NSThread isMainThread];
  if (![(FRAnalyticsController *)self sessionInProgressForID:v6])
  {
    [(FRAnalyticsController *)self _startSessionWithReferral:v7 sceneID:v6 restartAllSessions:0];
  }
}

- (void)resignSessionForSceneID:(id)a3
{
  v4 = a3;
  +[NSThread isMainThread];
  v5 = [(FRAnalyticsController *)self observers];
  v6 = [v5 allObjects];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v6;
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
          v13 = [v12 sceneSessionIdentifier];

          if (v13 == v4)
          {
            [v12 performSelector:"sessionWillResignActive" withObject:v4];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)endSessionForReason:(int64_t)a3 byStartingNewSession:(BOOL)a4 resetUserID:(BOOL)a5 forSceneID:(id)a6
{
  v6 = a5;
  v7 = a4;
  v10 = a6;
  +[NSThread isMainThread];
  if (v10)
  {
    v11 = [(FRAnalyticsController *)self sceneSessionDictionary];
    v12 = [v11 objectForKeyedSubscript:v10];

    if (v12)
    {
      v13 = a3 == 4 && v7;
      if (!v13 && !v6)
      {
        v29 = v7;
        v30 = v12;
        v14 = [(FRAnalyticsController *)self observers];
        v15 = [v14 allObjects];

        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v16 = v15;
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
                v24 = [v23 sceneSessionIdentifier];

                if (v24 == v10)
                {
                  v26 = [NSNumber numberWithInteger:a3];
                  [v23 performSelector:v22 withObject:v26 withObject:v10];

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
        v6 = 0;
        v7 = v29;
        goto LABEL_24;
      }

LABEL_21:
      [(FRAnalyticsController *)self _endAllSessionsWithReason:a3 forSceneID:v10];
      v25 = 1;
LABEL_24:
      v27 = FCAnalyticsLog;
      if (os_log_type_enabled(FCAnalyticsLog, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v36 = v10;
        v37 = 2112;
        v38 = v12;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Ending analytics session with scene ID session ID: %@, %@", buf, 0x16u);
      }

      if (v6)
      {
        [(FRAnalyticsController *)self _resetUserID];
      }

      if ((v25 | v7) == 1)
      {
        [(FRAnalyticsController *)self _startSessionWithReferral:0 sceneID:v10 restartAllSessions:v25];
      }

      else
      {
        v28 = [(FRAnalyticsController *)self sceneSessionDictionary];
        [v28 setObject:0 forKeyedSubscript:v10];
      }

      goto LABEL_33;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000686D0();
      if (v6)
      {
        goto LABEL_21;
      }
    }

    else if (v6)
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

- (void)_endAllSessionsWithReason:(int64_t)a3 forSceneID:(id)a4
{
  [NSThread isMainThread:a3];
  v6 = [(FRAnalyticsController *)self appSessionObservers];
  v7 = [v6 allObjects];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v7;
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
          v14 = [NSNumber numberWithInteger:a3, v15];
          [v13 performSelector:"endAppSessionWithEndReason:" withObject:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

- (void)_startSessionWithReferral:(id)a3 sceneID:(id)a4 restartAllSessions:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  +[NSThread isMainThread];
  if (v5)
  {
    v10 = [(FRAnalyticsController *)self sceneSessionDictionary];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10000BD84;
    v37[3] = &unk_1000C1948;
    v37[4] = self;
    [v10 enumerateKeysAndObjectsUsingBlock:v37];

    [(FRAnalyticsController *)self _restartAllSessions];
  }

  else
  {
    v11 = +[NSUUID UUID];
    v12 = [v11 UUIDString];

    v13 = [(FRAnalyticsController *)self sceneSessionDictionary];
    [v13 setObject:v12 forKeyedSubscript:v9];

    v14 = [v8 referringURL];

    if (v14)
    {
      v15 = [NSURL alloc];
      v16 = [v8 referringURL];
      v32 = [v15 initWithString:v16];
    }

    else
    {
      v32 = 0;
    }

    v17 = [(FRAnalyticsController *)self observers];
    v18 = [v17 allObjects];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v19 = v18;
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
            v27 = [v26 sceneSessionIdentifier];

            if (v27 == v9)
            {
              v28 = [(FRAnalyticsController *)self sceneSessionDictionary];
              v29 = [v28 objectForKeyedSubscript:v9];
              v30 = [v31 referringApplication];
              [v26 sessionDidStartWithSessionID:v29 sourceApplication:v30 url:v32];

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

    v8 = v31;
  }
}

- (void)_restartAllSessions
{
  +[NSThread isMainThread];
  v27 = self;
  v3 = [(FRAnalyticsController *)self appSessionObservers];
  v4 = [v3 allObjects];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = v4;
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

  v12 = [(FRAnalyticsController *)v27 observers];
  v13 = [v12 allObjects];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = v13;
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
        v20 = [v19 sceneSessionIdentifier];
        if (objc_opt_respondsToSelector())
        {
          v21 = [(FRAnalyticsController *)v27 sceneSessionDictionary];
          v22 = [v21 allKeys];
          v23 = [v22 containsObject:v20];

          if (v23)
          {
            v24 = [(FRAnalyticsController *)v27 sceneSessionDictionary];
            v25 = [v24 objectForKeyedSubscript:v20];
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
  v3 = [(FRAnalyticsController *)self cloudContext];
  v2 = [v3 userInfo];
  [v2 resetUserIDs];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  +[NSThread isMainThread];
  v5 = [(FRAnalyticsController *)self observers];
  [v5 addObject:v4];
}

- (void)addAppSessionObserver:(id)a3
{
  v4 = a3;
  +[NSThread isMainThread];
  v5 = [(FRAnalyticsController *)self appSessionObservers];
  [v5 addObject:v4];
}

@end