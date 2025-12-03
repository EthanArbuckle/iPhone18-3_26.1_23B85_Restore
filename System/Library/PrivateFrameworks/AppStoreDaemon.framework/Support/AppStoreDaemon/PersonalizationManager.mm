@interface PersonalizationManager
- (PersonalizationManager)init;
- (id)createMetricsEventsForEventType:(unsigned __int8)type context:(id)context;
- (void)_handleAnalyticsUsageSwitchChange:(id)change;
- (void)decorateMetricsEvent:(id)event context:(id)context;
@end

@implementation PersonalizationManager

- (PersonalizationManager)init
{
  v14.receiver = self;
  v14.super_class = PersonalizationManager;
  v2 = [(AppUsageBaseManager *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v2->_collectingMetrics = sub_1002EDE64(v2);
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.appstored.PersonalizationManager.callout", v4);
    calloutQueue = v3->_calloutQueue;
    v3->_calloutQueue = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.appstored.PersonalizationManager.dispatch", v7);
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v8;

    v10 = sub_1003BBF50();
    isHRNMode = [v10 isHRNMode];

    if ((isHRNMode & 1) == 0)
    {
      v12 = +[NSNotificationCenter defaultCenter];
      [v12 addObserver:v3 selector:"_handleAnalyticsUsageSwitchChange:" name:MCEffectiveSettingsChangedNotification object:0];
    }
  }

  return v3;
}

- (id)createMetricsEventsForEventType:(unsigned __int8)type context:(id)context
{
  typeCopy = type;
  contextCopy = context;
  v7 = sub_1002AAAA4(self, typeCopy, contextCopy);
  v8 = sub_1002A911C(self, typeCopy, v7, contextCopy);

  return v8;
}

- (void)decorateMetricsEvent:(id)event context:(id)context
{
  eventCopy = event;
  contextCopy = context;
  if (eventCopy)
  {
    v6 = eventCopy[9];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    sub_1003D886C(eventCopy, 1);
    if (contextCopy)
    {
      v8 = contextCopy[2];
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    sub_1003D7020(eventCopy, v9);
  }

  [eventCopy setAnonymous:1];
  if (contextCopy)
  {
    sub_1003D87FC(eventCopy, contextCopy[15]);
    v10 = contextCopy[11];
  }

  else
  {
    sub_1003D87FC(eventCopy, 0);
    v10 = 0;
  }

  sub_1003D878C(eventCopy, v10);
}

- (void)_handleAnalyticsUsageSwitchChange:(id)change
{
  v4 = sub_1002EDE64(self);
  obj = self;
  objc_sync_enter(obj);
  if (obj->_collectingMetrics == v4)
  {
    objc_sync_exit(obj);
  }

  else
  {
    obj->_collectingMetrics = v4;
    objc_sync_exit(obj);

    v5 = [KeepAlive keepAliveWithName:@"com.apple.PersonalizationManager.setupFollowingMigration"];
    v6 = +[BagService appstoredService];
    dispatchQueue = obj->_dispatchQueue;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1002F0054;
    v10[3] = &unk_100522200;
    v12 = v4;
    v10[4] = obj;
    v11 = v5;
    v8 = v5;
    [v6 bagOnQueue:dispatchQueue completionHandler:v10];
  }
}

@end