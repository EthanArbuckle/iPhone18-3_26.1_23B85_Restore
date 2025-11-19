@interface AMSMappedBundleInfo
+ (AMSMappedBundleInfo)currentBundleInfo;
+ (BOOL)bundleIdentifierIsGames:(id)a3;
+ (id)_accountMediaTypeForClientName:(id)a3 bundleID:(id)a4;
+ (id)_clientNameFromProcessInfo:(id)a3;
+ (id)_clientVersionFromProcessInfo:(id)a3 clientName:(id)a4;
+ (id)bundleInfoForMobileAppStoreWithProcessInfo:(id)a3;
+ (id)bundleInfoForProcessInfo:(id)a3;
- (id)_initWithClient:(int64_t)a3 processInfo:(id)a4;
@end

@implementation AMSMappedBundleInfo

+ (BOOL)bundleIdentifierIsGames:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"com.apple.games"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"com.apple.GameOverlayUI"];
  }

  return v4;
}

+ (id)bundleInfoForProcessInfo:(id)a3
{
  v3 = a3;
  v4 = [v3 bundleIdentifier];
  v5 = [v4 lowercaseString];
  v6 = v5;
  v7 = &stru_1F071BA78;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [&unk_1F0779D80 objectForKeyedSubscript:v8];

  v10 = [v9 integerValue];
  v11 = [[AMSMappedBundleInfo alloc] _initWithClient:v10 processInfo:v3];

  return v11;
}

+ (AMSMappedBundleInfo)currentBundleInfo
{
  v3 = +[AMSProcessInfo currentProcess];
  v4 = [a1 bundleInfoForProcessInfo:v3];

  return v4;
}

+ (id)bundleInfoForMobileAppStoreWithProcessInfo:(id)a3
{
  v3 = a3;
  v4 = [[AMSMappedBundleInfo alloc] _initWithClient:2 processInfo:v3];

  return v4;
}

- (id)_initWithClient:(int64_t)a3 processInfo:(id)a4
{
  v6 = a4;
  v38.receiver = self;
  v38.super_class = AMSMappedBundleInfo;
  v7 = [(AMSMappedBundleInfo *)&v38 init];
  if (v7)
  {
    v8 = a3 - 1;
    v9 = 0;
    v10 = 0;
    v11 = @"macappstores";
    v12 = @"macappstore";
    v13 = @"3.0";
    v14 = @"MacAppStore";
    v15 = @"com.apple.AppStore";
    switch(v8)
    {
      case 0:
        v21 = 0;
        v19 = 0;
        v16 = 0;
        v17 = 0;
        v37 = 0;
        v10 = 1;
        LODWORD(v20) = 1;
        v18 = @"AppleTV";
        if (v6)
        {
          goto LABEL_35;
        }

        goto LABEL_7;
      case 1:
        v9 = 0;
        v13 = 0;
        v11 = @"itms-appss";
        v12 = @"itms-apps";
        v10 = 1;
        v14 = @"AppStore";
        goto LABEL_32;
      case 2:
        v9 = 0;
        v13 = 0;
        v11 = @"itms-bookss";
        v12 = @"itms-books";
        v10 = 1;
        v14 = @"iBooks";
        v15 = @"com.apple.iBooks";
        goto LABEL_32;
      case 3:
        v9 = 0;
        v13 = 0;
        v12 = 0;
        v11 = 0;
        v10 = 1;
        v14 = @"AMSFollowUpExtension";
        v15 = @"com.apple.AppleMediaServices.FollowUpExtension";
        goto LABEL_32;
      case 4:
        v9 = 0;
        v13 = 0;
        v12 = 0;
        v11 = 0;
        v10 = 1;
        v14 = @"itunesstored";
        v15 = @"com.apple.itunesstored";
        goto LABEL_32;
      case 5:
        v9 = 0;
        v13 = 0;
        v11 = @"itms-itunesus";
        v12 = @"itms-itunesu";
        v10 = 1;
        v14 = @"iTunesU";
        v15 = @"com.apple.itunesu";
        goto LABEL_32;
      case 6:
        v9 = 0;
        v13 = 0;
        v12 = 0;
        v11 = 0;
        v10 = 1;
        v14 = @"Maps";
        v15 = @"com.apple.Maps";
        goto LABEL_32;
      case 7:
        v9 = 0;
        v13 = 0;
        v12 = 0;
        v11 = 0;
        v10 = 1;
        v14 = @"matd";
        v15 = @"com.apple.WelcomeKit";
        goto LABEL_32;
      case 8:
        v9 = 0;
        v13 = 0;
        v12 = 0;
        v11 = 0;
        v10 = 1;
        v14 = @"Messages";
        v15 = @"com.apple.MobileSMS";
        goto LABEL_32;
      case 9:
        v9 = 0;
        v13 = 0;
        v11 = @"itmss";
        v12 = @"itms";
        v10 = 1;
        v14 = @"MobileStore";
        v15 = @"com.apple.MobileStore";
        goto LABEL_32;
      case 10:
        v9 = 0;
        v13 = 0;
        v11 = @"musics";
        v12 = @"music";
        goto LABEL_25;
      case 11:
      case 22:
        v9 = 0;
        v13 = 0;
        v12 = @"itms-podcasts";
        v10 = 1;
        v14 = @"Podcasts";
        v15 = @"com.apple.podcasts";
        goto LABEL_17;
      case 12:
        v9 = 0;
        v13 = 0;
        v12 = 0;
        v11 = 0;
        v10 = 1;
        v14 = @"StoreKitUIService";
        v15 = @"com.apple.StoreKitUIService";
        goto LABEL_32;
      case 13:
        v14 = 0;
        v13 = 0;
        v11 = @"its-videoss";
        v12 = @"its-videos";
        v9 = 1;
        v10 = 1;
        v15 = @"com.apple.videos";
        goto LABEL_32;
      case 14:
        v16 = 0;
        v17 = 0;
        v37 = 0;
        v18 = @"Watch";
        v10 = 1;
        v19 = @"itms-watch";
        LODWORD(v20) = 1;
        v21 = @"itms-watchs";
        if (!v6)
        {
          goto LABEL_7;
        }

        goto LABEL_35;
      case 15:
        v14 = 0;
        v13 = 0;
        v12 = @"fitnessapp";
        v9 = 1;
        v15 = @"com.apple.Fitness";
        v10 = 1;
        goto LABEL_17;
      case 16:
        v14 = 0;
        v13 = 0;
        v9 = 1;
        v15 = @"com.apple.tv";
        v10 = 1;
        v12 = @"com.apple.tv";
        v11 = @"com.apple.tv";
        goto LABEL_32;
      case 17:
      case 25:
        v9 = 0;
        v13 = 0;
        v11 = @"applenewss";
        v12 = @"applenews";
        v10 = 1;
        v14 = @"News";
        v15 = @"com.apple.news";
        goto LABEL_32;
      case 18:
        goto LABEL_32;
      case 19:
        v9 = 0;
        v13 = 0;
        v11 = @"itms-bookss";
        v12 = @"itms-books";
        v10 = 1;
        v14 = @"iBooks";
        v15 = @"com.apple.iBooksX";
        goto LABEL_32;
      case 20:
        v9 = 0;
        v13 = 0;
        v12 = 0;
        v11 = 0;
        v10 = 1;
        v14 = @"Configurator";
        v15 = @"com.apple.configurator.ui";
        goto LABEL_32;
      case 21:
        v9 = 0;
        v13 = 0;
        v11 = @"itmss";
        v12 = @"itms";
LABEL_25:
        v10 = 1;
        v14 = @"Music";
        v15 = @"com.apple.Music";
        goto LABEL_32;
      case 23:
        v9 = 0;
        v13 = 0;
        v12 = 0;
        v11 = 0;
        v10 = 1;
        v14 = @"StoreKitUIService";
        v15 = @"com.apple.StoreKit.UIService";
        goto LABEL_32;
      case 24:
        v9 = 0;
        v13 = 0;
        v12 = @"com.apple.tv";
        v10 = 1;
        v14 = @"TV";
        v15 = @"com.apple.TV";
LABEL_17:
        v11 = v12;
        goto LABEL_32;
      case 26:
        v9 = 0;
        v13 = 0;
        v10 = 1;
        v14 = @"iCloudQuota";
        v15 = @"com.apple.iCloudQuota.ICQFollowup";
LABEL_32:
        v22 = [v6 bundleIdentifier];
        v20 = [v22 compare:v15 options:1];

        v37 = v15;
        if (v20)
        {
          v23 = [[AMSProcessInfo alloc] initWithBundleIdentifier:v15];

          LODWORD(v20) = 0;
          v6 = v23;
        }

        v17 = v9;
        v19 = v12;
        v21 = v11;
        v16 = v13;
        v18 = v36;
        if (v6)
        {
          goto LABEL_35;
        }

        goto LABEL_7;
      default:
        v21 = 0;
        v19 = 0;
        v16 = 0;
        v18 = 0;
        v37 = 0;
        v10 = 1;
        v17 = 1;
        LODWORD(v20) = 1;
        if (v6)
        {
LABEL_35:
          if (!v20)
          {
            goto LABEL_37;
          }
        }

        else
        {
LABEL_7:
          v6 = +[AMSProcessInfo currentProcess];
          if (!v20)
          {
            goto LABEL_37;
          }
        }

        v37 = [v6 bundleIdentifier];
LABEL_37:
        bundleIdentifier = v7->_bundleIdentifier;
        v7->_bundleIdentifier = v37;

        if (v17)
        {
          v18 = [AMSMappedBundleInfo _clientNameFromProcessInfo:v6];
        }

        clientName = v7->_clientName;
        v7->_clientName = &v18->isa;

        if (v10)
        {
          v16 = [AMSMappedBundleInfo _clientVersionFromProcessInfo:v6 clientName:v7->_clientName];
        }

        clientVersion = v7->_clientVersion;
        v7->_clientVersion = v16;

        v27 = [AMSMappedBundleInfo _accountMediaTypeForClientName:v7->_clientName bundleID:v7->_bundleIdentifier];
        accountMediaType = v7->_accountMediaType;
        v7->_accountMediaType = v27;

        scheme = v7->_scheme;
        v7->_scheme = &v19->isa;

        secureScheme = v7->_secureScheme;
        v7->_secureScheme = &v21->isa;

        v31 = [v6 proxyAppBundleID];
        proxyAppBundleID = v7->_proxyAppBundleID;
        v7->_proxyAppBundleID = v31;

        v33 = [v6 userAgentSuffix];
        userAgentSuffix = v7->_userAgentSuffix;
        v7->_userAgentSuffix = v33;

        break;
    }
  }

  return v7;
}

+ (id)_accountMediaTypeForClientName:(id)a3 bundleID:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = AMSAccountMediaTypeProduction;
  if (_MergedGlobals_123 != -1)
  {
    dispatch_once(&_MergedGlobals_123, &__block_literal_global_76);
  }

  v9 = qword_1ED6E2DA8;
  objc_sync_enter(v9);
  if (v6 && ([v9 containsObject:v6] & 1) == 0)
  {
    [v9 addObject:v6];
    objc_sync_exit(v9);

    v10 = +[AMSLogConfig sharedAccountsConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromSelector(a2);
      v15 = 138544386;
      v16 = v12;
      v17 = 2114;
      v18 = v13;
      v19 = 2114;
      v20 = v7;
      v21 = 2114;
      v22 = v6;
      v23 = 2114;
      v24 = v8;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ -> %{public}@ (%{public}@) = %{public}@", &v15, 0x34u);
    }
  }

  else
  {
    objc_sync_exit(v9);
  }

  return v8;
}

uint64_t __63__AMSMappedBundleInfo__accountMediaTypeForClientName_bundleID___block_invoke()
{
  qword_1ED6E2DA8 = objc_alloc_init(MEMORY[0x1E695DFA8]);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_clientNameFromProcessInfo:(id)a3
{
  v3 = a3;
  v4 = [v3 bundleIdentifier];
  if (!v4)
  {
    v5 = [v3 executableName];
    if (v5)
    {
      v4 = v5;
    }

    else
    {
      v4 = @"itunesstored";
    }
  }

  return v4;
}

+ (id)_clientVersionFromProcessInfo:(id)a3 clientName:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (![a4 isEqualToString:@"Messages"] || (objc_msgSend(MEMORY[0x1E696AAE8], "bundleWithPath:", @"/System/Library/Messages/iMessageBalloons/ASMessagesProvider.bundle"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "infoDictionary"), v7 = objc_claimAutoreleasedReturnValue(), v6, !v7) || (objc_msgSend(v7, "objectForKey:", *MEMORY[0x1E695E148]), v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
  {
    v9 = [v5 clientVersion];
    if (v9)
    {
      v8 = v9;
    }

    else
    {
      v10 = +[AMSLogConfig sharedConfig];
      if (!v10)
      {
        v10 = +[AMSLogConfig sharedConfig];
      }

      v11 = [v10 OSLogObject];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = objc_opt_class();
        v13 = v12;
        v14 = [v5 bundleIdentifier];
        v16 = 138543618;
        v17 = v12;
        v18 = 2114;
        v19 = v14;
        _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEBUG, "%{public}@: Couldn't find %{public}@ store version (iOS), falling back to hardcoded", &v16, 0x16u);
      }

      v8 = @"1.0";
    }
  }

  return v8;
}

@end