@interface COSApplicationsInstallStateProvider
- (COSApplicationsInstallStateProvider)initWithDelegate:(id)a3;
- (COSApplicationsInstallStateProviderDelegate)delegate;
- (void)_processChangedRows:(id)a3 installed:(BOOL)a4;
- (void)applicationsInstalled:(id)a3 onDeviceWithPairingID:(id)a4;
- (void)applicationsUninstalled:(id)a3 onDeviceWithPairingID:(id)a4;
- (void)dealloc;
@end

@implementation COSApplicationsInstallStateProvider

- (COSApplicationsInstallStateProvider)initWithDelegate:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = COSApplicationsInstallStateProvider;
  v5 = [(COSApplicationsInstallStateProvider *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
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

- (void)_processChangedRows:(id)a3 installed:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = pbb_bridge_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315650;
    v11 = "[COSApplicationsInstallStateProvider _processChangedRows:installed:]";
    v12 = 2112;
    v13 = v6;
    v14 = 1024;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s - changedRows %@, installed %{BOOL}d", &v10, 0x1Cu);
  }

  if ([v6 count])
  {
    v8 = [(COSApplicationsInstallStateProvider *)self delegate];
    [v8 watchAppsChangedForBundleRows:v6 installed:v4];
  }

  if (![v6 count] || !v4)
  {
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 postNotificationName:@"COSAppListChangedNotification" object:0];
  }
}

- (void)applicationsInstalled:(id)a3 onDeviceWithPairingID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
  v9 = [v8 pairingID];
  v10 = [v9 isEqual:v7];

  if (v10)
  {
    v21 = self;
    v11 = [(COSApplicationsInstallStateProvider *)self delegate];
    v12 = [v11 watchBundleIDToBundleRowMapping];

    v13 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v22 = v6;
    v14 = v6;
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

          v19 = [*(*(&v23 + 1) + 8 * v18) bundleIdentifier];
          v20 = [v12 objectForKey:v19];
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

    [(COSApplicationsInstallStateProvider *)v21 _processChangedRows:v13 installed:1];
    v6 = v22;
  }
}

- (void)applicationsUninstalled:(id)a3 onDeviceWithPairingID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
  v9 = [v8 pairingID];
  v10 = [v9 isEqual:v7];

  if (v10)
  {
    v20 = self;
    v11 = [(COSApplicationsInstallStateProvider *)self delegate];
    v12 = [v11 watchBundleIDToBundleRowMapping];

    v13 = objc_opt_new();
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = v6;
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

          v19 = [v12 objectForKey:*(*(&v21 + 1) + 8 * v18)];
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

    [(COSApplicationsInstallStateProvider *)v20 _processChangedRows:v13 installed:0];
  }
}

- (COSApplicationsInstallStateProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end