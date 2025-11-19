@interface STStorageUsagePlugin
- (BOOL)isAutoDemoteEnabled;
- (STStorageUsagePlugin)init;
- (id)tips;
- (id)tvUsageBundleApp;
- (int64_t)hlsSize:(id *)a3;
- (void)dealloc;
- (void)enableOptionForTip:(id)a3;
- (void)setAutoDemoteEnabled:(BOOL)a3;
- (void)updateOtherDataSize:(id)a3;
@end

@implementation STStorageUsagePlugin

- (STStorageUsagePlugin)init
{
  v5.receiver = self;
  v5.super_class = STStorageUsagePlugin;
  v2 = [(STStorageUsagePlugin *)&v5 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"updateOtherDataSize:" name:STStorageOtherDataSizeChangedNotification object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:STStorageOtherDataSizeChangedNotification object:0];

  v4.receiver = self;
  v4.super_class = STStorageUsagePlugin;
  [(STStorageUsagePlugin *)&v4 dealloc];
}

- (void)setAutoDemoteEnabled:(BOOL)a3
{
  v3 = &kCFBooleanTrue;
  if (!a3)
  {
    v3 = &kCFBooleanFalse;
  }

  CFPreferencesSetValue(@"OffloadUnusedApps", *v3, @"com.apple.appstored", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
}

- (BOOL)isAutoDemoteEnabled
{
  v2 = CFPreferencesCopyValue(@"OffloadUnusedApps", @"com.apple.appstored", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  v3 = [v2 BOOLValue];

  return v3;
}

- (id)tvUsageBundleApp
{
  if (!self->_tvReporter)
  {
    v3 = [NSURL fileURLWithPath:@"/System/Library/UsageBundles/VideosUsage.bundle"];
    v4 = [NSBundle bundleWithURL:v3];

    if (v4)
    {
      v5 = objc_alloc_init([v4 principalClass]);
      tvReporter = self->_tvReporter;
      self->_tvReporter = v5;

      v7 = self->_tvReporter;
      if (v7)
      {
        v8 = [(PSStorageReporting *)v7 usageBundleApps];
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v18;
          do
          {
            v12 = 0;
            do
            {
              if (*v18 != v11)
              {
                objc_enumerationMutation(v8);
              }

              [*(*(&v17 + 1) + 8 * v12) setUsageBundleStorageReporter:self->_tvReporter];
              v12 = v12 + 1;
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
          }

          while (v10);
        }

        v13 = [v8 firstObject];
        tvUsageBundleApp = self->_tvUsageBundleApp;
        self->_tvUsageBundleApp = v13;
      }
    }
  }

  v15 = self->_tvUsageBundleApp;

  return v15;
}

- (int64_t)hlsSize:(id *)a3
{
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  +[NSMutableArray array];
  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_1AE8;
  v27 = &unk_82D8;
  v4 = v29 = &v35;
  v28 = v4;
  v30 = &v31;
  CacheManagementEnumerateAssets();
  v5 = [v4 count];
  if (v5)
  {
    [v4 sortUsingComparator:&stru_8318];
    if (v5 >= 0xB)
    {
      [v4 removeObjectsInRange:{10, v5 - 10}];
    }

    v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v39 count:16];
    if (v7)
    {
      v8 = *v21;
      do
      {
        v9 = 0;
        do
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v20 + 1) + 8 * v9);
          v11 = objc_alloc_init(STStorageActionTipItem);
          [v11 setSize:{objc_msgSend(v10, "size", v20)}];
          v12 = [v10 consumedDate];
          [v11 setLastUsedDate:v12];

          [v5 addObject:v11];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v20 objects:v39 count:16];
      }

      while (v7);
    }
  }

  v13 = v5;
  *a3 = v5;
  v14 = v36[3];
  v15 = v32[3];
  v16 = v14 <= v15;
  v17 = v14 - v15;
  if (v16)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);
  return v18;
}

- (id)tips
{
  v3 = +[NSMutableArray array];
  if (qword_C7A8 != -1)
  {
    sub_2A78();
  }

  v4 = [qword_C7A0 ams_activeiTunesAccount];
  v5 = [v4 isActive];

  if (v5 && ![(STStorageUsagePlugin *)self isAutoDemoteEnabled])
  {
    v6 = objc_alloc_init(STStorageOptionTip);
    offloadAppsTip = self->_offloadAppsTip;
    self->_offloadAppsTip = v6;

    [(STStorageOptionTip *)self->_offloadAppsTip setIdentifier:@"autoUnloadApps"];
    v8 = STStorageLocStr(@"OPTIMIZE_APPS");
    [(STStorageOptionTip *)self->_offloadAppsTip setTitle:v8];

    v9 = STStorageLocStr(@"OPTIMIZE_APPS_INFO");
    [(STStorageOptionTip *)self->_offloadAppsTip setInfoText:v9];

    [(STStorageOptionTip *)self->_offloadAppsTip setRepresentedApp:@"com.apple.AppStore"];
    [(STStorageOptionTip *)self->_offloadAppsTip setDelegate:self];
    v10 = objc_opt_new();
    [v10 setVolume:@"/private/var"];
    [v10 setUrgency:3];
    v11 = [[ASDPurgeableAppRequest alloc] initWithOptions:v10];
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_22A4;
    v50[3] = &unk_8340;
    v50[4] = self;
    [v11 startWithCompletionBlock:v50];
    [v3 addObject:self->_offloadAppsTip];
  }

  v49 = 0;
  v12 = [(STStorageUsagePlugin *)self hlsSize:&v49];
  v13 = v49;
  if (v12)
  {
    v14 = objc_alloc_init(STStorageActionTip);
    hlsReviewTip = self->_hlsReviewTip;
    self->_hlsReviewTip = v14;

    [(STStorageActionTip *)self->_hlsReviewTip setIdentifier:@"hlsVideos"];
    v16 = STStorageLocStr(@"REVIEW_VIDEOS");
    [(STStorageActionTip *)self->_hlsReviewTip setTitle:v16];

    v17 = STStorageLocStr(@"REVIEW_VIDEOS_INFO");
    [(STStorageActionTip *)self->_hlsReviewTip setInfoText:v17];

    [(STStorageActionTip *)self->_hlsReviewTip setDetailControllerClass:NSClassFromString(@"STStorageHLSController")];
    [(STStorageActionTip *)self->_hlsReviewTip setSize:v12];
    v18 = [UIImage systemImageNamed:@"film"];
    v19 = +[UIColor systemGray3Color];
    v20 = [v18 imageWithTintColor:v19 renderingMode:1];
    [(STStorageActionTip *)self->_hlsReviewTip setIcon:v20];

    if ([v13 count])
    {
      [(STStorageActionTip *)self->_hlsReviewTip setSignificantItems:v13];
    }

    [v3 addObject:self->_hlsReviewTip];
  }

  v21 = [(STStorageUsagePlugin *)self tvUsageBundleApp];
  [v21 totalSize];
  v23 = v22;
  if (v22)
  {
    v24 = objc_alloc_init(STStorageActionTip);
    tvReviewTip = self->_tvReviewTip;
    self->_tvReviewTip = v24;

    [(STStorageActionTip *)self->_tvReviewTip setIdentifier:@"iTunesVideos"];
    v26 = MGGetBoolAnswer();
    v27 = v26 == 0;
    if (v26)
    {
      v28 = @"REVIEW_VIDEOS";
    }

    else
    {
      v28 = @"REVIEW_TV";
    }

    if (v27)
    {
      v29 = @"REVIEW_TV_INFO";
    }

    else
    {
      v29 = @"REVIEW_VIDEOS_INFO";
    }

    v30 = STStorageLocStr(v28);
    [(STStorageActionTip *)self->_tvReviewTip setTitle:v30];

    v31 = STStorageLocStr(v29);
    [(STStorageActionTip *)self->_tvReviewTip setInfoText:v31];

    v32 = objc_opt_class();
    tvReporter = self->_tvReporter;
    if (objc_opt_respondsToSelector())
    {
      v32 = [(PSStorageReporting *)self->_tvReporter usageDetailControllerClassForUsageBundleApp:self->_tvUsageBundleApp];
    }

    [(STStorageActionTip *)self->_tvReviewTip setDetailControllerClass:v32];
    [(STStorageActionTip *)self->_tvReviewTip setRepresentedApp:@"com.apple.tv"];
    [(STStorageActionTip *)self->_tvReviewTip setSize:v23];
    v34 = [(STStorageActionTip *)self->_tvReviewTip specifier];
    [v34 setProperty:@"com.apple.VideoUsage" forKey:PSIDKey];
    [v34 setProperty:self->_tvUsageBundleApp forKey:@"USAGE_BUNDLE_APP"];
    [v3 addObject:self->_tvReviewTip];
  }

  v35 = +[STStorageMediaMonitor sharedMonitor];
  if (![v35 isAsynchronouslyLoaded] || !STStorageIsInternalInstall() || !-[NSNumber longLongValue](self->_othersDataSize, "longLongValue"))
  {

    goto LABEL_26;
  }

  if ([(NSNumber *)self->_othersDataSize longLongValue]<= 0xEFFFFFFFFLL)
  {
    v37 = [(NSNumber *)self->_othersDataSize longLongValue];

    if (v37 >= 10485761)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  v38 = objc_alloc_init(STStorageOptionTip);
  ttrActionTip = self->_ttrActionTip;
  self->_ttrActionTip = v38;

  [(STStorageOptionTip *)self->_ttrActionTip setIdentifier:@"_LARGE_SYSTEM_DATA_"];
  v40 = [(NSNumber *)self->_othersDataSize longLongValue];
  v41 = @"Large";
  if (v40 < 10485761)
  {
    v41 = @"Low";
  }

  v42 = [NSString stringWithFormat:@"%@ System Data", v41];
  [(STStorageOptionTip *)self->_ttrActionTip setTitle:v42];

  v43 = [(NSNumber *)self->_othersDataSize longLongValue];
  v44 = @"larger";
  if (v43 < 10485761)
  {
    v44 = @"lower";
  }

  othersDataSize = self->_othersDataSize;
  v46 = v44;
  [(NSNumber *)othersDataSize longLongValue];
  v47 = STFormattedSize();
  v48 = [NSString stringWithFormat:@"The System data takes %@. This is %@ than expected. Please file a Radar to report this issue.", v47, v46];

  [(STStorageOptionTip *)self->_ttrActionTip setInfoText:v48];
  [(STStorageOptionTip *)self->_ttrActionTip setDelegate:self];
  [(STStorageOptionTip *)self->_ttrActionTip setImmediateGain:0];
  [(STStorageOptionTip *)self->_ttrActionTip setSize:0];
  [(STStorageOptionTip *)self->_ttrActionTip setRepresentedApp:@"com.apple.TapToRadar"];
  [(STStorageOptionTip *)self->_ttrActionTip setEnableButtonTitle:@"Tap-to-Radar"];
  [(STStorageOptionTip *)self->_ttrActionTip setConfirmationText:@"This will generate a radar with a disk space report attached. It may take up to 10 minutes to prepare.\n\nWould you like to proceed?"];
  [(STStorageOptionTip *)self->_ttrActionTip setConfirmationButtonTitle:@"OK"];
  [v3 addObject:self->_ttrActionTip];
LABEL_26:

  return v3;
}

- (void)enableOptionForTip:(id)a3
{
  v4 = a3;
  v5 = STSharedSerialQueue();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_23C8;
  v7[3] = &unk_8390;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)updateOtherDataSize:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:STStorageOtherDataSizeKey];
  othersDataSize = self->_othersDataSize;
  self->_othersDataSize = v5;

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 postNotificationName:STStoragePluginReloadTipsNotification object:self];
}

@end