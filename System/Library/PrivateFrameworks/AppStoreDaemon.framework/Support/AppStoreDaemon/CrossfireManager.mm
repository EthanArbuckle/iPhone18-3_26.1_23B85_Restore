@interface CrossfireManager
- (CrossfireManager)init;
- (id)createMetricsEventsForEventType:(unsigned __int8)type context:(id)context;
- (void)_handleAnalyticsUsageSwitchChange:(id)change;
- (void)decorateMetricsEvent:(id)event context:(id)context;
@end

@implementation CrossfireManager

- (CrossfireManager)init
{
  v19.receiver = self;
  v19.super_class = CrossfireManager;
  v2 = [(AppUsageBaseManager *)&v19 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.appstored.CrossfireManager.callout", v3);
    calloutQueue = v2->_calloutQueue;
    v2->_calloutQueue = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.appstored.CrossfireManager.dispatch", v6);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v7;

    v2->_collectingMetrics = sub_10030B4C0();
    v9 = +[AMSDevice buildVersion];
    osBuild = v2->_osBuild;
    v2->_osBuild = v9;

    v11 = sub_1002AAFA4(v2);
    platform = v2->_platform;
    v2->_platform = v11;

    v13 = +[NSNotificationCenter defaultCenter];
    v14 = sub_1003BBF50();
    isHRNMode = [v14 isHRNMode];

    if ((isHRNMode & 1) == 0)
    {
      [v13 addObserver:v2 selector:"_handleAnalyticsUsageSwitchChange:" name:MCEffectiveSettingsChangedNotification object:0];
    }

    v16 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      collectingMetrics = v2->_collectingMetrics;
      *buf = 67109120;
      v21 = collectingMetrics;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[Crossfire] Initialized with initial analytics switch: %d", buf, 8u);
    }
  }

  return v2;
}

- (id)createMetricsEventsForEventType:(unsigned __int8)type context:(id)context
{
  typeCopy = type;
  contextCopy = context;
  v7 = objc_opt_new();
  v8 = sub_1002AAAA4(self, typeCopy, contextCopy);
  if ([v8 count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = sub_1002A989C(self, *(*(&v17 + 1) + 8 * i), typeCopy, contextCopy);
          [v7 addObject:{v14, v17}];
        }

        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }
  }

  v15 = [v7 copy];

  return v15;
}

- (void)decorateMetricsEvent:(id)event context:(id)context
{
  eventCopy = event;
  contextCopy = context;
  osBuild = self->_osBuild;
  if (osBuild)
  {
    sub_1003D84C4(eventCopy, osBuild);
  }

  platform = self->_platform;
  if (platform)
  {
    sub_1003D853C(eventCopy, platform);
  }

  [eventCopy setAnonymous:1];
  if (contextCopy)
  {
    sub_1003D87FC(eventCopy, contextCopy[15]);
    v9 = contextCopy[11];
  }

  else
  {
    sub_1003D87FC(eventCopy, 0);
    v9 = 0;
  }

  sub_1003D878C(eventCopy, v9);
  sub_1003D886C(eventCopy, 1);
  if (eventCopy && *(eventCopy + 25) == 1 && (*(eventCopy + 24) | 4) != 5)
  {
    v10 = eventCopy[9];
    v11 = contextCopy;
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = sub_1001F42FC;
    v29 = sub_1001F430C;
    v30 = 0;
    v12 = sub_10036C90C();
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1001F4314;
    v22[3] = &unk_10051C738;
    v13 = v10;
    v23 = v13;
    v24 = &v25;
    [v12 readUsingSession:v22];

    v14 = v26[5];
    _Block_object_dispose(&v25, 8);

    if (v14)
    {
      v15 = sub_1003B3308(v14);
      if (v15)
      {
        sub_1003D7A2C(eventCopy, v15);
      }

      v16 = sub_1003B32D0(v14);
      if (v16)
      {
        sub_1003D79B4(eventCopy, v16);
      }

      v17 = sub_1003B3340(v14);
      if (v17)
      {
        sub_1003D7C0C(eventCopy, v17);
      }

      v18 = sub_10023E0F8(v14, @"clip_affiliate_token");
      if (v18)
      {
        sub_1003D7834(eventCopy, v18);
      }

      v19 = sub_10023E0F8(v14, @"clip_campaign_token");
      if (v19)
      {
        sub_1003D78B4(eventCopy, v19);
      }

      v20 = sub_10023E0F8(v14, @"clip_provider_token");
      if (v20)
      {
        sub_1003D7934(eventCopy, v20);
      }
    }
  }
}

- (void)_handleAnalyticsUsageSwitchChange:(id)change
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F44E4;
  block[3] = &unk_10051AF98;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

@end