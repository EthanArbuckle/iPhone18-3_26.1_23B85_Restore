@interface SRNotificationUtility
+ (BOOL)_hasInexpensiveNetwork;
+ (id)_deviceSpecificStringForDefaultString:(id)a3;
+ (id)_downloadAssetsNotificationRequest;
+ (id)_downloadSiriAdvancedFeaturesAssetsNotificationRequest;
+ (id)_siriUnvailableNotificationRequest;
+ (void)_postNotificationRequest:(id)a3 notificationCenter:(id)a4 destinations:(unint64_t)a5;
+ (void)postSiriAdvancedFeaturesAssetsDownloadNotification;
+ (void)postSiriUnavailableNotification:(unint64_t)a3;
+ (void)postStorageLowNotification;
@end

@implementation SRNotificationUtility

+ (id)_siriUnvailableNotificationRequest
{
  v3 = [NSBundle bundleWithIdentifier:@"com.apple.siri"];
  v4 = objc_alloc_init(UNMutableNotificationContent);
  v5 = [v3 siriUILocalizedStringForKey:@"ASSISTANT_NOT_AVAILABLE_TITLE"];
  [v4 setTitle:v5];

  [v4 setShouldSuppressDefaultAction:1];
  [v4 setShouldIgnoreDoNotDisturb:1];
  v6 = [a1 _deviceSpecificStringForDefaultString:@"ASSISTANT_NO_NETWORK_SUBTITLE_NOTIFICATION"];
  v7 = +[UIDevice currentDevice];
  v8 = [v7 sf_isChinaRegionCellularDevice];

  v9 = +[SRUIFCachedPreferences sharedInstance];
  v10 = [v9 assetsNeedSpace];

  if (v10)
  {
    v11 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 136315138;
      v25 = "+[SRNotificationUtility _siriUnvailableNotificationRequest]";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Telling user they need more space", &v24, 0xCu);
    }

    v12 = @"ASSISTANT_NO_LOCAL_ASSETS_NO_SPACE_SUBTITLE_NOTIFICATION";
  }

  else if (([a1 _hasInexpensiveNetwork] & 1) != 0 || (+[SRUIFCachedPreferences sharedInstance](SRUIFCachedPreferences, "sharedInstance"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "assetsDownloading"), v13, v14))
  {
    v15 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = [a1 _hasInexpensiveNetwork];
      v18 = +[SRUIFCachedPreferences sharedInstance];
      v24 = 136315650;
      v25 = "+[SRNotificationUtility _siriUnvailableNotificationRequest]";
      v26 = 1024;
      v27 = v17;
      v28 = 1024;
      v29 = [v18 assetsDownloading];
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s Telling user we're downloading because inexpensive network: %{BOOL}d, assets downloading: %{BOOL}d", &v24, 0x18u);
    }

    v12 = @"ASSISTANT_NO_LOCAL_ASSETS_DOWNLOADING_SUBTITLE_NOTIFICATION";
  }

  else
  {
    v19 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 136315138;
      v25 = "+[SRNotificationUtility _siriUnvailableNotificationRequest]";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s Telling user they need to connect to WiFi", &v24, 0xCu);
    }

    if (v8)
    {
      v12 = @"ASSISTANT_NO_LOCAL_ASSETS_NO_WIFI_SUBTITLE_NOTIFICATION_CHINA";
    }

    else
    {
      v12 = @"ASSISTANT_NO_LOCAL_ASSETS_NO_WIFI_SUBTITLE_NOTIFICATION";
    }
  }

  v20 = [v3 siriUILocalizedStringForKey:v12];

  v21 = [NSURL URLWithString:@"prefs:root=SIRI"];
  [v4 setDefaultActionURL:v21];

  [v4 setHasDefaultAction:1];
  [v4 setBody:v20];
  v22 = [UNNotificationRequest requestWithIdentifier:@"com.apple.siri.notification.unavailablecontent" content:v4 trigger:0];

  return v22;
}

+ (id)_deviceSpecificStringForDefaultString:(id)a3
{
  v3 = a3;
  v4 = [NSBundle bundleWithIdentifier:@"com.apple.siri"];
  v5 = [SiriUIUtilities deviceSpecificKeyForDefaultKey:v3];

  v6 = [v4 siriUILocalizedStringForKey:v5];

  return v6;
}

+ (void)postSiriUnavailableNotification:(unint64_t)a3
{
  v6 = [a1 _siriUnvailableNotificationRequest];
  v5 = [a1 _userNotificationCenter];
  [a1 _postNotificationRequest:v6 notificationCenter:v5 destinations:a3];
}

+ (void)_postNotificationRequest:(id)a3 notificationCenter:(id)a4 destinations:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  [v7 setDestinations:a5];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10008D324;
  v10[3] = &unk_100166E80;
  v11 = v7;
  v9 = v7;
  [v8 addNotificationRequest:v9 withCompletionHandler:v10];
}

+ (id)_downloadAssetsNotificationRequest
{
  v3 = [NSBundle bundleWithIdentifier:@"com.apple.siri"];
  v4 = objc_alloc_init(UNMutableNotificationContent);
  v5 = [v3 siriUILocalizedStringForKey:@"DOWNLOAD_ASSETS_TITLE"];
  [v4 setTitle:v5];

  v6 = [a1 _deviceSpecificStringForDefaultString:@"DOWNLOAD_ASSETS_SUBTITLE_NOTIFICATION"];
  v7 = [v3 siriUILocalizedStringForKey:v6];
  [v4 setBody:v7];

  v8 = [NSURL URLWithString:@"prefs:root=SIRI"];
  [v4 setDefaultActionURL:v8];

  v9 = [UNNotificationRequest requestWithIdentifier:@"com.apple.siri.notification.downloadassets" content:v4 trigger:0];

  return v9;
}

+ (void)postStorageLowNotification
{
  v4 = [a1 _downloadAssetsNotificationRequest];
  v3 = [a1 _userNotificationCenter];
  [a1 _postNotificationRequest:v4 notificationCenter:v3 destinations:7];
}

+ (id)_downloadSiriAdvancedFeaturesAssetsNotificationRequest
{
  v2 = [NSBundle bundleWithIdentifier:@"com.apple.siri"];
  v3 = objc_alloc_init(UNMutableNotificationContent);
  v4 = [v2 siriUILocalizedStringForKey:@"DOWNLOAD_ASSETS_TITLE"];
  [v3 setTitle:v4];

  v5 = [v2 siriUILocalizedStringForKey:@"DOWNLOAD_ADVANCED_FEATURES_ASSETS_SUBTITLE_NOTIFICATION"];
  [v3 setBody:v5];

  v6 = [NSURL URLWithString:@"prefs:root=SIRI"];
  [v3 setDefaultActionURL:v6];

  v7 = [UNNotificationRequest requestWithIdentifier:@"com.apple.siri.notification.downloadassets" content:v3 trigger:0];

  return v7;
}

+ (BOOL)_hasInexpensiveNetwork
{
  v2 = +[NWPathEvaluator sharedDefaultEvaluator];
  v3 = [v2 path];

  if ([v3 status] == 1)
  {
    v4 = [v3 isExpensive] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

+ (void)postSiriAdvancedFeaturesAssetsDownloadNotification
{
  v4 = [a1 _downloadSiriAdvancedFeaturesAssetsNotificationRequest];
  v3 = [a1 _userNotificationCenter];
  [a1 _postNotificationRequest:v4 notificationCenter:v3 destinations:7];
}

@end