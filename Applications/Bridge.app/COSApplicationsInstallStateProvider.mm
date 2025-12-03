@interface COSApplicationsInstallStateProvider
- (COSApplicationsInstallStateProvider)initWithDelegate:(id)delegate;
- (COSApplicationsInstallStateProviderDelegate)delegate;
- (void)_processChangedRows:(id)rows installed:(BOOL)installed;
- (void)applicationsInstalled:(id)installed onDeviceWithPairingID:(id)d;
- (void)applicationsUninstalled:(id)uninstalled onDeviceWithPairingID:(id)d;
- (void)dealloc;
@end

@implementation COSApplicationsInstallStateProvider

- (COSApplicationsInstallStateProvider)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = COSApplicationsInstallStateProvider;
  v5 = [(COSApplicationsInstallStateProvider *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = +[ACXDeviceConnection sharedDeviceConnection];
    [v7 addObserver:v6];
  }

  return v6;
}

- (void)dealloc
{
  v3 = +[ACXDeviceConnection sharedDeviceConnection];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = COSApplicationsInstallStateProvider;
  [(COSApplicationsInstallStateProvider *)&v4 dealloc];
}

- (void)_processChangedRows:(id)rows installed:(BOOL)installed
{
  installedCopy = installed;
  rowsCopy = rows;
  v7 = pbb_bridge_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315650;
    v11 = "[COSApplicationsInstallStateProvider _processChangedRows:installed:]";
    v12 = 2112;
    v13 = rowsCopy;
    v14 = 1024;
    v15 = installedCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s - changedRows %@, installed %{BOOL}d", &v10, 0x1Cu);
  }

  if ([rowsCopy count])
  {
    delegate = [(COSApplicationsInstallStateProvider *)self delegate];
    [delegate watchAppsChangedForBundleRows:rowsCopy installed:installedCopy];
  }

  if (![rowsCopy count] || !installedCopy)
  {
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 postNotificationName:@"COSAppListChangedNotification" object:0];
  }
}

- (void)applicationsInstalled:(id)installed onDeviceWithPairingID:(id)d
{
  installedCopy = installed;
  dCopy = d;
  v8 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
  pairingID = [v8 pairingID];
  v10 = [pairingID isEqual:dCopy];

  if (v10)
  {
    selfCopy = self;
    delegate = [(COSApplicationsInstallStateProvider *)self delegate];
    watchBundleIDToBundleRowMapping = [delegate watchBundleIDToBundleRowMapping];

    v13 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v22 = installedCopy;
    v14 = installedCopy;
    v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v24;
      do
      {
        v18 = 0;
        do
        {
          if (*v24 != v17)
          {
            objc_enumerationMutation(v14);
          }

          bundleIdentifier = [*(*(&v23 + 1) + 8 * v18) bundleIdentifier];
          v20 = [watchBundleIDToBundleRowMapping objectForKey:bundleIdentifier];
          if (v20)
          {
            [v13 addObjectsFromArray:v20];
          }

          v18 = v18 + 1;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v16);
    }

    [(COSApplicationsInstallStateProvider *)selfCopy _processChangedRows:v13 installed:1];
    installedCopy = v22;
  }
}

- (void)applicationsUninstalled:(id)uninstalled onDeviceWithPairingID:(id)d
{
  uninstalledCopy = uninstalled;
  dCopy = d;
  v8 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
  pairingID = [v8 pairingID];
  v10 = [pairingID isEqual:dCopy];

  if (v10)
  {
    selfCopy = self;
    delegate = [(COSApplicationsInstallStateProvider *)self delegate];
    watchBundleIDToBundleRowMapping = [delegate watchBundleIDToBundleRowMapping];

    v13 = objc_opt_new();
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = uninstalledCopy;
    v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        v18 = 0;
        do
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [watchBundleIDToBundleRowMapping objectForKey:*(*(&v21 + 1) + 8 * v18)];
          if (v19)
          {
            [v13 addObjectsFromArray:v19];
          }

          v18 = v18 + 1;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v16);
    }

    [(COSApplicationsInstallStateProvider *)selfCopy _processChangedRows:v13 installed:0];
  }
}

- (COSApplicationsInstallStateProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end