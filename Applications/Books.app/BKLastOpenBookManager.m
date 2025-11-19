@interface BKLastOpenBookManager
+ (id)sharedInstance;
- (BOOL)_lastEngagedDateConsideredActive:(id)a3;
- (BOOL)lastKnownSuccessfullyOpenedBookForAssetID:(id)a3;
- (BOOL)shouldAutoOpenAsset:(id)a3;
- (id)_computeAssetIDForSavingToUserDataLastBookKey;
- (id)_computeLastSuccessfullyOpenedBookAssetID;
- (id)_initWithConfiguration:(id)a3;
- (id)_lastKnownSuccessfullyOpenedBookForAssetIDMappings;
- (unint64_t)_currentBookOpenBehavior;
- (void)_clearCurrentBookIfNecessary;
- (void)_updateLastOpenBookUserData;
- (void)clearAllLastOpenBooks;
- (void)dealloc;
- (void)javascriptConfiguration:(id)a3 updatedKeys:(id)a4;
- (void)removeSucessfullyOpenedBookAssetIDs:(id)a3;
- (void)saveCurrentBookState;
- (void)updateLastOpenBookByRemovingAssetID:(id)a3 addingAssetID:(id)a4;
- (void)updateSuccessfullyOpenedBookForAssetID:(id)a3 successfullyOpenedBook:(BOOL)a4;
@end

@implementation BKLastOpenBookManager

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100026A70;
  block[3] = &unk_100A03560;
  block[4] = a1;
  if (qword_100AF7738 != -1)
  {
    dispatch_once(&qword_100AF7738, block);
  }

  v2 = qword_100AF7740;

  return v2;
}

- (id)_lastKnownSuccessfullyOpenedBookForAssetIDMappings
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"BKSuccessfullyOpenedBookForAssetIDMappings"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &__NSDictionary0__struct;
  }

  v6 = v5;

  return v5;
}

- (id)_initWithConfiguration:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = BKLastOpenBookManager;
  v6 = [(BKLastOpenBookManager *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, a3);
    [v5 addObserver:v7];
    v8 = objc_opt_new();
    openResultTracker = v7->_openResultTracker;
    v7->_openResultTracker = v8;

    v10 = objc_alloc_init(NSMutableArray);
    lastOpenedBookAssetIDs = v7->_lastOpenedBookAssetIDs;
    v7->_lastOpenedBookAssetIDs = v10;

    v12 = [(BKLastOpenBookManager *)v7 _lastKnownSuccessfullyOpenedBookForAssetIDMappings];
    v13 = [v12 mutableCopy];
    sucessfullyOpenedBookForAssetID = v7->_sucessfullyOpenedBookForAssetID;
    v7->_sucessfullyOpenedBookForAssetID = v13;
  }

  return v7;
}

- (void)dealloc
{
  v3 = [(BKLastOpenBookManager *)self config];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = BKLastOpenBookManager;
  [(BKLastOpenBookManager *)&v4 dealloc];
}

- (void)saveCurrentBookState
{
  v3 = +[NSDate date];
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 setObject:v3 forKey:@"BKApplicationDidEnterBackgroundTimeKey"];
}

- (BOOL)_lastEngagedDateConsideredActive:(id)a3
{
  v4 = a3;
  v5 = [(BKLastOpenBookManager *)self config];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 dateRequiredForActiveBook];
    v8 = [v7 compare:v4] != 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)_currentBookOpenBehavior
{
  v3 = +[NSDate date];
  v4 = [(BKLastOpenBookManager *)self config];
  v5 = [v4 dateSinceLastActiveOverride];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = +[NSUserDefaults standardUserDefaults];
    v7 = [v8 objectForKey:@"BKApplicationDidEnterBackgroundTimeKey"];
  }

  v9 = +[(BKBasePresentingViewController *)BKAssetPresentingViewController];
  v10 = [v9 length];

  [v3 timeIntervalSinceDate:v7];
  v12 = v11;
  v13 = [(BKLastOpenBookManager *)self config];
  [v13 openBookDefaultBehaviorOverride];
  v15 = v14;

  v16 = [(BKLastOpenBookManager *)self config];
  [v16 openBookOpenBehaviorOverride];
  v18 = v17;

  v19 = [(BKLastOpenBookManager *)self config];
  [v19 openBookClosedSpreadBehaviorOverride];
  v21 = v20;

  if (v7)
  {
    v22 = v12 / 86400.0;
    if (v12 / 86400.0 <= v15)
    {
      v23 = 0;
    }

    else if (v10 && v22 <= v21)
    {
      v23 = 3;
    }

    else if (v22 > v15 && v22 <= v18 && v10 == 0)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }
  }

  else if (v10)
  {
    v23 = 3;
  }

  else
  {
    v23 = 1;
  }

  return v23;
}

- (void)_clearCurrentBookIfNecessary
{
  if ([(BKLastOpenBookManager *)self _currentBookOpenBehavior]- 1 <= 1)
  {

    +[(BKBasePresentingViewController *)BKAssetPresentingViewController];
  }
}

- (void)javascriptConfiguration:(id)a3 updatedKeys:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100146BC4;
  v7[3] = &unk_100A033C8;
  v7[4] = self;
  v4 = objc_retainBlock(v7);
  if (v4)
  {
    if (+[NSThread isMainThread])
    {
      (v4[2])(v4);
    }

    else
    {
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_100146BCC;
      v5[3] = &unk_100A03920;
      v6 = v4;
      dispatch_async(&_dispatch_main_q, v5);
    }
  }
}

- (id)_computeLastSuccessfullyOpenedBookAssetID
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(BKLastOpenBookManager *)self lastOpenedBookAssetIDs];
  v4 = [v3 reverseObjectEnumerator];

  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [(BKLastOpenBookManager *)self sucessfullyOpenedBookForAssetID];
        v11 = [v10 objectForKeyedSubscript:v9];
        v12 = [v11 BOOLValue];

        if (v12)
        {
          v13 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (id)_computeAssetIDForSavingToUserDataLastBookKey
{
  v3 = [(BKLastOpenBookManager *)self _computeLastSuccessfullyOpenedBookAssetID];
  if (!v3)
  {
    v4 = [(BKLastOpenBookManager *)self lastOpenedBookAssetIDs];
    v3 = [v4 lastObject];
  }

  return v3;
}

- (void)_updateLastOpenBookUserData
{
  v3 = [(BKLastOpenBookManager *)self _computeAssetIDForSavingToUserDataLastBookKey];
  if (v3)
  {
    v4 = [(BKLastOpenBookManager *)self sucessfullyOpenedBookForAssetID];
    v5 = [v4 objectForKeyedSubscript:v3];
    v6 = [v5 BOOLValue];
  }

  else
  {
    v6 = 0;
  }

  v7 = BCSceneLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = v3;
    v13 = 1024;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Scene update last open book ID to %{public}@, successful? %d", &v11, 0x12u);
  }

  v8 = +[NSUserDefaults standardUserDefaults];
  v9 = v8;
  if (v3)
  {
    [v8 setObject:v3 forKey:@"BKMainViewControllerLastBook"];
    [v9 setBool:v6 forKey:@"BKMainViewControllerSuccessfullyOpenedBook"];
  }

  else
  {
    [v8 removeObjectForKey:@"BKMainViewControllerLastBook"];
    [v9 removeObjectForKey:@"BKMainViewControllerSuccessfullyOpenedBook"];
  }

  v10 = [(BKLastOpenBookManager *)self sucessfullyOpenedBookForAssetID];
  [v9 setObject:v10 forKey:@"BKSuccessfullyOpenedBookForAssetIDMappings"];

  [v9 synchronize];
}

- (void)updateLastOpenBookByRemovingAssetID:(id)a3 addingAssetID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = BCSceneLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543618;
    v15 = v6;
    v16 = 2114;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Scene removing last open book ID=%{public}@, adding ID=%{public}@", &v14, 0x16u);
  }

  if (v6)
  {
    v9 = [(BKLastOpenBookManager *)self lastOpenedBookAssetIDs];
    [v9 removeObject:v6];

    v10 = [(BKLastOpenBookManager *)self sucessfullyOpenedBookForAssetID];
    [v10 removeObjectForKey:v6];
  }

  if (v7)
  {
    v11 = [(BKLastOpenBookManager *)self lastOpenedBookAssetIDs];
    v12 = [v11 containsObject:v7];

    if ((v12 & 1) == 0)
    {
      v13 = [(BKLastOpenBookManager *)self lastOpenedBookAssetIDs];
      [v13 addObject:v7];
    }
  }

  [(BKLastOpenBookManager *)self _updateLastOpenBookUserData];
}

- (void)updateSuccessfullyOpenedBookForAssetID:(id)a3 successfullyOpenedBook:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  if ([v9 length])
  {
    openResultTracker = self->_openResultTracker;
    if (v4)
    {
      [(BKRecentBookOpenResultTracker *)openResultTracker openDidFinishForAsset:v9];
    }

    else
    {
      [(BKRecentBookOpenResultTracker *)openResultTracker openDidStartForAsset:v9];
    }
  }

  v7 = [NSNumber numberWithBool:v4];
  v8 = [(BKLastOpenBookManager *)self sucessfullyOpenedBookForAssetID];
  [v8 setObject:v7 forKeyedSubscript:v9];

  [(BKLastOpenBookManager *)self _updateLastOpenBookUserData];
}

- (void)removeSucessfullyOpenedBookAssetIDs:(id)a3
{
  v9 = a3;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 objectForKey:@"BKMainViewControllerLastBook"];
  if ([v5 length] && objc_msgSend(v9, "containsObject:", v5))
  {
    [v4 removeObjectForKey:@"BKMainViewControllerSuccessfullyOpenedBook"];
  }

  v6 = [(BKLastOpenBookManager *)self sucessfullyOpenedBookForAssetID];
  v7 = [v9 allObjects];
  [v6 removeObjectsForKeys:v7];

  v8 = [(BKLastOpenBookManager *)self sucessfullyOpenedBookForAssetID];
  [v4 setObject:v8 forKey:@"BKSuccessfullyOpenedBookForAssetIDMappings"];

  [v4 synchronize];
}

- (BOOL)shouldAutoOpenAsset:(id)a3
{
  v3 = [(BKRecentBookOpenResultTracker *)self->_openResultTracker shouldAutoOpenAsset:a3];
  v4 = BCCurrentBookLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "auto-open logic said open? %d.", v6, 8u);
  }

  return v3;
}

- (BOOL)lastKnownSuccessfullyOpenedBookForAssetID:(id)a3
{
  v4 = a3;
  v5 = [(BKLastOpenBookManager *)self _lastKnownSuccessfullyOpenedBookForAssetIDMappings];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:v4];
    v8 = [v7 BOOLValue];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)clearAllLastOpenBooks
{
  v3 = BCSceneLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Clearing all known last open books", v5, 2u);
  }

  v4 = [(BKLastOpenBookManager *)self lastOpenedBookAssetIDs];
  [v4 removeAllObjects];

  [(BKLastOpenBookManager *)self _updateLastOpenBookUserData];
}

@end