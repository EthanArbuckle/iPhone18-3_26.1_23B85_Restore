@interface PersonalHotspotDataUsageCache
+ (id)sharedInstance;
- (PersonalHotspotDataUsageCache)initWithCoreTelephonyClient:(id)client;
- (id)hotspotClientIDsForPeriod:(unint64_t)period mruMap:(id *)map;
- (id)initPrivate;
- (id)phClientInfoForID:(id)d;
- (id)usageForBundleID:(id)d inPeriod:(unint64_t)period;
- (unint64_t)totalHotspotClientUsageForPeriod:(unint64_t)period;
- (unint64_t)usageForHotspotClientID:(id)d inPeriod:(unint64_t)period;
- (void)_clearCache;
- (void)_handleUsageOrInfoChanged;
- (void)dataRatesChanged;
- (void)fetchDeviceDataUsage;
- (void)fetchDeviceDataUsageWithCompletion:(id)completion;
- (void)fetchHotspotClientsUsage;
- (void)refreshCacheIfNeeded;
- (void)refreshDataUsageUINotification;
@end

@implementation PersonalHotspotDataUsageCache

+ (id)sharedInstance
{
  if (qword_11578 != -1)
  {
    sub_5A04();
  }

  v3 = qword_11570;

  return v3;
}

- (id)initPrivate
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);

  v5 = dispatch_queue_create("com.apple.dataUsageQueue", v4);
  queue = self->_queue;
  self->_queue = v5;

  v7 = [[CoreTelephonyClient alloc] initWithQueue:self->_queue];
  v8 = [(PersonalHotspotDataUsageCache *)self initWithCoreTelephonyClient:v7];

  return v8;
}

- (PersonalHotspotDataUsageCache)initWithCoreTelephonyClient:(id)client
{
  clientCopy = client;
  v9.receiver = self;
  v9.super_class = PersonalHotspotDataUsageCache;
  v6 = [(PersonalHotspotDataUsageCache *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(PersonalHotspotDataUsageCache *)v6 _clearCache];
    objc_storeStrong(&v7->_ctClient, client);
    [(CoreTelephonyClient *)v7->_ctClient setDelegate:v7];
  }

  return v7;
}

- (void)_clearCache
{
  obj = self;
  objc_sync_enter(obj);
  [(PersonalHotspotDataUsageCache *)obj setHotspotClientsUsage:0];
  [(PersonalHotspotDataUsageCache *)obj setCacheNeedsRefresh:1];
  objc_sync_exit(obj);
}

- (void)fetchDeviceDataUsage
{
  obj = self;
  objc_sync_enter(obj);
  if ([(PersonalHotspotDataUsageCache *)obj refreshInProgress])
  {
    objc_sync_exit(obj);
  }

  else
  {
    [(PersonalHotspotDataUsageCache *)obj setWorkspaceInfo:0];
    [(PersonalHotspotDataUsageCache *)obj setRefreshInProgress:1];
    objc_sync_exit(obj);

    ctClient = obj->_ctClient;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_41E8;
    v4[3] = &unk_C5C0;
    v4[4] = obj;
    [(CoreTelephonyClient *)ctClient dataUsageForLastPeriods:2 completion:v4];
  }
}

- (void)fetchDeviceDataUsageWithCompletion:(id)completion
{
  [(PersonalHotspotDataUsageCache *)self setRefreshCompletionHandler:completion];

  [(PersonalHotspotDataUsageCache *)self fetchDeviceDataUsage];
}

- (void)refreshCacheIfNeeded
{
  if ([(PersonalHotspotDataUsageCache *)self cacheNeedsRefresh])
  {

    [(PersonalHotspotDataUsageCache *)self fetchDeviceDataUsage];
  }
}

- (void)fetchHotspotClientsUsage
{
  v3 = WiFiManagerClientCreate();
  if (v3)
  {
    v4 = v3;
    v5 = WiFiManagerClientCopyProperty();
    [(PersonalHotspotDataUsageCache *)self setHotspotClientsUsage:v5];

    v6 = logger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_5AD4(self, v6);
    }

    CFRelease(v4);
  }

  else
  {
    v7 = logger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_5B6C(v7);
    }
  }
}

- (id)hotspotClientIDsForPeriod:(unint64_t)period mruMap:(id *)map
{
  v33 = [(PersonalHotspotDataUsageCache *)self totalHotspotClientUsageForPeriod:?];
  v42 = objc_alloc_init(NSDateFormatter);
  [v42 setDateFormat:@"yyyy-MM-dd HH:mm:ss Z"];
  hotspotClientsUsage = [(PersonalHotspotDataUsageCache *)self hotspotClientsUsage];

  if (!hotspotClientsUsage)
  {
    [(PersonalHotspotDataUsageCache *)self fetchHotspotClientsUsage];
  }

  v7 = objc_opt_new();
  hotspotClientsUsage2 = [(PersonalHotspotDataUsageCache *)self hotspotClientsUsage];
  v9 = [NSNumber numberWithUnsignedInteger:period];
  stringValue = [v9 stringValue];
  v11 = [hotspotClientsUsage2 objectForKeyedSubscript:stringValue];

  v32 = v11;
  if (v11)
  {
    if ([v11 count])
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      obj = v11;
      v38 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
      v11 = 0;
      if (v38)
      {
        v37 = *v59;
        v36 = kWiFiSettingDataUsageInterfacePeerListKey;
        v35 = kWiFiSettingDataUsageDateKey;
        v48 = kWiFiSettingDataUsageInterfacePeerTotalBytesKey;
        v47 = kWiFiSettingDataUsageInterfacePeerLastBytesKey;
        v46 = kWiFiSettingDataUsageRecentDateKey;
        v45 = kWiFiDataUsageInterfacePeerIDKey;
        v43 = v7;
        do
        {
          v12 = 0;
          do
          {
            if (*v59 != v37)
            {
              objc_enumerationMutation(obj);
            }

            v40 = v12;
            v13 = *(*(&v58 + 1) + 8 * v12);
            v14 = [v13 objectForKey:v36];
            v39 = [v13 objectForKey:v35];
            v15 = [v42 dateFromString:?];
            v54 = 0u;
            v55 = 0u;
            v56 = 0u;
            v57 = 0u;
            v44 = v14;
            v51 = [v44 countByEnumeratingWithState:&v54 objects:v62 count:16];
            if (v51)
            {
              v49 = *v55;
              do
              {
                for (i = 0; i != v51; i = i + 1)
                {
                  if (*v55 != v49)
                  {
                    objc_enumerationMutation(v44);
                  }

                  v17 = *(*(&v54 + 1) + 8 * i);
                  v18 = [v17 objectForKey:v48];
                  v19 = [v17 objectForKey:v47];
                  v20 = [v17 objectForKey:v46];
                  v21 = v20;
                  v52 = v11;
                  if (v20)
                  {
                    v22 = v20;

                    v53 = v22;
                  }

                  else
                  {
                    v53 = v15;
                  }

                  unsignedIntegerValue = [v19 unsignedIntegerValue];
                  unsignedIntegerValue2 = [v18 unsignedIntegerValue];
                  v25 = [v17 objectForKey:v45];
                  if (v25)
                  {
                    [v7 addObject:v25];
                    if (map)
                    {
                      v26 = *map;
                      v27 = [v26 objectForKeyedSubscript:v25];
                      if (v27 && ([v42 dateFromString:v27], (v28 = objc_claimAutoreleasedReturnValue()) != 0))
                      {
                        v29 = v28;
                        if ([v53 compare:v28] == &dword_0 + 1)
                        {
                          [NSString stringWithFormat:@"%@", v53];
                        }

                        else
                        {
                          [NSString stringWithFormat:@"%@", v29];
                        }
                        v41 = ;
                        [v26 setObject:v41 forKeyedSubscript:v25];
                      }

                      else
                      {
                        v29 = [NSString stringWithFormat:@"%@", v53];
                        [v26 setObject:v29 forKeyedSubscript:v25];
                      }

                      v7 = v43;
                    }
                  }

                  v11 = &v52[unsignedIntegerValue + unsignedIntegerValue2];

                  v15 = v53;
                }

                v51 = [v44 countByEnumeratingWithState:&v54 objects:v62 count:16];
              }

              while (v51);
            }

            v12 = v40 + 1;
          }

          while ((v40 + 1) != v38);
          v38 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
        }

        while (v38);
      }
    }

    else
    {
      v11 = 0;
    }
  }

  if (v33 > v11)
  {
    [v7 addObject:@"Others"];
  }

  if (v7)
  {
    v30 = [v7 copy];
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (id)phClientInfoForID:(id)d
{
  dCopy = d;
  hotspotClientsUsage = [(PersonalHotspotDataUsageCache *)self hotspotClientsUsage];

  if (!hotspotClientsUsage)
  {
    [(PersonalHotspotDataUsageCache *)self fetchHotspotClientsUsage];
  }

  if ([dCopy isEqualToString:@"Others"])
  {
    v12[0] = kWiFiDataUsageInterfacePeerIDKey;
    v12[1] = kWiFiSettingDataUsageInterfacePeerDisplayNameKey;
    v13[0] = @"Others";
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = SFLocalizableWAPIStringKeyForKey();
    v8 = [v6 localizedStringForKey:v7 value:&stru_C668 table:@"PersonalHotspotDataUsage"];
    v13[1] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
  }

  else
  {
    hotspotClientsUsage2 = [(PersonalHotspotDataUsageCache *)self hotspotClientsUsage];
    v6 = [hotspotClientsUsage2 objectForKey:kWiFiSettingDataUsagePHClientsKey];

    v9 = [v6 objectForKey:dCopy];
  }

  return v9;
}

- (unint64_t)totalHotspotClientUsageForPeriod:(unint64_t)period
{
  [(PersonalHotspotDataUsageCache *)self refreshCacheIfNeeded];
  v5 = [(PersonalHotspotDataUsageCache *)self usageForBundleID:@"com.apple.datausage.personalhotspot" inPeriod:period];
  v6 = v5;
  if (v5)
  {
    native = [v5 native];
    cellularHome = [native cellularHome];
    native2 = [v6 native];
    v10 = &cellularHome[[native2 cellularRoaming]];
    proxied = [v6 proxied];
    cellularHome2 = [proxied cellularHome];
    proxied2 = [v6 proxied];
    v14 = &v10[[proxied2 cellularRoaming] + cellularHome2];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (unint64_t)usageForHotspotClientID:(id)d inPeriod:(unint64_t)period
{
  dCopy = d;
  v7 = [(PersonalHotspotDataUsageCache *)self totalHotspotClientUsageForPeriod:period];
  hotspotClientsUsage = [(PersonalHotspotDataUsageCache *)self hotspotClientsUsage];

  if (!hotspotClientsUsage)
  {
    [(PersonalHotspotDataUsageCache *)self fetchHotspotClientsUsage];
  }

  hotspotClientsUsage2 = [(PersonalHotspotDataUsageCache *)self hotspotClientsUsage];
  v10 = [NSNumber numberWithUnsignedInteger:period];
  stringValue = [v10 stringValue];
  v12 = [hotspotClientsUsage2 objectForKeyedSubscript:stringValue];

  v33 = v7;
  if (v12 && [v12 count])
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v32 = v12;
    obj = v12;
    v37 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
    v13 = 0;
    v14 = 0;
    if (v37)
    {
      v36 = *v50;
      v35 = kWiFiSettingDataUsageInterfacePeerListKey;
      v15 = kWiFiDataUsageInterfacePeerIDKey;
      v42 = kWiFiSettingDataUsageInterfacePeerTotalBytesKey;
      v41 = kWiFiSettingDataUsageInterfacePeerLastBytesKey;
      do
      {
        v16 = 0;
        do
        {
          if (*v50 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v38 = v16;
          v17 = [*(*(&v49 + 1) + 8 * v16) objectForKey:v35];
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v39 = v17;
          v44 = [v17 countByEnumeratingWithState:&v45 objects:v53 count:16];
          if (v44)
          {
            v43 = *v46;
            do
            {
              for (i = 0; i != v44; i = i + 1)
              {
                if (*v46 != v43)
                {
                  objc_enumerationMutation(v39);
                }

                v19 = *(*(&v45 + 1) + 8 * i);
                v20 = [v19 objectForKey:v15];
                v21 = [v19 objectForKey:v42];
                v22 = [v19 objectForKey:v41];
                unsignedIntegerValue = [v22 unsignedIntegerValue];
                unsignedIntegerValue2 = [v21 unsignedIntegerValue];
                if ([v20 isEqualToString:dCopy])
                {
                  v40 = v13;
                  v25 = v15;
                  v26 = dCopy;
                  unsignedIntegerValue3 = [v22 unsignedIntegerValue];
                  unsignedIntegerValue4 = [v21 unsignedIntegerValue];
                  v29 = &v14[unsignedIntegerValue3];
                  dCopy = v26;
                  v15 = v25;
                  v13 = v40;
                  v14 = &unsignedIntegerValue4[v29];
                }

                v13 = &v13[unsignedIntegerValue + unsignedIntegerValue2];
              }

              v44 = [v39 countByEnumeratingWithState:&v45 objects:v53 count:16];
            }

            while (v44);
          }

          v16 = v38 + 1;
        }

        while ((v38 + 1) != v37);
        v37 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
      }

      while (v37);
    }

    v12 = v32;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  if (([dCopy isEqualToString:@"Others"] & (v33 > v13)) != 0)
  {
    v30 = v33 - v13;
  }

  else
  {
    v30 = v14;
  }

  return v30;
}

- (id)usageForBundleID:(id)d inPeriod:(unint64_t)period
{
  dCopy = d;
  [(PersonalHotspotDataUsageCache *)self refreshCacheIfNeeded];
  cachedDeviceDataUsage = [(PersonalHotspotDataUsageCache *)self cachedDeviceDataUsage];
  v8 = [cachedDeviceDataUsage appDataUsageForPeriod:period];

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v77 objects:v85 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v78;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v78 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v77 + 1) + 8 * i);
        bundleId = [v14 bundleId];
        v16 = [dCopy isEqualToString:bundleId];

        if (v16)
        {
          used = [v14 used];
          v19 = v9;
          goto LABEL_52;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v77 objects:v85 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  cachedDeviceDataUsage2 = [(PersonalHotspotDataUsageCache *)self cachedDeviceDataUsage];
  periodCopy = period;
  v18 = [cachedDeviceDataUsage2 proxiedOnlyAppDataUsageForPeriod:period];

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v19 = v18;
  v20 = [v19 countByEnumeratingWithState:&v73 objects:v84 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v74;
    while (2)
    {
      for (j = 0; j != v21; j = j + 1)
      {
        if (*v74 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v73 + 1) + 8 * j);
        bundleId2 = [v24 bundleId];
        v26 = [dCopy isEqualToString:bundleId2];

        if (v26)
        {
          used = [v24 used];
          v56 = v19;
          goto LABEL_51;
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v73 objects:v84 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

  cachedDeviceDataUsage3 = [(PersonalHotspotDataUsageCache *)self cachedDeviceDataUsage];
  v28 = [cachedDeviceDataUsage3 systemServiceDataUsageForPeriod:periodCopy];

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v29 = v28;
  v30 = [v29 countByEnumeratingWithState:&v69 objects:v83 count:16];
  obj = v29;
  if (v30)
  {
    v31 = v30;
    v32 = *v70;
    while (2)
    {
      for (k = 0; k != v31; k = k + 1)
      {
        if (*v70 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v69 + 1) + 8 * k);
        bundleId3 = [v34 bundleId];
        v36 = [dCopy isEqualToString:bundleId3];

        if (v36)
        {
          used = [v34 used];
          v56 = obj;
          v46 = obj;
          goto LABEL_50;
        }
      }

      v29 = obj;
      v31 = [obj countByEnumeratingWithState:&v69 objects:v83 count:16];
      if (v31)
      {
        continue;
      }

      break;
    }
  }

  cachedDeviceDataUsage4 = [(PersonalHotspotDataUsageCache *)self cachedDeviceDataUsage];
  v38 = [cachedDeviceDataUsage4 uninstalledAppDataUsageForPeriod:periodCopy];

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v59 = v38;
  v39 = [v59 countByEnumeratingWithState:&v65 objects:v82 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v66;
    while (2)
    {
      for (m = 0; m != v40; m = m + 1)
      {
        if (*v66 != v41)
        {
          objc_enumerationMutation(v59);
        }

        v43 = *(*(&v65 + 1) + 8 * m);
        bundleId4 = [v43 bundleId];
        v45 = [dCopy isEqualToString:bundleId4];

        if (v45)
        {
          used = [v43 used];
          v46 = v59;
          v49 = v59;
          goto LABEL_49;
        }
      }

      v40 = [v59 countByEnumeratingWithState:&v65 objects:v82 count:16];
      if (v40)
      {
        continue;
      }

      break;
    }
  }

  v46 = v59;

  cachedDeviceDataUsage5 = [(PersonalHotspotDataUsageCache *)self cachedDeviceDataUsage];
  v48 = [cachedDeviceDataUsage5 hiddenAppDataUsageForPeriod:periodCopy];

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v49 = v48;
  used = [v49 countByEnumeratingWithState:&v61 objects:v81 count:16];
  if (used)
  {
    v51 = *v62;
    while (2)
    {
      for (n = 0; n != used; n = n + 1)
      {
        if (*v62 != v51)
        {
          objc_enumerationMutation(v49);
        }

        v53 = *(*(&v61 + 1) + 8 * n);
        bundleId5 = [v53 bundleId];
        v55 = [dCopy isEqualToString:bundleId5];

        if (v55)
        {
          used = [v53 used];
          goto LABEL_47;
        }
      }

      used = [v49 countByEnumeratingWithState:&v61 objects:v81 count:16];
      if (used)
      {
        continue;
      }

      break;
    }

LABEL_47:
    v46 = v59;
  }

LABEL_49:
  v56 = obj;

LABEL_50:
LABEL_51:

LABEL_52:

  return used;
}

- (void)_handleUsageOrInfoChanged
{
  [(PersonalHotspotDataUsageCache *)self _clearCache];
  v2 = [NSNotification notificationWithName:@"PSWirelessDataUsageChangedNotification" object:0];
  v3 = logger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[PersonalHotspotDataUsageCache _handleUsageOrInfoChanged]";
    v7 = 2112;
    v8 = @"PSWirelessDataUsageChangedNotification";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%s posting notification %@ from main thread", &v5, 0x16u);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 performSelectorOnMainThread:"postNotification:" withObject:v2 waitUntilDone:0];
}

- (void)refreshDataUsageUINotification
{
  v3 = logger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Received notification to refresh data usage UI", buf, 2u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_57C4;
  block[3] = &unk_C5E8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)dataRatesChanged
{
  v3 = logger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Data Rates Changed.....", v4, 2u);
  }

  [(PersonalHotspotDataUsageCache *)self refreshDataUsageUINotification];
}

@end