@interface TPSAppDelegate
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (void)buildMenuWithBuilder:(id)a3;
- (void)clearBadgeCount;
- (void)resetCacheDefaults;
@end

@implementation TPSAppDelegate

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  v5 = [AVAudioSession sharedInstance:a3];
  [v5 setCategory:AVAudioSessionCategoryAmbient error:0];

  v6 = +[NSUserDefaults standardUserDefaults];
  [v6 registerDefaults:&off_1000A50F0];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 infoDictionary];
  v9 = [v8 objectForKey:@"CFBundleShortVersionString"];

  v10 = [v6 objectForKey:@"TipsAppLastLaunchedAppVersion"];
  LOBYTE(v8) = [v9 isEqualToString:v10];

  if ((v8 & 1) == 0)
  {
    v11 = +[TPSJSONCacheController sharedInstance];
    [v11 removeAllDataCache];

    [v6 removeObjectForKey:@"TPSJSONCacheIdentifier"];
    [v6 setObject:v9 forKey:@"TipsAppLastLaunchedAppVersion"];
    [v6 synchronize];
  }

  v12 = MGCopyAnswer();
  v13 = [v12 componentsSeparatedByString:@"."];
  v14 = [v13 firstObject];

  v15 = [v6 objectForKey:@"kTipsAppLastLaunchedMajorVersion"];
  v16 = +[TPSCommonDefines hardwareChanged];
  if (([v14 isEqualToString:v15] & 1) == 0)
  {
    [v6 setObject:v14 forKey:@"kTipsAppLastLaunchedMajorVersion"];
    [v6 removeObjectForKey:@"TPSAppLastDisplayedContent"];
    [v6 removeObjectForKey:@"TPSLastViewedTipIdentifier"];
    [v6 removeObjectForKey:@"TPSPreviousFeaturedTipIdentifier"];
    [v6 removeObjectForKey:@"TPSFeedLastModified"];
    [v6 removeObjectForKey:@"TPSLikedTipsList"];
    [v6 removeObjectForKey:@"TPSIntroShown"];
    [v6 removeObjectForKey:@"TPSLikeDictionaryKey"];
    [v6 removeObjectForKey:@"validPairedDevices"];
    [v6 removeObjectForKey:@"TPSLastVisibleTipsIDs"];
    [v6 removeObjectForKey:@"TPSLastViewedContentGroup"];
    [v6 removeObjectForKey:@"TPSImageCacheIdentifier"];
    [v6 removeObjectForKey:@"TPSVideoCacheIdentifier"];
    [v6 removeObjectForKey:@"TPSVisibilityForIdMap"];
    [v6 removeObjectForKey:@"TPSVisibleTimestampForIDMap"];
    [v6 removeObjectForKey:@"TPSTargetingVisibleTimestampForIDMap"];
    [v6 removeObjectForKey:@"TPSJSONCacheIdentifier"];
    v18 = +[TPSAnalyticsEventAppLaunched firstLaunchEvent];
    [v18 log];

    v19 = +[TPSAnalyticsChecklistSessionController sharedInstance];
    [v19 setIsFirstLaunch:1];

    if ((v16 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v16)
  {
    v17 = +[TPSAnalyticsChecklistSessionController sharedInstance];
    [v17 setIsFirstLaunch:0];

LABEL_7:
    [(TPSAppDelegate *)self resetCacheDefaults];
    goto LABEL_8;
  }

  if (+[TPSDefaultsManager resetDataCache])
  {
    goto LABEL_7;
  }

LABEL_8:
  [v6 synchronize];
  v20 = +[TPSLogger default];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    sub_10006A088(v20);
  }

  [(TPSAppDelegate *)self clearBadgeCount];
  return 1;
}

- (void)resetCacheDefaults
{
  +[TPSDataCacheController removeAllDataCache];
  v2 = +[TPSJSONCacheController sharedInstance];
  [v2 removeAllDataCache];

  v3 = +[TPSAssetCacheController sharedInstance];
  [v3 removeAllDataCache];
}

- (void)clearBadgeCount
{
  v2 = +[UNUserNotificationCenter currentNotificationCenter];
  [v2 setBadgeCount:0 withCompletionHandler:0];
}

- (void)buildMenuWithBuilder:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  TPSAppDelegate.buildMenu(with:)(a3);
  swift_unknownObjectRelease();
}

@end