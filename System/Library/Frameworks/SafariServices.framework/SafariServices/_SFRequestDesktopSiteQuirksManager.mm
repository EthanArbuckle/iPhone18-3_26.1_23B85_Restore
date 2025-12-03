@interface _SFRequestDesktopSiteQuirksManager
+ (_SFRequestDesktopSiteQuirksManager)sharedManager;
- (_SFRequestDesktopSiteQuirksManager)init;
- (void)getAllQuirkValuesWithCompletionHandler:(id)handler;
- (void)quirksValueForDomain:(id)domain completionHandler:(id)handler;
@end

@implementation _SFRequestDesktopSiteQuirksManager

+ (_SFRequestDesktopSiteQuirksManager)sharedManager
{
  if (sharedManager_onceToken_3 != -1)
  {
    +[_SFRequestDesktopSiteQuirksManager sharedManager];
  }

  v3 = sharedManager_sharedQuirksManager;

  return v3;
}

- (_SFRequestDesktopSiteQuirksManager)init
{
  v19.receiver = self;
  v19.super_class = _SFRequestDesktopSiteQuirksManager;
  v2 = [(_SFRequestDesktopSiteQuirksManager *)&v19 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E69DB798]);
    sf_mobileSafariFrameworkBundle = [MEMORY[0x1E696AAE8] sf_mobileSafariFrameworkBundle];
    v5 = [v3 initWithName:@"RequestDesktopSiteQuirks" bundle:sf_mobileSafariFrameworkBundle];

    data = [v5 data];
    v2->_supportsDesktopClassBrowsing = [data length] != 0;

    if (v2->_supportsDesktopClassBrowsing)
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      safari_settingsDirectoryURL = [defaultManager safari_settingsDirectoryURL];

      v9 = objc_alloc(MEMORY[0x1E69C89E0]);
      v10 = objc_opt_class();
      v11 = objc_opt_class();
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __42___SFRequestDesktopSiteQuirksManager_init__block_invoke;
      v17[3] = &unk_1E8495F00;
      v18 = v5;
      v12 = [v9 initWithDataFormat:0 downloadsDirectoryURL:safari_settingsDirectoryURL resourceName:@"RequestDesktopSiteQuirks" resourceVersion:@"1" updateDateDefaultsKey:@"SFRequestDesktopSiteQuirksUpdateKey" updateInterval:v10 snapshotClass:86400.0 snapshotTransformerClass:v11 builtInDataProvider:v17];
      remotelyUpdatableDataController = v2->_remotelyUpdatableDataController;
      v2->_remotelyUpdatableDataController = v12;

      [(WBSRemotelyUpdatableDataController *)v2->_remotelyUpdatableDataController setShouldAttemptToUpdateConfiguration:1];
      v14 = v2;
    }

    else
    {
      v15 = v2;
    }
  }

  return v2;
}

- (void)quirksValueForDomain:(id)domain completionHandler:(id)handler
{
  domainCopy = domain;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (self->_supportsDesktopClassBrowsing)
  {
    remotelyUpdatableDataController = self->_remotelyUpdatableDataController;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __77___SFRequestDesktopSiteQuirksManager_quirksValueForDomain_completionHandler___block_invoke;
    v10[3] = &unk_1E8495F28;
    v12 = handlerCopy;
    v11 = domainCopy;
    [(WBSRemotelyUpdatableDataController *)remotelyUpdatableDataController accessSnapshotLoadingItIfNeeded:v10];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)getAllQuirkValuesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  if (self->_supportsDesktopClassBrowsing)
  {
    remotelyUpdatableDataController = self->_remotelyUpdatableDataController;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __77___SFRequestDesktopSiteQuirksManager_getAllQuirkValuesWithCompletionHandler___block_invoke;
    v7[3] = &unk_1E8495F50;
    v8 = handlerCopy;
    [(WBSRemotelyUpdatableDataController *)remotelyUpdatableDataController accessSnapshotLoadingItIfNeeded:v7];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x1E695E0F8]);
  }
}

@end