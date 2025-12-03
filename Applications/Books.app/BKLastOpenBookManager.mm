@interface BKLastOpenBookManager
+ (id)sharedInstance;
- (BOOL)_lastEngagedDateConsideredActive:(id)active;
- (BOOL)lastKnownSuccessfullyOpenedBookForAssetID:(id)d;
- (BOOL)shouldAutoOpenAsset:(id)asset;
- (id)_computeAssetIDForSavingToUserDataLastBookKey;
- (id)_computeLastSuccessfullyOpenedBookAssetID;
- (id)_initWithConfiguration:(id)configuration;
- (id)_lastKnownSuccessfullyOpenedBookForAssetIDMappings;
- (unint64_t)_currentBookOpenBehavior;
- (void)_clearCurrentBookIfNecessary;
- (void)_updateLastOpenBookUserData;
- (void)clearAllLastOpenBooks;
- (void)dealloc;
- (void)javascriptConfiguration:(id)configuration updatedKeys:(id)keys;
- (void)removeSucessfullyOpenedBookAssetIDs:(id)ds;
- (void)saveCurrentBookState;
- (void)updateLastOpenBookByRemovingAssetID:(id)d addingAssetID:(id)iD;
- (void)updateSuccessfullyOpenedBookForAssetID:(id)d successfullyOpenedBook:(BOOL)book;
@end

@implementation BKLastOpenBookManager

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100026A70;
  block[3] = &unk_100A03560;
  block[4] = self;
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

- (id)_initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v16.receiver = self;
  v16.super_class = BKLastOpenBookManager;
  v6 = [(BKLastOpenBookManager *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, configuration);
    [configurationCopy addObserver:v7];
    v8 = objc_opt_new();
    openResultTracker = v7->_openResultTracker;
    v7->_openResultTracker = v8;

    v10 = objc_alloc_init(NSMutableArray);
    lastOpenedBookAssetIDs = v7->_lastOpenedBookAssetIDs;
    v7->_lastOpenedBookAssetIDs = v10;

    _lastKnownSuccessfullyOpenedBookForAssetIDMappings = [(BKLastOpenBookManager *)v7 _lastKnownSuccessfullyOpenedBookForAssetIDMappings];
    v13 = [_lastKnownSuccessfullyOpenedBookForAssetIDMappings mutableCopy];
    sucessfullyOpenedBookForAssetID = v7->_sucessfullyOpenedBookForAssetID;
    v7->_sucessfullyOpenedBookForAssetID = v13;
  }

  return v7;
}

- (void)dealloc
{
  config = [(BKLastOpenBookManager *)self config];
  [config removeObserver:self];

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

- (BOOL)_lastEngagedDateConsideredActive:(id)active
{
  activeCopy = active;
  config = [(BKLastOpenBookManager *)self config];
  v6 = config;
  if (activeCopy)
  {
    dateRequiredForActiveBook = [config dateRequiredForActiveBook];
    v8 = [dateRequiredForActiveBook compare:activeCopy] != 1;
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
  config = [(BKLastOpenBookManager *)self config];
  dateSinceLastActiveOverride = [config dateSinceLastActiveOverride];
  v6 = dateSinceLastActiveOverride;
  if (dateSinceLastActiveOverride)
  {
    v7 = dateSinceLastActiveOverride;
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
  config2 = [(BKLastOpenBookManager *)self config];
  [config2 openBookDefaultBehaviorOverride];
  v15 = v14;

  config3 = [(BKLastOpenBookManager *)self config];
  [config3 openBookOpenBehaviorOverride];
  v18 = v17;

  config4 = [(BKLastOpenBookManager *)self config];
  [config4 openBookClosedSpreadBehaviorOverride];
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

- (void)javascriptConfiguration:(id)configuration updatedKeys:(id)keys
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
  lastOpenedBookAssetIDs = [(BKLastOpenBookManager *)self lastOpenedBookAssetIDs];
  reverseObjectEnumerator = [lastOpenedBookAssetIDs reverseObjectEnumerator];

  v5 = [reverseObjectEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        sucessfullyOpenedBookForAssetID = [(BKLastOpenBookManager *)self sucessfullyOpenedBookForAssetID];
        v11 = [sucessfullyOpenedBookForAssetID objectForKeyedSubscript:v9];
        bOOLValue = [v11 BOOLValue];

        if (bOOLValue)
        {
          v13 = v9;
          goto LABEL_11;
        }
      }

      v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  _computeLastSuccessfullyOpenedBookAssetID = [(BKLastOpenBookManager *)self _computeLastSuccessfullyOpenedBookAssetID];
  if (!_computeLastSuccessfullyOpenedBookAssetID)
  {
    lastOpenedBookAssetIDs = [(BKLastOpenBookManager *)self lastOpenedBookAssetIDs];
    _computeLastSuccessfullyOpenedBookAssetID = [lastOpenedBookAssetIDs lastObject];
  }

  return _computeLastSuccessfullyOpenedBookAssetID;
}

- (void)_updateLastOpenBookUserData
{
  _computeAssetIDForSavingToUserDataLastBookKey = [(BKLastOpenBookManager *)self _computeAssetIDForSavingToUserDataLastBookKey];
  if (_computeAssetIDForSavingToUserDataLastBookKey)
  {
    sucessfullyOpenedBookForAssetID = [(BKLastOpenBookManager *)self sucessfullyOpenedBookForAssetID];
    v5 = [sucessfullyOpenedBookForAssetID objectForKeyedSubscript:_computeAssetIDForSavingToUserDataLastBookKey];
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v7 = BCSceneLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = _computeAssetIDForSavingToUserDataLastBookKey;
    v13 = 1024;
    v14 = bOOLValue;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Scene update last open book ID to %{public}@, successful? %d", &v11, 0x12u);
  }

  v8 = +[NSUserDefaults standardUserDefaults];
  v9 = v8;
  if (_computeAssetIDForSavingToUserDataLastBookKey)
  {
    [v8 setObject:_computeAssetIDForSavingToUserDataLastBookKey forKey:@"BKMainViewControllerLastBook"];
    [v9 setBool:bOOLValue forKey:@"BKMainViewControllerSuccessfullyOpenedBook"];
  }

  else
  {
    [v8 removeObjectForKey:@"BKMainViewControllerLastBook"];
    [v9 removeObjectForKey:@"BKMainViewControllerSuccessfullyOpenedBook"];
  }

  sucessfullyOpenedBookForAssetID2 = [(BKLastOpenBookManager *)self sucessfullyOpenedBookForAssetID];
  [v9 setObject:sucessfullyOpenedBookForAssetID2 forKey:@"BKSuccessfullyOpenedBookForAssetIDMappings"];

  [v9 synchronize];
}

- (void)updateLastOpenBookByRemovingAssetID:(id)d addingAssetID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v8 = BCSceneLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543618;
    v15 = dCopy;
    v16 = 2114;
    v17 = iDCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Scene removing last open book ID=%{public}@, adding ID=%{public}@", &v14, 0x16u);
  }

  if (dCopy)
  {
    lastOpenedBookAssetIDs = [(BKLastOpenBookManager *)self lastOpenedBookAssetIDs];
    [lastOpenedBookAssetIDs removeObject:dCopy];

    sucessfullyOpenedBookForAssetID = [(BKLastOpenBookManager *)self sucessfullyOpenedBookForAssetID];
    [sucessfullyOpenedBookForAssetID removeObjectForKey:dCopy];
  }

  if (iDCopy)
  {
    lastOpenedBookAssetIDs2 = [(BKLastOpenBookManager *)self lastOpenedBookAssetIDs];
    v12 = [lastOpenedBookAssetIDs2 containsObject:iDCopy];

    if ((v12 & 1) == 0)
    {
      lastOpenedBookAssetIDs3 = [(BKLastOpenBookManager *)self lastOpenedBookAssetIDs];
      [lastOpenedBookAssetIDs3 addObject:iDCopy];
    }
  }

  [(BKLastOpenBookManager *)self _updateLastOpenBookUserData];
}

- (void)updateSuccessfullyOpenedBookForAssetID:(id)d successfullyOpenedBook:(BOOL)book
{
  bookCopy = book;
  dCopy = d;
  if ([dCopy length])
  {
    openResultTracker = self->_openResultTracker;
    if (bookCopy)
    {
      [(BKRecentBookOpenResultTracker *)openResultTracker openDidFinishForAsset:dCopy];
    }

    else
    {
      [(BKRecentBookOpenResultTracker *)openResultTracker openDidStartForAsset:dCopy];
    }
  }

  v7 = [NSNumber numberWithBool:bookCopy];
  sucessfullyOpenedBookForAssetID = [(BKLastOpenBookManager *)self sucessfullyOpenedBookForAssetID];
  [sucessfullyOpenedBookForAssetID setObject:v7 forKeyedSubscript:dCopy];

  [(BKLastOpenBookManager *)self _updateLastOpenBookUserData];
}

- (void)removeSucessfullyOpenedBookAssetIDs:(id)ds
{
  dsCopy = ds;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 objectForKey:@"BKMainViewControllerLastBook"];
  if ([v5 length] && objc_msgSend(dsCopy, "containsObject:", v5))
  {
    [v4 removeObjectForKey:@"BKMainViewControllerSuccessfullyOpenedBook"];
  }

  sucessfullyOpenedBookForAssetID = [(BKLastOpenBookManager *)self sucessfullyOpenedBookForAssetID];
  allObjects = [dsCopy allObjects];
  [sucessfullyOpenedBookForAssetID removeObjectsForKeys:allObjects];

  sucessfullyOpenedBookForAssetID2 = [(BKLastOpenBookManager *)self sucessfullyOpenedBookForAssetID];
  [v4 setObject:sucessfullyOpenedBookForAssetID2 forKey:@"BKSuccessfullyOpenedBookForAssetIDMappings"];

  [v4 synchronize];
}

- (BOOL)shouldAutoOpenAsset:(id)asset
{
  v3 = [(BKRecentBookOpenResultTracker *)self->_openResultTracker shouldAutoOpenAsset:asset];
  v4 = BCCurrentBookLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "auto-open logic said open? %d.", v6, 8u);
  }

  return v3;
}

- (BOOL)lastKnownSuccessfullyOpenedBookForAssetID:(id)d
{
  dCopy = d;
  _lastKnownSuccessfullyOpenedBookForAssetIDMappings = [(BKLastOpenBookManager *)self _lastKnownSuccessfullyOpenedBookForAssetIDMappings];
  v6 = _lastKnownSuccessfullyOpenedBookForAssetIDMappings;
  if (_lastKnownSuccessfullyOpenedBookForAssetIDMappings)
  {
    v7 = [_lastKnownSuccessfullyOpenedBookForAssetIDMappings objectForKeyedSubscript:dCopy];
    bOOLValue = [v7 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)clearAllLastOpenBooks
{
  v3 = BCSceneLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Clearing all known last open books", v5, 2u);
  }

  lastOpenedBookAssetIDs = [(BKLastOpenBookManager *)self lastOpenedBookAssetIDs];
  [lastOpenedBookAssetIDs removeAllObjects];

  [(BKLastOpenBookManager *)self _updateLastOpenBookUserData];
}

@end