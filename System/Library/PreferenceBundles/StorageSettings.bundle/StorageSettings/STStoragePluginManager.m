@interface STStoragePluginManager
+ (id)sharedManager;
- (BOOL)applicationHasTips:(id)a3;
- (NSArray)topTips;
- (STStoragePluginManager)init;
- (id)docPluginsForApp:(id)a3;
- (id)docPluginsForAppIdentifier:(id)a3;
- (id)externalDataPluginsForApp:(id)a3;
- (id)externalDataPluginsForAppIdentifier:(id)a3;
- (id)loadTipsOperation:(id)a3;
- (id)tipsForApp:(id)a3;
- (id)tipsWithIdentifier:(id)a3;
- (void)loadDefaults;
- (void)loadPlugins;
- (void)notifyTipsChanged;
- (void)reloadAllTips;
- (void)reloadTip:(id)a3;
- (void)reloadTipsForPlugin:(id)a3;
- (void)updateTipIndexes;
@end

@implementation STStoragePluginManager

+ (id)sharedManager
{
  if (qword_3A090 != -1)
  {
    sub_1CB08();
  }

  v3 = qword_3A088;

  return v3;
}

- (STStoragePluginManager)init
{
  v16.receiver = self;
  v16.super_class = STStoragePluginManager;
  v2 = [(STStoragePluginManager *)&v16 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSOperationQueue);
    concurrentQueue = v2->_concurrentQueue;
    v2->_concurrentQueue = v3;

    [(NSOperationQueue *)v2->_concurrentQueue setMaxConcurrentOperationCount:2];
    v5 = objc_alloc_init(NSOperationQueue);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v5;

    [(NSOperationQueue *)v2->_serialQueue setMaxConcurrentOperationCount:1];
    v7 = [NSMutableDictionary dictionaryWithCapacity:10];
    pluginsByID = v2->_pluginsByID;
    v2->_pluginsByID = v7;

    v9 = [NSMutableDictionary dictionaryWithCapacity:10];
    tipsByPluginID = v2->_tipsByPluginID;
    v2->_tipsByPluginID = v9;

    v11 = [NSMutableDictionary dictionaryWithCapacity:4];
    docPluginsByID = v2->_docPluginsByID;
    v2->_docPluginsByID = v11;

    v13 = [NSMutableDictionary dictionaryWithCapacity:4];
    externDataPluginsByID = v2->_externDataPluginsByID;
    v2->_externDataPluginsByID = v13;

    [(STStoragePluginManager *)v2 loadDefaults];
    [(STStoragePluginManager *)v2 loadPlugins];
  }

  return v2;
}

- (void)notifyTipsChanged
{
  v2 = +[STStorageDataNotifier sharedNotifier];
  [v2 postTipsChanged];
}

- (void)loadPlugins
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1A104;
  v4[3] = &unk_2CAA0;
  v4[4] = self;
  v3 = [NSBlockOperation blockOperationWithBlock:v4];
  [(NSOperationQueue *)self->_serialQueue addOperation:v3];
}

- (id)loadTipsOperation:(id)a3
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1A6C0;
  v7[3] = &unk_2CA38;
  v8 = a3;
  v9 = self;
  v4 = v8;
  v5 = [NSBlockOperation blockOperationWithBlock:v7];

  return v5;
}

- (void)updateTipIndexes
{
  v3 = [NSMutableArray arrayWithCapacity:20];
  v23 = self;
  v4 = [(STStoragePluginManager *)self tipsByPluginID];
  v5 = [v4 allValues];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v3 addObjectsFromArray:*(*(&v28 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v8);
  }

  v11 = [NSMutableDictionary dictionaryWithCapacity:10];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = v3;
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v24 + 1) + 8 * j);
        v18 = [v17 representedApp];
        if ([v18 length])
        {
          v19 = [v11 objectForKey:v18];
          v20 = v19;
          if (v19)
          {
            [v19 addObject:v17];
          }

          else
          {
            v21 = [NSMutableArray arrayWithObject:v17];
            [v11 setObject:v21 forKey:v18];
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v14);
  }

  [(STStoragePluginManager *)v23 setAllTips:v12];
  [(STStoragePluginManager *)v23 setTipsByAppID:v11];
  v22 = [v11 allKeys];
  [(STStoragePluginManager *)v23 setAllRepresentedApps:v22];
}

- (void)reloadAllTips
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1AE20;
  v5[3] = &unk_2CAA0;
  v5[4] = self;
  v3 = [NSBlockOperation blockOperationWithBlock:v5];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1AF90;
  v4[3] = &unk_2CAA0;
  v4[4] = self;
  [v3 setCompletionBlock:v4];
  [(NSOperationQueue *)self->_serialQueue addOperation:v3];
}

- (void)reloadTipsForPlugin:(id)a3
{
  if (a3)
  {
    v4 = [(STStoragePluginManager *)self loadTipsOperation:?];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1B08C;
    v5[3] = &unk_2CAA0;
    v5[4] = self;
    [v4 setCompletionBlock:v5];
    [(NSOperationQueue *)self->_serialQueue addOperation:v4];
  }

  else
  {

    [(STStoragePluginManager *)self reloadAllTips];
  }
}

- (id)docPluginsForAppIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(STStoragePluginManager *)self docPluginsByID];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &__NSArray0__struct;
  }

  v8 = v7;

  return v7;
}

- (id)docPluginsForApp:(id)a3
{
  v4 = [a3 appIdentifier];
  v5 = [(STStoragePluginManager *)self docPluginsForAppIdentifier:v4];

  return v5;
}

- (id)externalDataPluginsForAppIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(STStoragePluginManager *)self externDataPluginsByID];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &__NSArray0__struct;
  }

  v8 = v7;

  return v7;
}

- (id)externalDataPluginsForApp:(id)a3
{
  v4 = [a3 appIdentifier];
  v5 = [(STStoragePluginManager *)self externalDataPluginsForAppIdentifier:v4];

  return v5;
}

- (void)reloadTip:(id)a3
{
  v4 = [a3 propertyForKey:@"_stPluginID"];
  if ([v4 length])
  {
    v5 = [(STStoragePluginManager *)self pluginsByID];
    v6 = [v5 objectForKey:v4];
  }

  else
  {
    v6 = 0;
  }

  [(STStoragePluginManager *)self reloadTipsForPlugin:v6];
}

- (id)tipsWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(STStoragePluginManager *)self tipsByAppID];
  v6 = [v5 objectForKey:v4];

  v7 = [v6 sortedArrayUsingComparator:&stru_2D1E0];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &__NSArray0__struct;
  }

  v10 = v9;

  return v9;
}

- (id)tipsForApp:(id)a3
{
  v4 = [a3 appIdentifier];
  v5 = [(STStoragePluginManager *)self tipsWithIdentifier:v4];

  return v5;
}

- (NSArray)topTips
{
  v2 = [(STStoragePluginManager *)self allTips];
  v3 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v2 count]);
  v37 = [NSMutableArray arrayWithCapacity:4];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (!v5)
  {
    goto LABEL_32;
  }

  v6 = v5;
  v7 = *v43;
  v8 = &__objc_personality_v0_ptr;
  v36 = v4;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v43 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v42 + 1) + 8 * i);
      v11 = [v10 size];
      v12 = v8[288];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v10;
        [v13 activationPercent];
        if (v14 != 0.0)
        {
          [v13 activationPercent];
          if (v15 < 1.0)
          {
            [v13 setSortSize:0];
            [v37 addObject:v13];

            continue;
          }
        }

        if (!v11)
        {
          v23 = [v13 immediateGain];
          v11 = v23 + [v13 eventualGain];
        }
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v24 = objc_opt_class();
          v25 = NSStringFromClass(v24);
          NSLog(@"Unknown tip class in storage management: %@", v25);

          continue;
        }

        v16 = v10;
        if (!v11)
        {
          v17 = v3;
          v18 = [v16 significantItems];
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v19 = [v18 countByEnumeratingWithState:&v38 objects:v46 count:16];
          if (v19)
          {
            v20 = v19;
            v11 = 0;
            v21 = *v39;
            do
            {
              for (j = 0; j != v20; j = j + 1)
              {
                if (*v39 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v11 += [*(*(&v38 + 1) + 8 * j) size];
              }

              v20 = [v18 countByEnumeratingWithState:&v38 objects:v46 count:16];
            }

            while (v20);
          }

          else
          {
            v11 = 0;
          }

          v3 = v17;
          v4 = v36;
          v8 = &__objc_personality_v0_ptr;
        }
      }

      [v10 setSortSize:v11];
      if (v11)
      {
        v26 = v11 < 50000001;
      }

      else
      {
        v26 = 0;
      }

      if (!v26)
      {
        [v3 addObject:v10];
      }
    }

    v6 = [v4 countByEnumeratingWithState:&v42 objects:v47 count:16];
  }

  while (v6);
LABEL_32:

  v27 = +[STStorageDiskMonitor sharedMonitor];
  v28 = [v27 storageSpace];

  if ([v28 availableBytes] >= 1000000000)
  {
    v29 = &stru_2D1E0;
  }

  else
  {
    v29 = &stru_2D1C0;
  }

  [v3 sortUsingComparator:v29];
  [v37 sortUsingComparator:&stru_2D200];
  v30 = [v3 count];
  if (!self->_showAllTips)
  {
    tipsToShow = self->_tipsToShow;
    v31 = &v30[-tipsToShow];
    if (v30 > tipsToShow)
    {
      [v3 removeObjectsInRange:?];
    }
  }

  v33 = [v3 arrayByAddingObjectsFromArray:{v37, v31}];

  return v33;
}

- (BOOL)applicationHasTips:(id)a3
{
  v4 = a3;
  v5 = [(STStoragePluginManager *)self tipsByPluginID];
  v6 = [v4 appIdentifier];

  v7 = [v5 objectForKey:v6];
  v8 = [v7 count] != 0;

  return v8;
}

- (void)loadDefaults
{
  self->_showAllTips = 0;
  v5 = +[UIDevice currentDevice];
  v3 = [v5 userInterfaceIdiom];
  v4 = 2;
  if (v3 == &dword_0 + 1)
  {
    v4 = 3;
  }

  self->_tipsToShow = v4;
}

@end