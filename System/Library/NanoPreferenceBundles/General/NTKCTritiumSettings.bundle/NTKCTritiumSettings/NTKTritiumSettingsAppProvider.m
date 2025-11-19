@interface NTKTritiumSettingsAppProvider
+ (id)displayNameForWatchApp:(id)a3;
+ (void)enumerateInstalledApplicationsOnPairedDeviceWithBlock:(id)a3;
+ (void)loadAppsWithCompletion:(id)a3;
@end

@implementation NTKTritiumSettingsAppProvider

+ (void)loadAppsWithCompletion:(id)a3
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1170;
  v6[3] = &unk_8320;
  v8 = a3;
  v9 = a1;
  v7 = objc_opt_new();
  v4 = v7;
  v5 = v8;
  [a1 enumerateInstalledApplicationsOnPairedDeviceWithBlock:v6];
}

+ (void)enumerateInstalledApplicationsOnPairedDeviceWithBlock:(id)a3
{
  v4 = a3;
  v5 = +[CLKDevice currentDevice];
  v6 = [v5 supportsPDRCapability:486198456];
  v7 = [v5 pdrDevice];
  v8 = [v7 pairingID];

  v9 = _NTKLoggingObjectForDomain();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v10)
    {
      v12 = 138412290;
      v13 = a1;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%@ enumerateInstalledApplicationsOnPairedDeviceWithBlock: Device supports standalone apps", &v12, 0xCu);
    }

    v11 = +[ACXDeviceConnection sharedDeviceConnection];
    [v11 enumerateInstalledApplicationsOnDeviceWithPairingID:v8 withBlock:v4];
  }

  else
  {
    if (v10)
    {
      v12 = 138412290;
      v13 = a1;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%@ enumerateInstalledApplicationsOnPairedDeviceWithBlock: Device does not use standalone apps - using legacy call", &v12, 0xCu);
    }

    v11 = +[ACXDeviceConnection sharedDeviceConnection];
    [v11 enumerateLocallyAvailableApplicationsForDeviceWithPairingID:v8 options:1 withBlock:v4];
  }
}

+ (id)displayNameForWatchApp:(id)a3
{
  v3 = a3;
  v4 = _kCFBundleDisplayNameKey;
  v5 = [NSSet setWithObjects:kCFBundleNameKey, _kCFBundleDisplayNameKey, 0];
  v6 = +[NSLocale preferredLanguages];
  v7 = [v3 localizedInfoPlistStringsForKeys:v5 fetchingFirstMatchingLocalizationInList:v6];

  v8 = [v7 objectForKeyedSubscript:v4];

  v9 = v7;
  if (v8)
  {
    v10 = v4;
LABEL_5:
    v12 = [v9 objectForKeyedSubscript:v10];
    goto LABEL_6;
  }

  v11 = [v7 objectForKeyedSubscript:kCFBundleNameKey];

  if (v11)
  {
    v9 = v7;
    v10 = kCFBundleNameKey;
    goto LABEL_5;
  }

  v12 = [v3 applicationName];
LABEL_6:
  v13 = v12;

  return v13;
}

@end