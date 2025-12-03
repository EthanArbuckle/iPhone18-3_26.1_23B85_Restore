@interface NTKTritiumSettingsAppProvider
+ (id)displayNameForWatchApp:(id)app;
+ (void)enumerateInstalledApplicationsOnPairedDeviceWithBlock:(id)block;
+ (void)loadAppsWithCompletion:(id)completion;
@end

@implementation NTKTritiumSettingsAppProvider

+ (void)loadAppsWithCompletion:(id)completion
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1170;
  v6[3] = &unk_8320;
  completionCopy = completion;
  selfCopy = self;
  v7 = objc_opt_new();
  v4 = v7;
  v5 = completionCopy;
  [self enumerateInstalledApplicationsOnPairedDeviceWithBlock:v6];
}

+ (void)enumerateInstalledApplicationsOnPairedDeviceWithBlock:(id)block
{
  blockCopy = block;
  v5 = +[CLKDevice currentDevice];
  v6 = [v5 supportsPDRCapability:486198456];
  pdrDevice = [v5 pdrDevice];
  pairingID = [pdrDevice pairingID];

  v9 = _NTKLoggingObjectForDomain();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v10)
    {
      v12 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%@ enumerateInstalledApplicationsOnPairedDeviceWithBlock: Device supports standalone apps", &v12, 0xCu);
    }

    v11 = +[ACXDeviceConnection sharedDeviceConnection];
    [v11 enumerateInstalledApplicationsOnDeviceWithPairingID:pairingID withBlock:blockCopy];
  }

  else
  {
    if (v10)
    {
      v12 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%@ enumerateInstalledApplicationsOnPairedDeviceWithBlock: Device does not use standalone apps - using legacy call", &v12, 0xCu);
    }

    v11 = +[ACXDeviceConnection sharedDeviceConnection];
    [v11 enumerateLocallyAvailableApplicationsForDeviceWithPairingID:pairingID options:1 withBlock:blockCopy];
  }
}

+ (id)displayNameForWatchApp:(id)app
{
  appCopy = app;
  v4 = _kCFBundleDisplayNameKey;
  v5 = [NSSet setWithObjects:kCFBundleNameKey, _kCFBundleDisplayNameKey, 0];
  v6 = +[NSLocale preferredLanguages];
  v7 = [appCopy localizedInfoPlistStringsForKeys:v5 fetchingFirstMatchingLocalizationInList:v6];

  v8 = [v7 objectForKeyedSubscript:v4];

  v9 = v7;
  if (v8)
  {
    v10 = v4;
LABEL_5:
    applicationName = [v9 objectForKeyedSubscript:v10];
    goto LABEL_6;
  }

  v11 = [v7 objectForKeyedSubscript:kCFBundleNameKey];

  if (v11)
  {
    v9 = v7;
    v10 = kCFBundleNameKey;
    goto LABEL_5;
  }

  applicationName = [appCopy applicationName];
LABEL_6:
  v13 = applicationName;

  return v13;
}

@end