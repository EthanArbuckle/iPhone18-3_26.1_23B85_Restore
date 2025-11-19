@interface NCOData
- (BOOL)isCellularInexpensive;
- (NCOData)init;
- (double)expirationTimeInterval;
- (unsigned)wifiOverride;
- (void)fetchNCOStatusWithCompletion:(id)a3;
- (void)fetchPrefer5GEnabledWithCompletion:(id)a3;
- (void)setWifiOverride:(unsigned int)a3 completion:(id)a4;
@end

@implementation NCOData

- (void)fetchNCOStatusWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(NCOData *)self isCellularInexpensive]|| [(NCOData *)self wifiOverride]!= 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_F0EC;
  v7[3] = &unk_3D510;
  v8 = v4;
  v9 = v5;
  v6 = v4;
  [(NCOData *)self fetchPrefer5GEnabledWithCompletion:v7];
}

- (NCOData)init
{
  v26.receiver = self;
  v26.super_class = NCOData;
  v2 = [(NCOData *)&v26 init];
  if (v2)
  {
    v3 = [[CoreTelephonyClient alloc] initWithQueue:&_dispatch_main_q];
    ctClient = v2->_ctClient;
    v2->_ctClient = v3;

    v5 = v2->_ctClient;
    if (!v5)
    {
      NSLog(@"NCO Cellular: CoreTelephonyClient is nil");
      goto LABEL_10;
    }

    v25 = 0;
    v6 = [(CoreTelephonyClient *)v5 getCurrentDataServiceDescriptorSync:&v25];
    if (v6)
    {
      v7 = v2->_ctClient;
      v24 = 0;
      v8 = [(CoreTelephonyClient *)v7 isHighDataModeSupported:v6 error:&v24];
      v9 = v24;
      v2->_isHighDataModeSupported = v8;
      if (!v9)
      {
LABEL_9:

LABEL_10:
        if (v2->_isHighDataModeSupported)
        {
          v12 = [AnalyticsWorkspace alloc];
          v13 = [v12 initWorkspaceWithService:kSymptomAnalyticsServiceEndpoint];
          symptomsWorkspace = v2->_symptomsWorkspace;
          v2->_symptomsWorkspace = v13;

          v15 = [[NetworkPerformanceFeed alloc] initWithWorkspace:v2->_symptomsWorkspace];
          symptomsFeed = v2->_symptomsFeed;
          v2->_symptomsFeed = v15;

          v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
          v18 = dispatch_queue_create("com.apple.DeveloperSettings.symptomsReplyQueue", v17);
          symptomsReplyQueue = v2->_symptomsReplyQueue;
          v2->_symptomsReplyQueue = v18;

          [(NetworkPerformanceFeed *)v2->_symptomsFeed setQueue:v2->_symptomsReplyQueue];
          v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
          v21 = dispatch_queue_create("com.apple.DeveloperSettings.wifiPrefsQueue", v20);
          wifiPrefsQueue = v2->_wifiPrefsQueue;
          v2->_wifiPrefsQueue = v21;
        }

        else
        {
          NSLog(@"NCO High Data Mode is Not Supported");
        }

        return v2;
      }

      v10 = v9;
      v11 = [v9 localizedDescription];
      NSLog(@"NCO Cellular: Error getting isHighDataModeSupported: %@", v11);
    }

    else
    {
      v10 = [0 localizedDescription];
      NSLog(@"NCO Cellular: Unable to get CurrentDataServiceDescriptorSync: %@", v10);
    }

    goto LABEL_9;
  }

  return v2;
}

- (double)expirationTimeInterval
{
  v2 = CFCalendarCopyCurrent();
  at = CFAbsoluteTimeGetCurrent();
  CFCalendarAddComponents(v2, &at, 0, "d", 1);
  v5 = 0;
  v4 = 0;
  CFCalendarDecomposeAbsoluteTime(v2, at, "yMd", &v5 + 4, &v5, &v4);
  CFCalendarComposeAbsoluteTime(v2, &at, "yMdHms", HIDWORD(v5), v5, v4, 5, 0, 0);
  return at;
}

- (BOOL)isCellularInexpensive
{
  v3 = [(NCOData *)self ctClient];

  if (v3)
  {
    v4 = [(NCOData *)self ctClient];
    v9 = 0;
    v5 = [v4 overriddenInterfaceCostInexpensive:&v9];
    v6 = v9;

    if (v6)
    {
      v7 = [v6 localizedDescription];
      NSLog(@"NCO Cellular: Error getting override %@", v7);
    }
  }

  else
  {
    NSLog(@"NCO Cellular: ctClient is nil");
    return 0;
  }

  return v5;
}

- (void)fetchPrefer5GEnabledWithCompletion:(id)a3
{
  v4 = a3;
  v13 = kSymptomForcePreferCellOverWiFiEnableKey;
  v5 = +[NSNull null];
  v14 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];

  symptomsReplyQueue = self->_symptomsReplyQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_F674;
  v10[3] = &unk_3D560;
  v10[4] = self;
  v11 = v6;
  v12 = v4;
  v8 = v4;
  v9 = v6;
  dispatch_async(symptomsReplyQueue, v10);
}

- (unsigned)wifiOverride
{
  v2 = SCPreferencesCreateWithAuthorization(kCFAllocatorDefault, @"com.apple.Preferences", 0, 0);
  if (v2)
  {
    v3 = v2;
    TemporaryOverrideCost = SCNetworkInterfaceTypeGetTemporaryOverrideCost();
    CFRelease(v3);
    return TemporaryOverrideCost;
  }

  else
  {
    NSLog(@"NCO WiFi: Error - Unable to create SCPreferencesRef");
    return 0;
  }
}

- (void)setWifiOverride:(unsigned int)a3 completion:(id)a4
{
  v6 = a4;
  v7 = SCPreferencesCreateWithAuthorization(kCFAllocatorDefault, @"com.apple.Preferences", 0, 0);
  if (v7)
  {
    wifiPrefsQueue = self->_wifiPrefsQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_FBE4;
    block[3] = &unk_3D588;
    v11 = v7;
    v10 = v6;
    v12 = a3;
    dispatch_async(wifiPrefsQueue, block);
  }

  else
  {
    NSLog(@"NCO WiFi: Error - Unable to create SCPreferencesRef");
    if (v6)
    {
      (*(v6 + 2))(v6, 0);
    }
  }
}

@end