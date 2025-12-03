@interface CTDeviceDataUsage
- (BOOL)addUsage:(id)usage forBundle:(id)bundle forPeriod:(unint64_t)period withPreferredLanguages:(id)languages withBlockedBundleIds:(id)ids using:(id)using;
- (BOOL)isProxiedTraffic:(id)traffic usingBuilder:(id)builder;
- (CTDeviceDataUsage)initWithPeriods:(unint64_t)periods;
- (id)bundleIdForBundleId:(id)id usingBuilder:(id)builder;
- (id)displayNameForBundle:(id)bundle withBuilder:(id)builder withPreferredLanguages:(id)languages;
- (id)groupForBundleId:(id)id usingBuilder:(id)builder;
- (id)mappedBundleIdForBundleId:(id)id isGreenTea:(BOOL)tea;
- (id)validateSystemService:(id)service usingBuilder:(id)builder withPreferredLanguages:(id)languages;
@end

@implementation CTDeviceDataUsage

- (CTDeviceDataUsage)initWithPeriods:(unint64_t)periods
{
  if (periods <= 1)
  {
    periodsCopy = 1;
  }

  else
  {
    periodsCopy = periods;
  }

  v15.receiver = self;
  v15.super_class = CTDeviceDataUsage;
  v4 = [(CTDeviceDataUsage *)&v15 init];
  v5 = v4;
  if (v4)
  {
    [(CTDeviceDataUsage *)v4 setPeriods:periodsCopy];
    v6 = +[NSMutableDictionary dictionary];
    [(CTDeviceDataUsage *)v5 setApps:v6];

    v7 = +[NSMutableDictionary dictionary];
    [(CTDeviceDataUsage *)v5 setUninstalledApps:v7];

    v8 = +[NSMutableDictionary dictionary];
    [(CTDeviceDataUsage *)v5 setProxiedOnlyApps:v8];

    v9 = +[NSMutableDictionary dictionary];
    [(CTDeviceDataUsage *)v5 setSystemServices:v9];

    v10 = +[NSMutableDictionary dictionary];
    [(CTDeviceDataUsage *)v5 setHiddenApps:v10];

    v11 = [NSMutableArray arrayWithCapacity:[(CTDeviceDataUsage *)v5 periods]];
    for (i = 0; i < [(CTDeviceDataUsage *)v5 periods]; ++i)
    {
      v13 = [[CTDataUsage alloc] initWithHome:0 roaming:0];
      [v11 addObject:v13];
    }

    [(CTDeviceDataUsage *)v5 setWifiAssist:v11];
  }

  return v5;
}

- (id)displayNameForBundle:(id)bundle withBuilder:(id)builder withPreferredLanguages:(id)languages
{
  bundleCopy = bundle;
  languagesCopy = languages;
  appProperties = [builder appProperties];
  v10 = [appProperties objectForKey:bundleCopy];

  if ([languagesCopy count])
  {
    v11 = [v10 localizedName:languagesCopy];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = bundleCopy;
    }

    v14 = v13;
  }

  else
  {
    v14 = bundleCopy;
  }

  return v14;
}

- (id)mappedBundleIdForBundleId:(id)id isGreenTea:(BOOL)tea
{
  teaCopy = tea;
  idCopy = id;
  v6 = idCopy;
  if (teaCopy && ([idCopy isEqualToString:@"com.apple.MobileSMS"] & 1) != 0)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v8 = [&off_10008BED0 objectForKey:v6];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    if (![v6 hasPrefix:@"com.apple.DocumentManagerUICore."])
    {
      if ([v6 hasPrefix:@"com.apple.mobileassetd.client."])
      {
        v7 = @"com.apple.datausage.softwareupdate";
      }

      else if ([v6 hasPrefix:@"com.apple.priml."] & 1) != 0 || (objc_msgSend(v6, "hasPrefix:", @"com.apple.AppleMediaDiscovery.PFL"))
      {
        v7 = @"com.apple.datausage.aiml";
      }

      else if ([v6 hasPrefix:@"com.apple.corelocation."])
      {
        v7 = @"com.apple.datausage.location";
      }

      else
      {
        if ([v6 length] == 32)
        {
          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          v12 = [&off_10008BED0 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v12)
          {
            v13 = *v22;
            while (2)
            {
              for (i = 0; i != v12; i = i + 1)
              {
                if (*v22 != v13)
                {
                  objc_enumerationMutation(&off_10008BED0);
                }

                v15 = *(*(&v21 + 1) + 8 * i);
                v16 = v15;
                uTF8String = [v15 UTF8String];
                v18 = v6;
                if (!strncmp(uTF8String, [v6 UTF8String], 0x20uLL))
                {
                  v10 = [&off_10008BED0 objectForKey:v15];
                  goto LABEL_8;
                }
              }

              v12 = [&off_10008BED0 countByEnumeratingWithState:&v21 objects:v25 count:16];
              if (v12)
              {
                continue;
              }

              break;
            }
          }
        }

        if (![v6 hasPrefix:@"com.apple."] || (objc_msgSend(v6, "substringFromIndex:", objc_msgSend(@"com.apple.", "length")), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(&off_10008BED0, "objectForKey:", v19), v7 = objc_claimAutoreleasedReturnValue(), v19, !v7))
        {
          v20 = [@"com.apple." stringByAppendingString:v6];
          v7 = [&off_10008BED0 objectForKey:v20];
        }
      }

      goto LABEL_9;
    }

    v10 = [NSString stringWithUTF8String:"com.apple.datausage.docsandsync"];
  }

LABEL_8:
  v7 = v10;
LABEL_9:

LABEL_10:

  return v7;
}

- (id)bundleIdForBundleId:(id)id usingBuilder:(id)builder
{
  idCopy = id;
  builderCopy = builder;
  v8 = [(CTDeviceDataUsage *)self mappedBundleIdForBundleId:idCopy isGreenTea:builderCopy[32]];
  if (!v8)
  {
    v8 = idCopy;
  }

  appProperties = [builderCopy appProperties];
  v10 = [appProperties objectForKey:v8];

  if (!v10)
  {
    v10 = [[CTAppProperties alloc] init:v8];
    appProperties2 = [builderCopy appProperties];
    [appProperties2 setObject:v10 forKey:v8];

    bundleId = [v10 bundleId];
    v13 = bundleId;
    if (bundleId && ([bundleId isEqual:v8] & 1) == 0)
    {
      appProperties3 = [builderCopy appProperties];
      [appProperties3 setObject:v10 forKey:v13];
    }
  }

  bundleId2 = [v10 bundleId];
  v16 = bundleId2;
  if (bundleId2)
  {
    v17 = bundleId2;
  }

  else
  {
    v17 = v8;
  }

  v18 = v17;

  return v17;
}

- (BOOL)isProxiedTraffic:(id)traffic usingBuilder:(id)builder
{
  trafficCopy = traffic;
  builderCopy = builder;
  v8 = [(CTDeviceDataUsage *)self mappedBundleIdForBundleId:trafficCopy isGreenTea:builderCopy[32]];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = trafficCopy;
  }

  v11 = v10;

  appProperties = [builderCopy appProperties];
  v13 = [appProperties objectForKey:trafficCopy];

  if (v13)
  {
    if ([v13 isRemoteApp])
    {
      LOBYTE(v14) = 1;
    }

    else
    {
      bundleId = [v13 bundleId];
      if (bundleId)
      {
        v14 = [v11 isEqual:bundleId] ^ 1;
      }

      else
      {
        LOBYTE(v14) = 0;
      }
    }
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  return v14;
}

- (id)groupForBundleId:(id)id usingBuilder:(id)builder
{
  idCopy = id;
  builderCopy = builder;
  appProperties = [builderCopy appProperties];
  v9 = [appProperties objectForKey:idCopy];

  if (v9)
  {
    if (_os_feature_enabled_impl() && [v9 isHiddenApp])
    {
      hiddenApps = [(CTDeviceDataUsage *)self hiddenApps];
LABEL_8:
      v11 = hiddenApps;
      goto LABEL_12;
    }

    if (([v9 isInstalledApp] & 1) != 0 || objc_msgSend(v9, "isInternalApp"))
    {
      hiddenApps = [(CTDeviceDataUsage *)self apps];
      goto LABEL_8;
    }

    if ([v9 isRemoteApp])
    {
      hiddenApps = [(CTDeviceDataUsage *)self proxiedOnlyApps];
      goto LABEL_8;
    }

    if ([v9 isSystemService])
    {
      hiddenApps = [(CTDeviceDataUsage *)self systemServices];
      goto LABEL_8;
    }

    if ([v9 isUninstalledApp])
    {
      hiddenApps = [(CTDeviceDataUsage *)self uninstalledApps];
      goto LABEL_8;
    }

    v14 = *builderCopy[3];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000598B4(idCopy, v14);
    }
  }

  else
  {
    v12 = *builderCopy[3];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10005992C(idCopy, v12);
    }
  }

  v11 = 0;
LABEL_12:

  return v11;
}

- (id)validateSystemService:(id)service usingBuilder:(id)builder withPreferredLanguages:(id)languages
{
  serviceCopy = service;
  builderCopy = builder;
  languagesCopy = languages;
  v11 = [(CTDeviceDataUsage *)self displayNameForBundle:serviceCopy withBuilder:builderCopy withPreferredLanguages:languagesCopy];
  if (([v11 length] < 2 || objc_msgSend(v11, "containsString:", @".")) && (objc_msgSend(serviceCopy, "hasPrefix:", @"com.apple.datausage.") & 1) == 0)
  {
    v13 = *builderCopy[3];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_1000599A4(serviceCopy, v11, v13);
    }

    v12 = @"com.apple.datausage.general";
  }

  else
  {
    v12 = serviceCopy;
  }

  return v12;
}

- (BOOL)addUsage:(id)usage forBundle:(id)bundle forPeriod:(unint64_t)period withPreferredLanguages:(id)languages withBlockedBundleIds:(id)ids using:(id)using
{
  usageCopy = usage;
  bundleCopy = bundle;
  languagesCopy = languages;
  idsCopy = ids;
  usingCopy = using;
  if ([(CTDeviceDataUsage *)self periods]> period)
  {
    v19 = [(CTDeviceDataUsage *)self bundleIdForBundleId:bundleCopy usingBuilder:usingCopy];
    if ([idsCopy containsObject:bundleCopy])
    {
      v20 = *usingCopy[3];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v41 = bundleCopy;
        v42 = 2114;
        v43 = v19;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Not adding bundleId %{public}@, mapped bundleId %{public}@ is blocked", buf, 0x16u);
      }

      v21 = 0;
      goto LABEL_28;
    }

    if ([(CTDeviceDataUsage *)self isWifiAssist:v19])
    {
      wifiAssist = [(CTDeviceDataUsage *)self wifiAssist];
      v24 = [wifiAssist objectAtIndexedSubscript:period];
      [v24 addUsage:usageCopy];

      v21 = 1;
LABEL_28:

      goto LABEL_29;
    }

    appProperties = [usingCopy appProperties];
    v26 = [appProperties objectForKey:v19];

    v38 = v26;
    if (v26 && [v26 isSystemService])
    {
      v27 = [(CTDeviceDataUsage *)self validateSystemService:v19 usingBuilder:usingCopy withPreferredLanguages:languagesCopy];

      v19 = v27;
    }

    v39 = [(CTDeviceDataUsage *)self groupForBundleId:v19 usingBuilder:usingCopy];
    if (!v39)
    {
      goto LABEL_18;
    }

    apps = [(CTDeviceDataUsage *)self apps];
    if (v39 != apps)
    {
      proxiedOnlyApps = [(CTDeviceDataUsage *)self proxiedOnlyApps];
      v30 = proxiedOnlyApps;
      if (v39 != proxiedOnlyApps)
      {
        isEmpty = [usageCopy isEmpty];

        if (isEmpty)
        {
LABEL_18:
          v21 = 0;
LABEL_27:

          goto LABEL_28;
        }

LABEL_21:
        v31 = [v39 objectForKey:v19];
        if (!v31)
        {
          v37 = [CTPerAppDataUsage alloc];
          v32 = [(CTDeviceDataUsage *)self displayNameForBundle:v19 withBuilder:usingCopy withPreferredLanguages:languagesCopy];
          v31 = [v37 init:v32 withPeriods:{-[CTDeviceDataUsage periods](self, "periods")}];

          [v39 setObject:v31 forKey:v19];
        }

        if ([(CTDeviceDataUsage *)self isProxiedTraffic:bundleCopy usingBuilder:usingCopy])
        {
          used = [v31 used];
          v34 = [used objectAtIndexedSubscript:period];
          [v34 addProxiedUsage:usageCopy];
        }

        else
        {
          used = [v31 used];
          v34 = [used objectAtIndexedSubscript:period];
          [v34 addNativeUsage:usageCopy];
        }

        v21 = 1;
        goto LABEL_27;
      }
    }

    goto LABEL_21;
  }

  v22 = *usingCopy[3];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    sub_100059A2C(buf, period, [(CTDeviceDataUsage *)self periods], v22);
  }

  v21 = 0;
LABEL_29:

  return v21;
}

@end