@interface AMSMappedBundleInfo
+ (AMSMappedBundleInfo)currentBundleInfo;
+ (BOOL)bundleIdentifierIsGames:(id)games;
+ (id)_accountMediaTypeForClientName:(id)name bundleID:(id)d;
+ (id)_clientNameFromProcessInfo:(id)info;
+ (id)_clientVersionFromProcessInfo:(id)info clientName:(id)name;
+ (id)bundleInfoForMobileAppStoreWithProcessInfo:(id)info;
+ (id)bundleInfoForProcessInfo:(id)info;
- (id)_initWithClient:(int64_t)client processInfo:(id)info;
@end

@implementation AMSMappedBundleInfo

+ (BOOL)bundleIdentifierIsGames:(id)games
{
  gamesCopy = games;
  if ([gamesCopy isEqualToString:@"com.apple.games"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [gamesCopy isEqualToString:@"com.apple.GameOverlayUI"];
  }

  return v4;
}

+ (id)bundleInfoForProcessInfo:(id)info
{
  infoCopy = info;
  bundleIdentifier = [infoCopy bundleIdentifier];
  lowercaseString = [bundleIdentifier lowercaseString];
  v6 = lowercaseString;
  v7 = &stru_1F071BA78;
  if (lowercaseString)
  {
    v7 = lowercaseString;
  }

  v8 = v7;

  v9 = [&unk_1F0779D80 objectForKeyedSubscript:v8];

  integerValue = [v9 integerValue];
  v11 = [[AMSMappedBundleInfo alloc] _initWithClient:integerValue processInfo:infoCopy];

  return v11;
}

+ (AMSMappedBundleInfo)currentBundleInfo
{
  v3 = +[AMSProcessInfo currentProcess];
  v4 = [self bundleInfoForProcessInfo:v3];

  return v4;
}

+ (id)bundleInfoForMobileAppStoreWithProcessInfo:(id)info
{
  infoCopy = info;
  v4 = [[AMSMappedBundleInfo alloc] _initWithClient:2 processInfo:infoCopy];

  return v4;
}

- (id)_initWithClient:(int64_t)client processInfo:(id)info
{
  infoCopy = info;
  v38.receiver = self;
  v38.super_class = AMSMappedBundleInfo;
  v7 = [(AMSMappedBundleInfo *)&v38 init];
  if (v7)
  {
    v8 = client - 1;
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
        bundleIdentifier2 = 0;
        v10 = 1;
        LODWORD(v20) = 1;
        v18 = @"AppleTV";
        if (infoCopy)
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
        bundleIdentifier2 = 0;
        v18 = @"Watch";
        v10 = 1;
        v19 = @"itms-watch";
        LODWORD(v20) = 1;
        v21 = @"itms-watchs";
        if (!infoCopy)
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
        bundleIdentifier = [infoCopy bundleIdentifier];
        v20 = [bundleIdentifier compare:v15 options:1];

        bundleIdentifier2 = v15;
        if (v20)
        {
          v23 = [[AMSProcessInfo alloc] initWithBundleIdentifier:v15];

          LODWORD(v20) = 0;
          infoCopy = v23;
        }

        v17 = v9;
        v19 = v12;
        v21 = v11;
        v16 = v13;
        v18 = v36;
        if (infoCopy)
        {
          goto LABEL_35;
        }

        goto LABEL_7;
      default:
        v21 = 0;
        v19 = 0;
        v16 = 0;
        v18 = 0;
        bundleIdentifier2 = 0;
        v10 = 1;
        v17 = 1;
        LODWORD(v20) = 1;
        if (infoCopy)
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
          infoCopy = +[AMSProcessInfo currentProcess];
          if (!v20)
          {
            goto LABEL_37;
          }
        }

        bundleIdentifier2 = [infoCopy bundleIdentifier];
LABEL_37:
        bundleIdentifier = v7->_bundleIdentifier;
        v7->_bundleIdentifier = bundleIdentifier2;

        if (v17)
        {
          v18 = [AMSMappedBundleInfo _clientNameFromProcessInfo:infoCopy];
        }

        clientName = v7->_clientName;
        v7->_clientName = &v18->isa;

        if (v10)
        {
          v16 = [AMSMappedBundleInfo _clientVersionFromProcessInfo:infoCopy clientName:v7->_clientName];
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

        proxyAppBundleID = [infoCopy proxyAppBundleID];
        proxyAppBundleID = v7->_proxyAppBundleID;
        v7->_proxyAppBundleID = proxyAppBundleID;

        userAgentSuffix = [infoCopy userAgentSuffix];
        userAgentSuffix = v7->_userAgentSuffix;
        v7->_userAgentSuffix = userAgentSuffix;

        break;
    }
  }

  return v7;
}

+ (id)_accountMediaTypeForClientName:(id)name bundleID:(id)d
{
  v25 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  dCopy = d;
  v8 = AMSAccountMediaTypeProduction;
  if (_MergedGlobals_123 != -1)
  {
    dispatch_once(&_MergedGlobals_123, &__block_literal_global_76);
  }

  v9 = qword_1ED6E2DA8;
  objc_sync_enter(v9);
  if (nameCopy && ([v9 containsObject:nameCopy] & 1) == 0)
  {
    [v9 addObject:nameCopy];
    objc_sync_exit(v9);

    v10 = +[AMSLogConfig sharedAccountsConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v10 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromSelector(a2);
      v15 = 138544386;
      v16 = v12;
      v17 = 2114;
      v18 = v13;
      v19 = 2114;
      v20 = dCopy;
      v21 = 2114;
      v22 = nameCopy;
      v23 = 2114;
      v24 = v8;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ -> %{public}@ (%{public}@) = %{public}@", &v15, 0x34u);
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

+ (id)_clientNameFromProcessInfo:(id)info
{
  infoCopy = info;
  bundleIdentifier = [infoCopy bundleIdentifier];
  if (!bundleIdentifier)
  {
    executableName = [infoCopy executableName];
    if (executableName)
    {
      bundleIdentifier = executableName;
    }

    else
    {
      bundleIdentifier = @"itunesstored";
    }
  }

  return bundleIdentifier;
}

+ (id)_clientVersionFromProcessInfo:(id)info clientName:(id)name
{
  v20 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  if (![name isEqualToString:@"Messages"] || (objc_msgSend(MEMORY[0x1E696AAE8], "bundleWithPath:", @"/System/Library/Messages/iMessageBalloons/ASMessagesProvider.bundle"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "infoDictionary"), v7 = objc_claimAutoreleasedReturnValue(), v6, !v7) || (objc_msgSend(v7, "objectForKey:", *MEMORY[0x1E695E148]), v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
  {
    clientVersion = [infoCopy clientVersion];
    if (clientVersion)
    {
      v8 = clientVersion;
    }

    else
    {
      v10 = +[AMSLogConfig sharedConfig];
      if (!v10)
      {
        v10 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v10 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
      {
        v12 = objc_opt_class();
        v13 = v12;
        bundleIdentifier = [infoCopy bundleIdentifier];
        v16 = 138543618;
        v17 = v12;
        v18 = 2114;
        v19 = bundleIdentifier;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@: Couldn't find %{public}@ store version (iOS), falling back to hardcoded", &v16, 0x16u);
      }

      v8 = @"1.0";
    }
  }

  return v8;
}

@end