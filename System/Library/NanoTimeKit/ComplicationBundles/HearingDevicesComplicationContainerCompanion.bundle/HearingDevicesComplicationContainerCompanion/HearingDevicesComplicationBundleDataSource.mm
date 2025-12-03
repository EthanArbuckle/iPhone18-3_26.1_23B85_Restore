@interface HearingDevicesComplicationBundleDataSource
+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device;
+ (BOOL)shouldShowHearingComplicationsUI;
+ (id)_querySettingsQueue;
+ (id)bundleIdentifier;
+ (void)_queryHANanoSettingsForComplicationPreferredDisplayMode;
+ (void)_queryHANanoSettingsForIndependentHearingAidSettings;
+ (void)_queryHANanoSettingsForPairedHearingAids;
+ (void)_queryHUHearingAidSettingsForPairedHearingAids;
+ (void)initialize;
- (HearingDevicesComplicationBundleDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device;
- (id)currentSwitcherTemplate;
- (id)currentTimelineEntry;
- (void)getCurrentTimelineEntryWithHandler:(id)handler;
- (void)hearingDevicePropertiesDidUpdate:(id)update;
- (void)hearingDevicesDidChange:(id)change;
- (void)listenForUpdates;
@end

@implementation HearingDevicesComplicationBundleDataSource

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v3 = +[HUHearingAidSettings sharedInstance];
    [v3 registerUpdateBlock:&stru_82A8 forRetrieveSelector:"pairedHearingAids" withListener:self];

    _querySettingsQueue = [self _querySettingsQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_3854;
    block[3] = &unk_82C8;
    block[4] = self;
    dispatch_async(_querySettingsQueue, block);

    v5 = +[HANanoSettings sharedInstance];
    [v5 registerUpdateBlock:&stru_82E8 forRetrieveSelector:"pairedHearingAids" withListener:self];

    _querySettingsQueue2 = [self _querySettingsQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_3868;
    v13[3] = &unk_82C8;
    v13[4] = self;
    dispatch_async(_querySettingsQueue2, v13);

    v7 = +[HANanoSettings sharedInstance];
    [v7 registerUpdateBlock:&stru_8308 forRetrieveSelector:"independentHearingAidSettings" withListener:self];

    _querySettingsQueue3 = [self _querySettingsQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_387C;
    v12[3] = &unk_82C8;
    v12[4] = self;
    dispatch_async(_querySettingsQueue3, v12);

    v9 = +[HANanoSettings sharedInstance];
    [v9 registerUpdateBlock:&stru_8328 forRetrieveSelector:"complicationPreferredDisplayMode" withListener:self];

    _querySettingsQueue4 = [self _querySettingsQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_3890;
    v11[3] = &unk_82C8;
    v11[4] = self;
    dispatch_async(_querySettingsQueue4, v11);
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
  block[4] = self;
  v3 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_DEFAULT, 0, block);
  _querySettingsQueue = [self _querySettingsQueue];
  dispatch_async(_querySettingsQueue, v3);
}

+ (void)_queryHANanoSettingsForPairedHearingAids
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3AFC;
  block[3] = &unk_82C8;
  block[4] = self;
  v3 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_DEFAULT, 0, block);
  _querySettingsQueue = [self _querySettingsQueue];
  dispatch_async(_querySettingsQueue, v3);
}

+ (void)_queryHANanoSettingsForIndependentHearingAidSettings
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3C34;
  block[3] = &unk_82C8;
  block[4] = self;
  v3 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_DEFAULT, 0, block);
  _querySettingsQueue = [self _querySettingsQueue];
  dispatch_async(_querySettingsQueue, v3);
}

+ (void)_queryHANanoSettingsForComplicationPreferredDisplayMode
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3D60;
  block[3] = &unk_82C8;
  block[4] = self;
  v3 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_DEFAULT, 0, block);
  _querySettingsQueue = [self _querySettingsQueue];
  dispatch_async(_querySettingsQueue, v3);
}

- (HearingDevicesComplicationBundleDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device
{
  v6.receiver = self;
  v6.super_class = HearingDevicesComplicationBundleDataSource;
  return [(HearingDevicesComplicationBundleDataSource *)&v6 initWithComplication:complication family:family forDevice:device];
}

- (void)listenForUpdates
{
  v3 = +[HUHearingAidSettings sharedInstance];
  pairedHearingAids = [v3 pairedHearingAids];

  if (pairedHearingAids)
  {
    objc_initWeak(&location, self);
    v5 = +[HUHearingAidSettings sharedInstance];
    isiCloudPaired = [v5 isiCloudPaired];

    v7 = +[AXHAServer sharedInstance];
    if (isiCloudPaired)
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

- (void)hearingDevicesDidChange:(id)change
{
  changeCopy = change;
  [(HearingDevicesComplicationBundleDataSource *)self setCurrentHearingDevices:changeCopy];
  v5 = HCLogHearingAids();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = changeCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "devices did change %@", &v8, 0xCu);
  }

  firstObject = [changeCopy firstObject];
  [firstObject loadRequiredProperties];
  delegate = [(HearingDevicesComplicationBundleDataSource *)self delegate];
  [delegate invalidateEntries];
}

- (void)hearingDevicePropertiesDidUpdate:(id)update
{
  updateCopy = update;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  currentHearingDevices = [(HearingDevicesComplicationBundleDataSource *)self currentHearingDevices];
  v6 = [currentHearingDevices countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = v6;
  selfCopy = self;
  v8 = 0;
  v9 = *v18;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v18 != v9)
      {
        objc_enumerationMutation(currentHearingDevices);
      }

      v11 = *(*(&v17 + 1) + 8 * i);
      deviceUUID = [v11 deviceUUID];
      v13 = [updateCopy objectForKey:deviceUUID];

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

    v7 = [currentHearingDevices countByEnumeratingWithState:&v17 objects:v23 count:16];
  }

  while (v7);

  if (v8)
  {
    currentHearingDevices = [(HearingDevicesComplicationBundleDataSource *)selfCopy delegate];
    [currentHearingDevices invalidateEntries];
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
  v3 = [NSBundle bundleForClass:self];
  bundleIdentifier = [v3 bundleIdentifier];
  v5 = [bundleIdentifier stringByAppendingString:@"."];
  v6 = NSStringFromClass(self);
  v7 = [v5 stringByAppendingString:v6];

  return v7;
}

+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device
{
  shouldShowHearingComplicationsUI = [self shouldShowHearingComplicationsUI];
  if (shouldShowHearingComplicationsUI)
  {
    if (CLKComplicationFamilyCircularMedium == family)
    {
LABEL_5:
      LOBYTE(shouldShowHearingComplicationsUI) = 1;
      return shouldShowHearingComplicationsUI;
    }

    if (family > 0xB)
    {
      goto LABEL_9;
    }

    if (((1 << family) & 0xF93) != 0)
    {
      goto LABEL_5;
    }

    if (((1 << family) & 0x4C) != 0)
    {
      LOBYTE(shouldShowHearingComplicationsUI) = [self adjustsIndependentlyEnabled] ^ 1;
    }

    else
    {
LABEL_9:
      LOBYTE(shouldShowHearingComplicationsUI) = 0;
    }
  }

  return shouldShowHearingComplicationsUI;
}

- (id)currentSwitcherTemplate
{
  currentTimelineEntry = [(HearingDevicesComplicationBundleDataSource *)self currentTimelineEntry];
  complicationTemplate = [currentTimelineEntry complicationTemplate];

  return complicationTemplate;
}

- (void)getCurrentTimelineEntryWithHandler:(id)handler
{
  handlerCopy = handler;
  currentTimelineEntry = [(HearingDevicesComplicationBundleDataSource *)self currentTimelineEntry];
  (*(handler + 2))(handlerCopy, currentTimelineEntry);
}

- (id)currentTimelineEntry
{
  v3 = [HearingDevicesComplicationTimelineEntryModel alloc];
  v4 = +[CLKClockTimer now];
  v5 = [(HearingDevicesComplicationTimelineEntryModel *)v3 initWithEntryDate:v4];

  v6 = [[AXFakeHearingAidDevice alloc] initWithDeviceType:64];
  if (v6)
  {
    family = [(HearingDevicesComplicationBundleDataSource *)self family];
    adjustsIndependentlyEnabled = [objc_opt_class() adjustsIndependentlyEnabled];
    v9 = -[HearingDevicesComplicationTimelineEntryModel entryForComplicationFamily:hearingDevice:adjustsIndependently:preferredDisplayMode:](v5, "entryForComplicationFamily:hearingDevice:adjustsIndependently:preferredDisplayMode:", family, v6, adjustsIndependentlyEnabled, [objc_opt_class() complicationPreferredDisplayMode]);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end