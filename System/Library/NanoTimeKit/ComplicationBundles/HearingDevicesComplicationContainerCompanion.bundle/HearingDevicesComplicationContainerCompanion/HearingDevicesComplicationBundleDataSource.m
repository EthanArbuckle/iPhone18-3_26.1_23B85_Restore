@interface HearingDevicesComplicationBundleDataSource
+ (BOOL)acceptsComplicationFamily:(int64_t)a3 forDevice:(id)a4;
+ (BOOL)shouldShowHearingComplicationsUI;
+ (id)_querySettingsQueue;
+ (id)bundleIdentifier;
+ (void)_queryHANanoSettingsForComplicationPreferredDisplayMode;
+ (void)_queryHANanoSettingsForIndependentHearingAidSettings;
+ (void)_queryHANanoSettingsForPairedHearingAids;
+ (void)_queryHUHearingAidSettingsForPairedHearingAids;
+ (void)initialize;
- (HearingDevicesComplicationBundleDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5;
- (id)currentSwitcherTemplate;
- (id)currentTimelineEntry;
- (void)getCurrentTimelineEntryWithHandler:(id)a3;
- (void)hearingDevicePropertiesDidUpdate:(id)a3;
- (void)hearingDevicesDidChange:(id)a3;
- (void)listenForUpdates;
@end

@implementation HearingDevicesComplicationBundleDataSource

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v3 = +[HUHearingAidSettings sharedInstance];
    [v3 registerUpdateBlock:&stru_82A8 forRetrieveSelector:"pairedHearingAids" withListener:a1];

    v4 = [a1 _querySettingsQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_3854;
    block[3] = &unk_82C8;
    block[4] = a1;
    dispatch_async(v4, block);

    v5 = +[HANanoSettings sharedInstance];
    [v5 registerUpdateBlock:&stru_82E8 forRetrieveSelector:"pairedHearingAids" withListener:a1];

    v6 = [a1 _querySettingsQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_3868;
    v13[3] = &unk_82C8;
    v13[4] = a1;
    dispatch_async(v6, v13);

    v7 = +[HANanoSettings sharedInstance];
    [v7 registerUpdateBlock:&stru_8308 forRetrieveSelector:"independentHearingAidSettings" withListener:a1];

    v8 = [a1 _querySettingsQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_387C;
    v12[3] = &unk_82C8;
    v12[4] = a1;
    dispatch_async(v8, v12);

    v9 = +[HANanoSettings sharedInstance];
    [v9 registerUpdateBlock:&stru_8328 forRetrieveSelector:"complicationPreferredDisplayMode" withListener:a1];

    v10 = [a1 _querySettingsQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_3890;
    v11[3] = &unk_82C8;
    v11[4] = a1;
    dispatch_async(v10, v11);
  }
}

+ (id)_querySettingsQueue
{
  if (qword_C9B8 != -1)
  {
    sub_48F0();
  }

  v3 = qword_C9B0;

  return v3;
}

+ (void)_queryHUHearingAidSettingsForPairedHearingAids
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_39C4;
  block[3] = &unk_82C8;
  block[4] = a1;
  v3 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_DEFAULT, 0, block);
  v4 = [a1 _querySettingsQueue];
  dispatch_async(v4, v3);
}

+ (void)_queryHANanoSettingsForPairedHearingAids
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3AFC;
  block[3] = &unk_82C8;
  block[4] = a1;
  v3 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_DEFAULT, 0, block);
  v4 = [a1 _querySettingsQueue];
  dispatch_async(v4, v3);
}

+ (void)_queryHANanoSettingsForIndependentHearingAidSettings
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3C34;
  block[3] = &unk_82C8;
  block[4] = a1;
  v3 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_DEFAULT, 0, block);
  v4 = [a1 _querySettingsQueue];
  dispatch_async(v4, v3);
}

+ (void)_queryHANanoSettingsForComplicationPreferredDisplayMode
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3D60;
  block[3] = &unk_82C8;
  block[4] = a1;
  v3 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_DEFAULT, 0, block);
  v4 = [a1 _querySettingsQueue];
  dispatch_async(v4, v3);
}

- (HearingDevicesComplicationBundleDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5
{
  v6.receiver = self;
  v6.super_class = HearingDevicesComplicationBundleDataSource;
  return [(HearingDevicesComplicationBundleDataSource *)&v6 initWithComplication:a3 family:a4 forDevice:a5];
}

- (void)listenForUpdates
{
  v3 = +[HUHearingAidSettings sharedInstance];
  v4 = [v3 pairedHearingAids];

  if (v4)
  {
    objc_initWeak(&location, self);
    v5 = +[HUHearingAidSettings sharedInstance];
    v6 = [v5 isiCloudPaired];

    v7 = +[AXHAServer sharedInstance];
    if (v6)
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_4054;
      v14[3] = &unk_8370;
      v8 = &v15;
      objc_copyWeak(&v15, &location);
      [v7 registerPassiveListener:self forAvailableDeviceHandler:v14];
    }

    else
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_40B0;
      v12[3] = &unk_8370;
      v8 = &v13;
      objc_copyWeak(&v13, &location);
      [v7 registerListener:self forAvailableDeviceHandler:v12];
    }

    objc_destroyWeak(v8);
    v9 = +[AXHAServer sharedInstance];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_410C;
    v10[3] = &unk_8398;
    objc_copyWeak(&v11, &location);
    [v9 registerListener:self forPropertyUpdateHandler:v10];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (void)hearingDevicesDidChange:(id)a3
{
  v4 = a3;
  [(HearingDevicesComplicationBundleDataSource *)self setCurrentHearingDevices:v4];
  v5 = HCLogHearingAids();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "devices did change %@", &v8, 0xCu);
  }

  v6 = [v4 firstObject];
  [v6 loadRequiredProperties];
  v7 = [(HearingDevicesComplicationBundleDataSource *)self delegate];
  [v7 invalidateEntries];
}

- (void)hearingDevicePropertiesDidUpdate:(id)a3
{
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [(HearingDevicesComplicationBundleDataSource *)self currentHearingDevices];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = v6;
  v15 = self;
  v8 = 0;
  v9 = *v18;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v18 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v17 + 1) + 8 * i);
      v12 = [v11 deviceUUID];
      v13 = [v4 objectForKey:v12];

      if ([v13 count])
      {
        v14 = HCLogHearingAids();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v22 = v13;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Update %@", buf, 0xCu);
        }

        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_4480;
        v16[3] = &unk_83C0;
        v16[4] = v11;
        [v13 enumerateKeysAndObjectsInDependentOrderUsingBlock:v16];
        v8 = 1;
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
  }

  while (v7);

  if (v8)
  {
    v5 = [(HearingDevicesComplicationBundleDataSource *)v15 delegate];
    [v5 invalidateEntries];
LABEL_14:
  }
}

+ (BOOL)shouldShowHearingComplicationsUI
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  v3 = byte_C9C0 | byte_C9C1;
  objc_sync_exit(v2);

  return v3 & 1;
}

+ (id)bundleIdentifier
{
  v3 = [NSBundle bundleForClass:a1];
  v4 = [v3 bundleIdentifier];
  v5 = [v4 stringByAppendingString:@"."];
  v6 = NSStringFromClass(a1);
  v7 = [v5 stringByAppendingString:v6];

  return v7;
}

+ (BOOL)acceptsComplicationFamily:(int64_t)a3 forDevice:(id)a4
{
  v6 = [a1 shouldShowHearingComplicationsUI];
  if (v6)
  {
    if (CLKComplicationFamilyCircularMedium == a3)
    {
LABEL_5:
      LOBYTE(v6) = 1;
      return v6;
    }

    if (a3 > 0xB)
    {
      goto LABEL_9;
    }

    if (((1 << a3) & 0xF93) != 0)
    {
      goto LABEL_5;
    }

    if (((1 << a3) & 0x4C) != 0)
    {
      LOBYTE(v6) = [a1 adjustsIndependentlyEnabled] ^ 1;
    }

    else
    {
LABEL_9:
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (id)currentSwitcherTemplate
{
  v2 = [(HearingDevicesComplicationBundleDataSource *)self currentTimelineEntry];
  v3 = [v2 complicationTemplate];

  return v3;
}

- (void)getCurrentTimelineEntryWithHandler:(id)a3
{
  v5 = a3;
  v6 = [(HearingDevicesComplicationBundleDataSource *)self currentTimelineEntry];
  (*(a3 + 2))(v5, v6);
}

- (id)currentTimelineEntry
{
  v3 = [HearingDevicesComplicationTimelineEntryModel alloc];
  v4 = +[CLKClockTimer now];
  v5 = [(HearingDevicesComplicationTimelineEntryModel *)v3 initWithEntryDate:v4];

  v6 = [[AXFakeHearingAidDevice alloc] initWithDeviceType:64];
  if (v6)
  {
    v7 = [(HearingDevicesComplicationBundleDataSource *)self family];
    v8 = [objc_opt_class() adjustsIndependentlyEnabled];
    v9 = -[HearingDevicesComplicationTimelineEntryModel entryForComplicationFamily:hearingDevice:adjustsIndependently:preferredDisplayMode:](v5, "entryForComplicationFamily:hearingDevice:adjustsIndependently:preferredDisplayMode:", v7, v6, v8, [objc_opt_class() complicationPreferredDisplayMode]);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end