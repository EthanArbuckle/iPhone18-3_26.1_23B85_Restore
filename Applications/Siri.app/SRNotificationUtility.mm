@interface SRNotificationUtility
+ (BOOL)_hasInexpensiveNetwork;
+ (id)_deviceSpecificStringForDefaultString:(id)string;
+ (id)_downloadAssetsNotificationRequest;
+ (id)_downloadSiriAdvancedFeaturesAssetsNotificationRequest;
+ (id)_siriUnvailableNotificationRequest;
+ (void)_postNotificationRequest:(id)request notificationCenter:(id)center destinations:(unint64_t)destinations;
+ (void)postSiriAdvancedFeaturesAssetsDownloadNotification;
+ (void)postSiriUnavailableNotification:(unint64_t)notification;
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
  v6 = [self _deviceSpecificStringForDefaultString:@"ASSISTANT_NO_NETWORK_SUBTITLE_NOTIFICATION"];
  v7 = +[UIDevice currentDevice];
  sf_isChinaRegionCellularDevice = [v7 sf_isChinaRegionCellularDevice];

  v9 = +[SRUIFCachedPreferences sharedInstance];
  assetsNeedSpace = [v9 assetsNeedSpace];

  if (assetsNeedSpace)
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

  else if (([self _hasInexpensiveNetwork] & 1) != 0 || (+[SRUIFCachedPreferences sharedInstance](SRUIFCachedPreferences, "sharedInstance"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "assetsDownloading"), v13, v14))
  {
    v15 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      _hasInexpensiveNetwork = [self _hasInexpensiveNetwork];
      v18 = +[SRUIFCachedPreferences sharedInstance];
      v24 = 136315650;
      v25 = "+[SRNotificationUtility _siriUnvailableNotificationRequest]";
      v26 = 1024;
      v27 = _hasInexpensiveNetwork;
      v28 = 1024;
      assetsDownloading = [v18 assetsDownloading];
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

    if (sf_isChinaRegionCellularDevice)
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

+ (id)_deviceSpecificStringForDefaultString:(id)string
{
  stringCopy = string;
  v4 = [NSBundle bundleWithIdentifier:@"com.apple.siri"];
  v5 = [SiriUIUtilities deviceSpecificKeyForDefaultKey:stringCopy];

  v6 = [v4 siriUILocalizedStringForKey:v5];

  return v6;
}

+ (void)postSiriUnavailableNotification:(unint64_t)notification
{
  _siriUnvailableNotificationRequest = [self _siriUnvailableNotificationRequest];
  _userNotificationCenter = [self _userNotificationCenter];
  [self _postNotificationRequest:_siriUnvailableNotificationRequest notificationCenter:_userNotificationCenter destinations:notification];
}

+ (void)_postNotificationRequest:(id)request notificationCenter:(id)center destinations:(unint64_t)destinations
{
  requestCopy = request;
  centerCopy = center;
  [requestCopy setDestinations:destinations];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10008D324;
  v10[3] = &unk_100166E80;
  v11 = requestCopy;
  v9 = requestCopy;
  [centerCopy addNotificationRequest:v9 withCompletionHandler:v10];
}

+ (id)_downloadAssetsNotificationRequest
{
  v3 = [NSBundle bundleWithIdentifier:@"com.apple.siri"];
  v4 = objc_alloc_init(UNMutableNotificationContent);
  v5 = [v3 siriUILocalizedStringForKey:@"DOWNLOAD_ASSETS_TITLE"];
  [v4 setTitle:v5];

  v6 = [self _deviceSpecificStringForDefaultString:@"DOWNLOAD_ASSETS_SUBTITLE_NOTIFICATION"];
  v7 = [v3 siriUILocalizedStringForKey:v6];
  [v4 setBody:v7];

  v8 = [NSURL URLWithString:@"prefs:root=SIRI"];
  [v4 setDefaultActionURL:v8];

  v9 = [UNNotificationRequest requestWithIdentifier:@"com.apple.siri.notification.downloadassets" content:v4 trigger:0];

  return v9;
}

+ (void)postStorageLowNotification
{
  _downloadAssetsNotificationRequest = [self _downloadAssetsNotificationRequest];
  _userNotificationCenter = [self _userNotificationCenter];
  [self _postNotificationRequest:_downloadAssetsNotificationRequest notificationCenter:_userNotificationCenter destinations:7];
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
  path = [v2 path];

  if ([path status] == 1)
  {
    v4 = [path isExpensive] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

+ (void)postSiriAdvancedFeaturesAssetsDownloadNotification
{
  _downloadSiriAdvancedFeaturesAssetsNotificationRequest = [self _downloadSiriAdvancedFeaturesAssetsNotificationRequest];
  _userNotificationCenter = [self _userNotificationCenter];
  [self _postNotificationRequest:_downloadSiriAdvancedFeaturesAssetsNotificationRequest notificationCenter:_userNotificationCenter destinations:7];
}

@end