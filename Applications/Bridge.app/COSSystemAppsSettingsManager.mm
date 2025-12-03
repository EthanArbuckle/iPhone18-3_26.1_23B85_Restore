@interface COSSystemAppsSettingsManager
- (BOOL)_shouldReloadChangedRow:(id)row installed:(BOOL)installed activeDevice:(id)device;
- (COSSystemAppsSettingsManager)initWithDelegate:(id)delegate;
- (COSSystemAppsSettingsManagerDelegate)delegate;
- (id)_systemAppSpecifierDictForBundleRow:(id)row;
- (void)_addRequiredWatchAppsToMapping:(id)mapping;
- (void)_buildSystemAppSpecifierDicts;
- (void)_loadSystemAppSettings;
- (void)_notifyThatFullSpecifierDictListIsLoaded;
- (void)_notifyThatSpecifiersShouldBeRemoved:(id)removed;
- (void)_recheckInstallStateForAllBundleRows;
- (void)_setUpBundleRows:(id)rows;
- (void)buildSystemAppSettings;
- (void)watchAppsChangedForBundleRows:(id)rows installed:(BOOL)installed;
@end

@implementation COSSystemAppsSettingsManager

- (void)_loadSystemAppSettings
{
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[COSSystemAppsSettingsManager _loadSystemAppSettings]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s - Loading system app bundles", buf, 0xCu);
  }

  bundleLoadingQueue = [(COSSystemAppsSettingsManager *)self bundleLoadingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000088D4;
  block[3] = &unk_1002682F0;
  block[4] = self;
  dispatch_async(bundleLoadingQueue, block);
}

- (void)_buildSystemAppSpecifierDicts
{
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "[COSSystemAppsSettingsManager _buildSystemAppSpecifierDicts]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s - building system app specifier bundle dictionaries", buf, 0xCu);
  }

  systemAppsSpecifiersBundleDicts = [(COSSystemAppsSettingsManager *)self systemAppsSpecifiersBundleDicts];

  if (!systemAppsSpecifiersBundleDicts)
  {
    v5 = objc_opt_new();
    [(COSSystemAppsSettingsManager *)self setSystemAppsSpecifiersBundleDicts:v5];
  }

  v6 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  bundleRows = [(COSSystemAppsSettingsManager *)self bundleRows];
  v8 = [bundleRows countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(bundleRows);
        }

        v12 = [(COSSystemAppsSettingsManager *)self _systemAppSpecifierDictForBundleRow:*(*(&v13 + 1) + 8 * v11)];
        if (v12)
        {
          [v6 addObject:v12];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [bundleRows countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  [(COSSystemAppsSettingsManager *)self setSystemAppsSpecifiersBundleDicts:v6];
}

- (void)_notifyThatFullSpecifierDictListIsLoaded
{
  systemAppsSpecifiersBundleDicts = [(COSSystemAppsSettingsManager *)self systemAppsSpecifiersBundleDicts];
  v4 = [systemAppsSpecifiersBundleDicts copy];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000F16C;
  v6[3] = &unk_100268358;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(&_dispatch_main_q, v6);
}

- (COSSystemAppsSettingsManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (COSSystemAppsSettingsManager)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v13.receiver = self;
  v13.super_class = COSSystemAppsSettingsManager;
  v5 = [(COSSystemAppsSettingsManager *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v8 = dispatch_queue_create("com.apple.Bridge.systemapploading", v7);
    bundleLoadingQueue = v6->_bundleLoadingQueue;
    v6->_bundleLoadingQueue = v8;

    v10 = [[COSApplicationsInstallStateProvider alloc] initWithDelegate:v6];
    appsInstallStateManager = v6->_appsInstallStateManager;
    v6->_appsInstallStateManager = v10;

    [(COSSystemAppsSettingsManager *)v6 _loadSystemAppSettings];
  }

  return v6;
}

- (void)buildSystemAppSettings
{
  bundleLoadingQueue = [(COSSystemAppsSettingsManager *)self bundleLoadingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011D3E4;
  block[3] = &unk_1002682F0;
  block[4] = self;
  dispatch_async(bundleLoadingQueue, block);
}

- (void)_setUpBundleRows:(id)rows
{
  rowsCopy = rows;
  v5 = objc_opt_new();
  [(COSSystemAppsSettingsManager *)self setBundleRows:v5];

  v6 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = rowsCopy;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        v13 = [COSSystemAppSettingsBundleRow alloc];
        v14 = [v7 objectForKeyedSubscript:{v12, v17}];
        v15 = [(COSSystemAppSettingsBundleRow *)v13 initWithBundle:v14 name:v12];

        [(COSSystemAppsSettingsManager *)self _addRequiredWatchAppsToMapping:v15];
        [(COSSystemAppSettingsBundleRow *)v15 setAreRequiredWatchAppsInstalled:v6];
        bundleRows = [(COSSystemAppsSettingsManager *)self bundleRows];
        [bundleRows addObject:v15];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }
}

- (void)_recheckInstallStateForAllBundleRows
{
  v3 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  bundleRows = [(COSSystemAppsSettingsManager *)self bundleRows];
  v5 = [bundleRows countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(bundleRows);
        }

        [*(*(&v9 + 1) + 8 * v8) setAreRequiredWatchAppsInstalled:v3];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [bundleRows countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_addRequiredWatchAppsToMapping:(id)mapping
{
  mappingCopy = mapping;
  requiredInstalledWatchApps = [mappingCopy requiredInstalledWatchApps];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [requiredInstalledWatchApps countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(requiredInstalledWatchApps);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        watchBundleIDToBundleRowMapping = [(COSSystemAppsSettingsManager *)self watchBundleIDToBundleRowMapping];

        if (!watchBundleIDToBundleRowMapping)
        {
          v12 = objc_opt_new();
          [(COSSystemAppsSettingsManager *)self setWatchBundleIDToBundleRowMapping:v12];
        }

        watchBundleIDToBundleRowMapping2 = [(COSSystemAppsSettingsManager *)self watchBundleIDToBundleRowMapping];
        v14 = [watchBundleIDToBundleRowMapping2 objectForKeyedSubscript:v10];
        v15 = v14;
        if (v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = objc_opt_new();
        }

        v17 = v16;

        if (([v17 containsObject:mappingCopy] & 1) == 0)
        {
          [v17 addObject:mappingCopy];
          watchBundleIDToBundleRowMapping3 = [(COSSystemAppsSettingsManager *)self watchBundleIDToBundleRowMapping];
          [watchBundleIDToBundleRowMapping3 setObject:v17 forKeyedSubscript:v10];
        }
      }

      v7 = [requiredInstalledWatchApps countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }
}

- (id)_systemAppSpecifierDictForBundleRow:(id)row
{
  rowCopy = row;
  if ([rowCopy requiredAppsInstalled])
  {
    settingsBundleDict = [rowCopy settingsBundleDict];
  }

  else
  {
    settingsBundleDict = 0;
  }

  return settingsBundleDict;
}

- (void)_notifyThatSpecifiersShouldBeRemoved:(id)removed
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10011D990;
  v4[3] = &unk_100268358;
  v4[4] = self;
  removedCopy = removed;
  v3 = removedCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)watchAppsChangedForBundleRows:(id)rows installed:(BOOL)installed
{
  rowsCopy = rows;
  bundleLoadingQueue = [(COSSystemAppsSettingsManager *)self bundleLoadingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011DAA0;
  block[3] = &unk_10026B130;
  v10 = rowsCopy;
  selfCopy = self;
  installedCopy = installed;
  v8 = rowsCopy;
  dispatch_async(bundleLoadingQueue, block);
}

- (BOOL)_shouldReloadChangedRow:(id)row installed:(BOOL)installed activeDevice:(id)device
{
  installedCopy = installed;
  rowCopy = row;
  deviceCopy = device;
  requiredAppsInstalled = [rowCopy requiredAppsInstalled];
  [rowCopy setAreRequiredWatchAppsInstalled:deviceCopy];

  if (requiredAppsInstalled != [rowCopy requiredAppsInstalled] && objc_msgSend(rowCopy, "requiredAppsInstalled") == installedCopy)
  {
    v11 = pbb_bridge_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [rowCopy identifier];
      v13 = identifier;
      v14 = @"uninstalled";
      if (installedCopy)
      {
        v14 = @"installed";
      }

      v16 = 138412546;
      v17 = identifier;
      v18 = 2112;
      v19 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Watch app corresponding with this dependent row %@ has been %@, flagging row for reload", &v16, 0x16u);
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end