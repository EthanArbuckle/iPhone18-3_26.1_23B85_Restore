@interface SODaemonKerberosSettingsManager
- (SODaemonKerberosSettingsManager)initWithConfigurationHost:(id)host settingsManager:(id)manager;
- (void)configurationChanged:(id)changed;
- (void)dealloc;
- (void)listenForConfigurationChanges;
- (void)saveKerberosValuesForPlugins;
@end

@implementation SODaemonKerberosSettingsManager

- (SODaemonKerberosSettingsManager)initWithConfigurationHost:(id)host settingsManager:(id)manager
{
  hostCopy = host;
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = SODaemonKerberosSettingsManager;
  v9 = [(SODaemonKerberosSettingsManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configurationHost, host);
    objc_storeStrong(&v10->_settingsManager, manager);
    v10->_observingConfigurationChanges = 0;
  }

  return v10;
}

- (void)listenForConfigurationChanges
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"configurationChanged:" name:SONotificationConfigurationChanged object:0];

  self->_observingConfigurationChanges = 1;
}

- (void)dealloc
{
  if (self->_observingConfigurationChanges)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self];
  }

  v4.receiver = self;
  v4.super_class = SODaemonKerberosSettingsManager;
  [(SODaemonKerberosSettingsManager *)&v4 dealloc];
}

- (void)configurationChanged:(id)changed
{
  v4 = sub_100001818();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[SODaemonKerberosSettingsManager configurationChanged:]";
    v9 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v5 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000185C;
  block[3] = &unk_1000103F0;
  block[4] = self;
  dispatch_async(v5, block);
}

- (void)saveKerberosValuesForPlugins
{
  v3 = sub_100001818();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "[SODaemonKerberosSettingsManager saveKerberosValuesForPlugins]";
    v16 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  [(SOKerberosSettingsManager *)self->_settingsManager createKerberosSettingsCache];
  v4 = [(SOConfigurationHost *)self->_configurationHost profilesWithExtensionBundleIdentifier:@"com.apple.AppSSOKerberos.KerberosExtension"];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [(SOKerberosSettingsManager *)self->_settingsManager saveKerberosValuesForProfile:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

@end