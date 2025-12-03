@interface StorageSettingsWrapper
+ (id)recommendationsShared;
- (BOOL)applicationHasTips:(id)tips;
- (STDelegate)delegate;
- (StorageSettingsWrapper)init;
- (id)docPluginsForApp:(id)app;
- (id)docPluginsForAppIdentifier:(id)identifier;
- (id)externalDataPluginsForApp:(id)app;
- (id)externalDataPluginsForAppIdentifier:(id)identifier;
- (id)loadTipsOperation:(id)operation;
- (id)tipsForApp:(id)app;
- (id)tipsWithIdentifier:(id)identifier;
- (id)usageBundleForIdentifier:(id)identifier;
- (void)_reloadAllTips;
- (void)dealloc;
- (void)enableTip:(id)tip;
- (void)loadPlugins;
- (void)notifyTipsChanged;
- (void)reloadAllTips;
- (void)reloadTip:(id)tip;
- (void)reloadTipsForPlugin:(id)plugin;
- (void)startMonitor;
- (void)stopMonitor;
- (void)tipDidUpdate:(id)update;
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
  selfCopy = self;
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
        title = [v7 title];
        [(STRecommendation *)v8 setTitle:title];

        infoText = [v7 infoText];
        [(STRecommendation *)v8 setExplanaition:infoText];

        representedApp = [v7 representedApp];
        [(STRecommendation *)v8 setBundleID:representedApp];

        v12 = [v7 propertyForKey:@"_stTipID"];
        [(STRecommendation *)v8 setIdentifier:v12];

        v13 = v7;
        if (v13 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          specifier = [v13 specifier];
          v15 = [specifier propertyForKey:v39];
          [v15 floatValue];
          [(STRecommendation *)v8 setProgress:?];
        }

        specifier2 = [v13 specifier];
        v17 = [specifier2 propertyForKey:v45];
        longLongValue = [v17 longLongValue];

        specifier3 = [v13 specifier];
        v20 = [specifier3 propertyForKey:v44];
        longLongValue2 = [v20 longLongValue];

        specifier4 = [v13 specifier];
        v23 = [specifier4 propertyForKey:v43];
        longLongValue3 = [v23 longLongValue];

        if (longLongValue)
        {
          v25 = longLongValue;
        }

        else
        {
          v25 = longLongValue2;
        }

        if (longLongValue3 <= 1000)
        {
          v26 = 0;
        }

        else
        {
          v26 = longLongValue3;
        }

        [(STRecommendation *)v8 setGain:&v25[v26]];
        specifier5 = [v13 specifier];
        v28 = [specifier5 propertyForKey:v42];

        if ([v28 isEqualToString:v5])
        {
          specifier6 = [v13 specifier];
          -[STRecommendation setDetailClass:](v8, "setDetailClass:", [specifier6 detailControllerClass]);
LABEL_22:

          goto LABEL_23;
        }

        if ([v28 isEqualToString:v40])
        {
          enableButtonTitle = [v13 enableButtonTitle];

          if (enableButtonTitle)
          {
            [v13 enableButtonTitle];
          }

          else
          {
            STLocalizedString(@"Enable");
          }
          specifier6 = ;
          [(STRecommendation *)v8 setEnableButtonTitle:specifier6];
          goto LABEL_22;
        }

LABEL_23:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          confirmationText = [v13 confirmationText];
          v32 = [confirmationText length];

          if (v32)
          {
            -[STRecommendation setMayCauseDataLoss:](v8, "setMayCauseDataLoss:", [v13 mayCauseDataLoss]);
            confirmationText2 = [v13 confirmationText];
            [(STRecommendation *)v8 setConfirmationText:confirmationText2];

            confirmationButtonTitle = [v13 confirmationButtonTitle];
            if (confirmationButtonTitle)
            {
              [(STRecommendation *)v8 setConfirmationButtonTitle:confirmationButtonTitle];
            }

            else
            {
              title2 = [v13 title];
              [(STRecommendation *)v8 setConfirmationButtonTitle:title2];
            }
          }
        }

        [(NSSet *)v47 addObject:v8];
      }

      v4 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v4);
  }

  recommendations = selfCopy->_recommendations;
  selfCopy->_recommendations = v47;

  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
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

- (id)loadTipsOperation:(id)operation
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_36CC;
  v7[3] = &unk_AA650;
  operationCopy = operation;
  selfCopy = self;
  v4 = operationCopy;
  v5 = [NSBlockOperation blockOperationWithBlock:v7];

  return v5;
}

- (void)reloadAllTips
{
  tipsReloadTimer = [(StorageSettingsWrapper *)self tipsReloadTimer];
  [tipsReloadTimer invalidate];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_3998;
  v7[3] = &unk_AA678;
  v7[4] = self;
  v4 = [NSTimer timerWithTimeInterval:0 repeats:v7 block:0.5];
  [(StorageSettingsWrapper *)self setTipsReloadTimer:v4];

  v5 = +[NSRunLoop mainRunLoop];
  tipsReloadTimer2 = [(StorageSettingsWrapper *)self tipsReloadTimer];
  [v5 addTimer:tipsReloadTimer2 forMode:NSDefaultRunLoopMode];
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

- (void)reloadTipsForPlugin:(id)plugin
{
  if (plugin)
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

- (id)docPluginsForAppIdentifier:(id)identifier
{
  identifierCopy = identifier;
  docPluginsByID = [(StorageSettingsWrapper *)self docPluginsByID];
  v6 = [docPluginsByID objectForKey:identifierCopy];

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

- (id)docPluginsForApp:(id)app
{
  appIdentifier = [app appIdentifier];
  v5 = [(StorageSettingsWrapper *)self docPluginsForAppIdentifier:appIdentifier];

  return v5;
}

- (id)externalDataPluginsForAppIdentifier:(id)identifier
{
  identifierCopy = identifier;
  externDataPluginsByID = [(StorageSettingsWrapper *)self externDataPluginsByID];
  v6 = [externDataPluginsByID objectForKey:identifierCopy];

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

- (id)externalDataPluginsForApp:(id)app
{
  appIdentifier = [app appIdentifier];
  v5 = [(StorageSettingsWrapper *)self externalDataPluginsForAppIdentifier:appIdentifier];

  return v5;
}

- (void)reloadTip:(id)tip
{
  v4 = [tip propertyForKey:@"_stPluginID"];
  if ([v4 length])
  {
    pluginsByID = [(StorageSettingsWrapper *)self pluginsByID];
    v6 = [pluginsByID objectForKey:v4];
  }

  else
  {
    v6 = 0;
  }

  [(StorageSettingsWrapper *)self reloadTipsForPlugin:v6];
}

- (id)tipsWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allValues = [(NSMutableDictionary *)self->_tipsByID allValues];
  v7 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        representedApp = [v11 representedApp];
        v13 = [representedApp isEqualToString:identifierCopy];

        if (v13)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)tipsForApp:(id)app
{
  appIdentifier = [app appIdentifier];
  v5 = [(StorageSettingsWrapper *)self tipsWithIdentifier:appIdentifier];

  return v5;
}

- (BOOL)applicationHasTips:(id)tips
{
  v3 = [(StorageSettingsWrapper *)self tipsForApp:tips];
  v4 = [v3 count] != 0;

  return v4;
}

- (void)enableTip:(id)tip
{
  [(NSMutableDictionary *)self->_tipsByID objectForKeyedSubscript:tip];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_41AC;
  v5 = block[3] = &unk_AA628;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)tipDidUpdate:(id)update
{
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_42D0;
  v9 = &unk_AA650;
  selfCopy = self;
  updateCopy = update;
  v4 = updateCopy;
  v5 = [NSBlockOperation blockOperationWithBlock:&v6];
  [(NSOperationQueue *)self->_serialQueue addOperation:v5, v6, v7, v8, v9, selfCopy];
}

- (id)usageBundleForIdentifier:(id)identifier
{
  usageBundleRegistry = self->_usageBundleRegistry;
  if (usageBundleRegistry)
  {
    usageBundleRegistry = [usageBundleRegistry usageBundleForIdentifier:identifier];
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