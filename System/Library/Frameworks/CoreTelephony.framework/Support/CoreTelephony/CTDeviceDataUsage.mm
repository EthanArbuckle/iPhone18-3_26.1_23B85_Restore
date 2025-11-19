@interface CTDeviceDataUsage
- (BOOL)addUsage:(id)a3 forBundle:(id)a4 forPeriod:(unint64_t)a5 withPreferredLanguages:(id)a6 withBlockedBundleIds:(id)a7 using:(id)a8;
- (BOOL)isProxiedTraffic:(id)a3 usingBuilder:(id)a4;
- (CTDeviceDataUsage)initWithPeriods:(unint64_t)a3;
- (id)bundleIdForBundleId:(id)a3 usingBuilder:(id)a4;
- (id)displayNameForBundle:(id)a3 withBuilder:(id)a4 withPreferredLanguages:(id)a5;
- (id)groupForBundleId:(id)a3 usingBuilder:(id)a4;
- (id)mappedBundleIdForBundleId:(id)a3 isGreenTea:(BOOL)a4;
- (id)validateSystemService:(id)a3 usingBuilder:(id)a4 withPreferredLanguages:(id)a5;
@end

@implementation CTDeviceDataUsage

- (CTDeviceDataUsage)initWithPeriods:(unint64_t)a3
{
  if (a3 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a3;
  }

  v15.receiver = self;
  v15.super_class = CTDeviceDataUsage;
  v4 = [(CTDeviceDataUsage *)&v15 init];
  v5 = v4;
  if (v4)
  {
    [(CTDeviceDataUsage *)v4 setPeriods:v3];
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

- (id)displayNameForBundle:(id)a3 withBuilder:(id)a4 withPreferredLanguages:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [a4 appProperties];
  v10 = [v9 objectForKey:v7];

  if ([v8 count])
  {
    v11 = [v10 localizedName:v8];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v7;
    }

    v14 = v13;
  }

  else
  {
    v14 = v7;
  }

  return v14;
}

- (id)mappedBundleIdForBundleId:(id)a3 isGreenTea:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = v5;
  if (v4 && ([v5 isEqualToString:@"com.apple.MobileSMS"] & 1) != 0)
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
                v17 = [v15 UTF8String];
                v18 = v6;
                if (!strncmp(v17, [v6 UTF8String], 0x20uLL))
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

- (id)bundleIdForBundleId:(id)a3 usingBuilder:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CTDeviceDataUsage *)self mappedBundleIdForBundleId:v6 isGreenTea:v7[32]];
  if (!v8)
  {
    v8 = v6;
  }

  v9 = [v7 appProperties];
  v10 = [v9 objectForKey:v8];

  if (!v10)
  {
    v10 = [[CTAppProperties alloc] init:v8];
    v11 = [v7 appProperties];
    [v11 setObject:v10 forKey:v8];

    v12 = [v10 bundleId];
    v13 = v12;
    if (v12 && ([v12 isEqual:v8] & 1) == 0)
    {
      v14 = [v7 appProperties];
      [v14 setObject:v10 forKey:v13];
    }
  }

  v15 = [v10 bundleId];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v8;
  }

  v18 = v17;

  return v17;
}

- (BOOL)isProxiedTraffic:(id)a3 usingBuilder:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CTDeviceDataUsage *)self mappedBundleIdForBundleId:v6 isGreenTea:v7[32]];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  v11 = v10;

  v12 = [v7 appProperties];
  v13 = [v12 objectForKey:v6];

  if (v13)
  {
    if ([v13 isRemoteApp])
    {
      LOBYTE(v14) = 1;
    }

    else
    {
      v15 = [v13 bundleId];
      if (v15)
      {
        v14 = [v11 isEqual:v15] ^ 1;
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

- (id)groupForBundleId:(id)a3 usingBuilder:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 appProperties];
  v9 = [v8 objectForKey:v6];

  if (v9)
  {
    if (_os_feature_enabled_impl() && [v9 isHiddenApp])
    {
      v10 = [(CTDeviceDataUsage *)self hiddenApps];
LABEL_8:
      v11 = v10;
      goto LABEL_12;
    }

    if (([v9 isInstalledApp] & 1) != 0 || objc_msgSend(v9, "isInternalApp"))
    {
      v10 = [(CTDeviceDataUsage *)self apps];
      goto LABEL_8;
    }

    if ([v9 isRemoteApp])
    {
      v10 = [(CTDeviceDataUsage *)self proxiedOnlyApps];
      goto LABEL_8;
    }

    if ([v9 isSystemService])
    {
      v10 = [(CTDeviceDataUsage *)self systemServices];
      goto LABEL_8;
    }

    if ([v9 isUninstalledApp])
    {
      v10 = [(CTDeviceDataUsage *)self uninstalledApps];
      goto LABEL_8;
    }

    v14 = *v7[3];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000598B4(v6, v14);
    }
  }

  else
  {
    v12 = *v7[3];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10005992C(v6, v12);
    }
  }

  v11 = 0;
LABEL_12:

  return v11;
}

- (id)validateSystemService:(id)a3 usingBuilder:(id)a4 withPreferredLanguages:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CTDeviceDataUsage *)self displayNameForBundle:v8 withBuilder:v9 withPreferredLanguages:v10];
  if (([v11 length] < 2 || objc_msgSend(v11, "containsString:", @".")) && (objc_msgSend(v8, "hasPrefix:", @"com.apple.datausage.") & 1) == 0)
  {
    v13 = *v9[3];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_1000599A4(v8, v11, v13);
    }

    v12 = @"com.apple.datausage.general";
  }

  else
  {
    v12 = v8;
  }

  return v12;
}

- (BOOL)addUsage:(id)a3 forBundle:(id)a4 forPeriod:(unint64_t)a5 withPreferredLanguages:(id)a6 withBlockedBundleIds:(id)a7 using:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if ([(CTDeviceDataUsage *)self periods]> a5)
  {
    v19 = [(CTDeviceDataUsage *)self bundleIdForBundleId:v15 usingBuilder:v18];
    if ([v17 containsObject:v15])
    {
      v20 = *v18[3];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v41 = v15;
        v42 = 2114;
        v43 = v19;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Not adding bundleId %{public}@, mapped bundleId %{public}@ is blocked", buf, 0x16u);
      }

      v21 = 0;
      goto LABEL_28;
    }

    if ([(CTDeviceDataUsage *)self isWifiAssist:v19])
    {
      v23 = [(CTDeviceDataUsage *)self wifiAssist];
      v24 = [v23 objectAtIndexedSubscript:a5];
      [v24 addUsage:v14];

      v21 = 1;
LABEL_28:

      goto LABEL_29;
    }

    v25 = [v18 appProperties];
    v26 = [v25 objectForKey:v19];

    v38 = v26;
    if (v26 && [v26 isSystemService])
    {
      v27 = [(CTDeviceDataUsage *)self validateSystemService:v19 usingBuilder:v18 withPreferredLanguages:v16];

      v19 = v27;
    }

    v39 = [(CTDeviceDataUsage *)self groupForBundleId:v19 usingBuilder:v18];
    if (!v39)
    {
      goto LABEL_18;
    }

    v28 = [(CTDeviceDataUsage *)self apps];
    if (v39 != v28)
    {
      v29 = [(CTDeviceDataUsage *)self proxiedOnlyApps];
      v30 = v29;
      if (v39 != v29)
      {
        v36 = [v14 isEmpty];

        if (v36)
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
          v32 = [(CTDeviceDataUsage *)self displayNameForBundle:v19 withBuilder:v18 withPreferredLanguages:v16];
          v31 = [v37 init:v32 withPeriods:{-[CTDeviceDataUsage periods](self, "periods")}];

          [v39 setObject:v31 forKey:v19];
        }

        if ([(CTDeviceDataUsage *)self isProxiedTraffic:v15 usingBuilder:v18])
        {
          v33 = [v31 used];
          v34 = [v33 objectAtIndexedSubscript:a5];
          [v34 addProxiedUsage:v14];
        }

        else
        {
          v33 = [v31 used];
          v34 = [v33 objectAtIndexedSubscript:a5];
          [v34 addNativeUsage:v14];
        }

        v21 = 1;
        goto LABEL_27;
      }
    }

    goto LABEL_21;
  }

  v22 = *v18[3];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    sub_100059A2C(buf, a5, [(CTDeviceDataUsage *)self periods], v22);
  }

  v21 = 0;
LABEL_29:

  return v21;
}

@end