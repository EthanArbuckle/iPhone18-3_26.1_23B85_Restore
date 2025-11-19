@interface StorageSettingsWrapper
+ (id)recommendationsShared;
- (BOOL)applicationHasTips:(id)a3;
- (STDelegate)delegate;
- (StorageSettingsWrapper)init;
- (id)docPluginsForApp:(id)a3;
- (id)docPluginsForAppIdentifier:(id)a3;
- (id)externalDataPluginsForApp:(id)a3;
- (id)externalDataPluginsForAppIdentifier:(id)a3;
- (id)loadTipsOperation:(id)a3;
- (id)tipsForApp:(id)a3;
- (id)tipsWithIdentifier:(id)a3;
- (id)usageBundleForIdentifier:(id)a3;
- (void)_reloadAllTips;
- (void)dealloc;
- (void)enableTip:(id)a3;
- (void)loadPlugins;
- (void)notifyTipsChanged;
- (void)reloadAllTips;
- (void)reloadTip:(id)a3;
- (void)reloadTipsForPlugin:(id)a3;
- (void)startMonitor;
- (void)stopMonitor;
- (void)tipDidUpdate:(id)a3;
@end

@implementation StorageSettingsWrapper

+ (id)recommendationsShared
{
  if (qword_BA530 != -1)
  {
    sub_80250();
  }

  v3 = qword_BA538;

  return v3;
}

- (StorageSettingsWrapper)init
{
  v16.receiver = self;
  v16.super_class = StorageSettingsWrapper;
  v2 = [(StorageSettingsWrapper *)&v16 init];
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
    tipsByID = v2->_tipsByID;
    v2->_tipsByID = v9;

    v11 = [NSMutableDictionary dictionaryWithCapacity:4];
    docPluginsByID = v2->_docPluginsByID;
    v2->_docPluginsByID = v11;

    v13 = [NSMutableDictionary dictionaryWithCapacity:4];
    externDataPluginsByID = v2->_externDataPluginsByID;
    v2->_externDataPluginsByID = v13;
  }

  return v2;
}

- (void)dealloc
{
  [(StorageSettingsWrapper *)self stopMonitor];
  v3.receiver = self;
  v3.super_class = StorageSettingsWrapper;
  [(StorageSettingsWrapper *)&v3 dealloc];
}

- (void)startMonitor
{
  if (!self->isMonitoring)
  {
    self->isMonitoring = 1;
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:self selector:"reloadAllTips" name:STNotifyTipsChanged object:0];
    [v3 addObserver:self selector:"reloadAllTips" name:STStoragePluginReloadTipsNotification object:0];
    if (_os_feature_enabled_impl())
    {
      v4 = +[STFileProviderMonitor sharedMonitor];
      [v4 startMonitor];
    }

    v5 = objc_alloc_init(STUsageBundleRegistry);
    usageBundleRegistry = self->_usageBundleRegistry;
    self->_usageBundleRegistry = v5;

    v7 = dispatch_get_global_queue(25, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_2968;
    block[3] = &unk_AA628;
    block[4] = self;
    dispatch_async(v7, block);
  }
}

- (void)stopMonitor
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:STNotifyTipsChanged object:0];
  [v4 removeObserver:self name:STStoragePluginReloadTipsNotification object:0];
  if (_os_feature_enabled_impl())
  {
    v3 = +[STFileProviderMonitor sharedMonitor];
    [v3 stopMonitor];
  }
}

- (void)notifyTipsChanged
{
  v47 = +[NSMutableSet set];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v38 = self;
  obj = [(NSMutableDictionary *)self->_tipsByID allValues];
  v3 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v3)
  {
    v4 = v3;
    v46 = *v49;
    v39 = STStorageTipPercentKey;
    v45 = STStorageSizeKey;
    v44 = STStorageTipImmediateGainKey;
    v43 = STStorageTipEventualGainKey;
    v42 = STStorageTipKindKey;
    v5 = STStorageTipKindActionKey;
    v40 = STStorageTipKindOptionKey;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v49 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v48 + 1) + 8 * i);
        v8 = objc_alloc_init(STRecommendation);
        v9 = [v7 title];
        [(STRecommendation *)v8 setTitle:v9];

        v10 = [v7 infoText];
        [(STRecommendation *)v8 setExplanaition:v10];

        v11 = [v7 representedApp];
        [(STRecommendation *)v8 setBundleID:v11];

        v12 = [v7 propertyForKey:@"_stTipID"];
        [(STRecommendation *)v8 setIdentifier:v12];

        v13 = v7;
        if (v13 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v14 = [v13 specifier];
          v15 = [v14 propertyForKey:v39];
          [v15 floatValue];
          [(STRecommendation *)v8 setProgress:?];
        }

        v16 = [v13 specifier];
        v17 = [v16 propertyForKey:v45];
        v18 = [v17 longLongValue];

        v19 = [v13 specifier];
        v20 = [v19 propertyForKey:v44];
        v21 = [v20 longLongValue];

        v22 = [v13 specifier];
        v23 = [v22 propertyForKey:v43];
        v24 = [v23 longLongValue];

        if (v18)
        {
          v25 = v18;
        }

        else
        {
          v25 = v21;
        }

        if (v24 <= 1000)
        {
          v26 = 0;
        }

        else
        {
          v26 = v24;
        }

        [(STRecommendation *)v8 setGain:&v25[v26]];
        v27 = [v13 specifier];
        v28 = [v27 propertyForKey:v42];

        if ([v28 isEqualToString:v5])
        {
          v29 = [v13 specifier];
          -[STRecommendation setDetailClass:](v8, "setDetailClass:", [v29 detailControllerClass]);
LABEL_22:

          goto LABEL_23;
        }

        if ([v28 isEqualToString:v40])
        {
          v30 = [v13 enableButtonTitle];

          if (v30)
          {
            [v13 enableButtonTitle];
          }

          else
          {
            STLocalizedString(@"Enable");
          }
          v29 = ;
          [(STRecommendation *)v8 setEnableButtonTitle:v29];
          goto LABEL_22;
        }

LABEL_23:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v31 = [v13 confirmationText];
          v32 = [v31 length];

          if (v32)
          {
            -[STRecommendation setMayCauseDataLoss:](v8, "setMayCauseDataLoss:", [v13 mayCauseDataLoss]);
            v33 = [v13 confirmationText];
            [(STRecommendation *)v8 setConfirmationText:v33];

            v34 = [v13 confirmationButtonTitle];
            if (v34)
            {
              [(STRecommendation *)v8 setConfirmationButtonTitle:v34];
            }

            else
            {
              v35 = [v13 title];
              [(STRecommendation *)v8 setConfirmationButtonTitle:v35];
            }
          }
        }

        [(NSSet *)v47 addObject:v8];
      }

      v4 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v4);
  }

  recommendations = v38->_recommendations;
  v38->_recommendations = v47;

  WeakRetained = objc_loadWeakRetained(&v38->_delegate);
  [WeakRetained recommendationsDidUpdate];
}

- (void)loadPlugins
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_2FF4;
  v5[3] = &unk_AA628;
  v5[4] = self;
  v3 = [NSBlockOperation blockOperationWithBlock:v5];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_360C;
  v4[3] = &unk_AA628;
  v4[4] = self;
  [v3 setCompletionBlock:v4];
  [(NSOperationQueue *)self->_serialQueue addOperation:v3];
}

- (id)loadTipsOperation:(id)a3
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_36CC;
  v7[3] = &unk_AA650;
  v8 = a3;
  v9 = self;
  v4 = v8;
  v5 = [NSBlockOperation blockOperationWithBlock:v7];

  return v5;
}

- (void)reloadAllTips
{
  v3 = [(StorageSettingsWrapper *)self tipsReloadTimer];
  [v3 invalidate];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_3998;
  v7[3] = &unk_AA678;
  v7[4] = self;
  v4 = [NSTimer timerWithTimeInterval:0 repeats:v7 block:0.5];
  [(StorageSettingsWrapper *)self setTipsReloadTimer:v4];

  v5 = +[NSRunLoop mainRunLoop];
  v6 = [(StorageSettingsWrapper *)self tipsReloadTimer];
  [v5 addTimer:v6 forMode:NSDefaultRunLoopMode];
}

- (void)_reloadAllTips
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_3A88;
  v5[3] = &unk_AA628;
  v5[4] = self;
  v3 = [NSBlockOperation blockOperationWithBlock:v5];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_3BF8;
  v4[3] = &unk_AA628;
  v4[4] = self;
  [v3 setCompletionBlock:v4];
  [(NSOperationQueue *)self->_serialQueue addOperation:v3];
}

- (void)reloadTipsForPlugin:(id)a3
{
  if (a3)
  {
    v4 = [(StorageSettingsWrapper *)self loadTipsOperation:?];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_3CC0;
    v5[3] = &unk_AA628;
    v5[4] = self;
    [v4 setCompletionBlock:v5];
    [(NSOperationQueue *)self->_serialQueue addOperation:v4];
  }

  else
  {

    [(StorageSettingsWrapper *)self reloadAllTips];
  }
}

- (id)docPluginsForAppIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(StorageSettingsWrapper *)self docPluginsByID];
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
  v5 = [(StorageSettingsWrapper *)self docPluginsForAppIdentifier:v4];

  return v5;
}

- (id)externalDataPluginsForAppIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(StorageSettingsWrapper *)self externDataPluginsByID];
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
  v5 = [(StorageSettingsWrapper *)self externalDataPluginsForAppIdentifier:v4];

  return v5;
}

- (void)reloadTip:(id)a3
{
  v4 = [a3 propertyForKey:@"_stPluginID"];
  if ([v4 length])
  {
    v5 = [(StorageSettingsWrapper *)self pluginsByID];
    v6 = [v5 objectForKey:v4];
  }

  else
  {
    v6 = 0;
  }

  [(StorageSettingsWrapper *)self reloadTipsForPlugin:v6];
}

- (id)tipsWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(NSMutableDictionary *)self->_tipsByID allValues];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 representedApp];
        v13 = [v12 isEqualToString:v4];

        if (v13)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)tipsForApp:(id)a3
{
  v4 = [a3 appIdentifier];
  v5 = [(StorageSettingsWrapper *)self tipsWithIdentifier:v4];

  return v5;
}

- (BOOL)applicationHasTips:(id)a3
{
  v3 = [(StorageSettingsWrapper *)self tipsForApp:a3];
  v4 = [v3 count] != 0;

  return v4;
}

- (void)enableTip:(id)a3
{
  [(NSMutableDictionary *)self->_tipsByID objectForKeyedSubscript:a3];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_41AC;
  v5 = block[3] = &unk_AA628;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)tipDidUpdate:(id)a3
{
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_42D0;
  v9 = &unk_AA650;
  v10 = self;
  v11 = a3;
  v4 = v11;
  v5 = [NSBlockOperation blockOperationWithBlock:&v6];
  [(NSOperationQueue *)self->_serialQueue addOperation:v5, v6, v7, v8, v9, v10];
}

- (id)usageBundleForIdentifier:(id)a3
{
  usageBundleRegistry = self->_usageBundleRegistry;
  if (usageBundleRegistry)
  {
    usageBundleRegistry = [usageBundleRegistry usageBundleForIdentifier:a3];
    v3 = vars8;
  }

  return usageBundleRegistry;
}

- (STDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end